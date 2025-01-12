SRC_FILES = \
  $(MFLT_COMPONENTS_DIR)/core/src/memfault_self_test.c \
  $(MFLT_COMPONENTS_DIR)/core/src/memfault_self_test_utils.c \

MOCK_AND_FAKE_SRC_FILES += \
  $(MFLT_TEST_FAKE_DIR)/fake_memfault_build_id.c \
  $(MFLT_TEST_FAKE_DIR)/fake_memfault_platform_debug_log.c \
  $(MFLT_TEST_STUB_DIR)/stub_memfault_log_save.c \
  $(MFLT_TEST_STUB_DIR)/stub_component_booted.c \
  $(MFLT_TEST_STUB_DIR)/stub_memfault_coredump_regions.c \

TEST_SRC_FILES = \
  $(MFLT_TEST_SRC_DIR)/test_memfault_self_test_device_info.cpp \
  $(MOCK_AND_FAKE_SRC_FILES)

include $(CPPUTEST_MAKFILE_INFRA)
