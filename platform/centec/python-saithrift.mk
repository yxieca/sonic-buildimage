# python-saithrift package

PYTHON_SAITHRIFT_CENTEC = python-saithrift_0.9.4_amd64.deb
$(PYTHON_SAITHRIFT_CENTEC)_SRC_PATH = $(SRC_PATH)/SAI
$(PYTHON_SAITHRIFT_CENTEC)_DEPENDS += $(CENTEC_SAI) $(THRIFT_COMPILER) $(PYTHON_THRIFT) $(LIBTHRIFT_DEV)
SONIC_DPKG_DEBS += $(PYTHON_SAITHRIFT_CENTEC)
