LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)


LOCAL_SRC_FILES := \
    src/openssl/crypto.c \
    src/openssl/signatures.c \
    src/openssl/app.c \
    src/openssl/digests.c \
    src/openssl/symkeys.c \
    src/openssl/evp_signatures.c \
    src/openssl/hmac.c \
    src/openssl/evp.c \
    src/openssl/x509.c \
    src/openssl/x509vfy.c \
    src/openssl/bn.c \
    src/openssl/ciphers.c \
    src/openssl/kw_des.c \
    src/openssl/kw_aes.c \
    src/openssl/kt_rsa.c \
    src/kw_aes_des.c \
    src/keysdata.c \
    src/keysmngr.c \
    src/templates.c \
    src/bn.c \
    src/xmlenc.c \
    src/io.c \
    src/membuf.c \
    src/enveloped.c \
    src/dl.c \
    src/relationship.c \
    src/app.c \
    src/xmldsig.c \
    src/x509.c \
    src/strings.c \
    src/buffer.c \
    src/xmlsec.c \
    src/nodeset.c \
    src/xmltree.c \
    src/c14n.c \
    src/errors.c \
    src/list.c \
    src/keys.c \
    src/xpath.c \
    src/xslt.c \
    src/keyinfo.c \
    src/base64.c \
    src/parser.c \
    src/transforms.c \
    apps/cmdline.c \
    apps/crypto.c \
    apps/xmlsec.c \

# \
    src/nss/signatures.c \
    src/nss/keytrans.c \
    src/nss/pkikeys.c \
    src/nss/hmac.c \
    src/nss/crypto.c \
    src/nss/bignum.c \
    src/nss/app.c \
    src/nss/digests.c \
    src/nss/kw_aes.c \
    src/nss/x509.c \
    src/nss/ciphers.c \
    src/nss/symkeys.c \
    src/nss/keysstore.c \
    src/nss/x509vfy.c \
    src/nss/kw_des.c \

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/include \
    external/libxml2/include \
    external/icu/icu4c/source/common \
    external/openssl/include \

LOCAL_STATIC_LIBRARIES := libxml2
LOCAL_SHARED_LIBRARIES := libssl
LOCAL_CFLAGS += \
    -D__ANDROID__ -DXMLSEC_NO_XSLT \
    -DXMLSEC_NO_CRYPTO_DYNAMIC_LOADING \
    -DXMLSEC_DEFAULT_CRYPTO=\"openssl\" \
    -DXMLSEC_CRYPTO_OPENSSL \
    -DPACKAGE=\"xmlsec1\" \
    -Wall

LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_MODULE    := libxmlsec1

include $(BUILD_SHARED_LIBRARY)
