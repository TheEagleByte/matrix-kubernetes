# Run example
# ./scripts/generate-key

# Use this to generate a signing key and verify key for use in sydent
# configurations.

# The signing key is generally used in "ed25519.signingkey" in the sydent config

import sys

import signedjson.key

signing_key = signedjson.key.generate_signing_key(0);
sk_str = "%s %s %s" % (
    signing_key.alg,
    signing_key.version,
    signedjson.key.encode_signing_key_base64(signing_key)
    )
print ("signing key: %s " % sk_str)
pk_str = signedjson.key.encode_verify_key_base64(signing_key.verify_key)
print ("verify key: %s" % pk_str)