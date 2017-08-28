message(STATUS "Loading tests-crypto app...")

if (NOT CONFIGURED_ONCE)
	set(APP_TESTS_CRYPTO_SOURCE_DIR ${APP_TESTS_CRYPTO_DIR}/src)
endif()

add_executable(aurorafw_app_tests_crypto ${APP_TESTS_CRYPTO_SOURCE_DIR}/test_crypto.cpp)

target_link_libraries(aurorafw_app_tests_crypto aurorafw-core aurorafw-cli aurorafw-crypto)

set_target_properties(aurorafw_app_tests_crypto PROPERTIES OUTPUT_NAME test_crypto.out)
