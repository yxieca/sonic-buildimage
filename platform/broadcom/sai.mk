BRCM_SAI = libsaibcm_3.3.4.3m-2_amd64.deb
$(BRCM_SAI)_URL = "https://sonicstorage.blob.core.windows.net/packages/bcmsai/3.3/libsaibcm_3.3.4.3m-2_amd64.deb?sv=2015-04-05&sr=b&sig=hqX0wlXi5FsA%2B%2BwZPuFVUy57duuyw3nDk2wLLGIuwk4%3D&se=2032-10-20T20%3A31%3A28Z&sp=r"

BRCM_SAI_DEV = libsaibcm-dev_3.3.4.3m-2_amd64.deb
$(eval $(call add_derived_package,$(BRCM_SAI),$(BRCM_SAI_DEV)))
$(BRCM_SAI_DEV)_URL = "https://sonicstorage.blob.core.windows.net/packages/bcmsai/3.3/libsaibcm-dev_3.3.4.3m-2_amd64.deb?sv=2015-04-05&sr=b&sig=Nbiey%2B4gVq9da293%2FXE%2F7zaRIQEPVVmAGgvNfGHmDHU%3D&se=2032-10-20T20%3A30%3A59Z&sp=r"

SONIC_ONLINE_DEBS += $(BRCM_SAI)
$(BRCM_SAI_DEV)_DEPENDS += $(BRCM_SAI)
