# sonic-ycabled (SONiC Y-Cable daemon) Debian package

# SONIC_YCABLED_PY3 package

SONIC_YCABLED_PY3 = sonic_ycabled-1.0-py3-none-any.whl
$(SONIC_YCABLED_PY3)_SRC_PATH = $(SRC_PATH)/sonic-platform-daemons/sonic-ycabled
$(SONIC_YCABLED_PY3)_DEPENDS = $(SONIC_PY_COMMON_PY3) $(SONIC_PLATFORM_COMMON_PY3)
$(SONIC_YCABLED_PY3)_DEBS_DEPENDS = $(LIBSWSSCOMMON) $(PYTHON3_SWSSCOMMON)
$(SONIC_YCABLED_PY3)_PYTHON_VERSION = 3
# [CI-WORKAROUND] Skip wheel tests on trixie due to protobuf version shadowing:
# generated linkmgr_grpc_driver_pb2.py needs protobuf >=5.27 (runtime_version),
# but APT-installed python3-protobuf 3.21.12 shadows pip protobuf 5.29.6 during pytest.
# Do NOT merge upstream; revert before opening sflow PR.
$(SONIC_YCABLED_PY3)_TEST = n
SONIC_PYTHON_WHEELS += $(SONIC_YCABLED_PY3)
