define make_header
  perl -e 'print pack("a4 L a32 a472", "\x88\x16\x88\x58", $$ARGV[0], $$ARGV[1], "\xFF"x472)' $(1) $(2) > $(3)
endef

$(recovery_ramdisk).mtk.header: $(recovery_ramdisk)
	size=$$($(call get-file-size,$(recovery_ramdisk))); \
		$(call make_header, $$((size)), "RECOVERY", $@)
$(recovery_ramdisk).mtk:  $(MKBOOTIMG) $(recovery_ramdisk).mtk.header
	$(call pretty,"Adding MTK header to recovery ramdisk.")
	cat $(recovery_ramdisk).mtk.header $(recovery_ramdisk) > $@

INTERNAL_MTK_RECOVERYIMAGE_ARGS := \
		--kernel $(PRODUCT_OUT)/kernel \
		--ramdisk $(recovery_ramdisk).mtk

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk).mtk $(PRODUCT_OUT)/kernel
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(MKBOOTIMG) $(INTERNAL_MTK_RECOVERYIMAGE_ARGS) \
		$(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@, \
		$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}
