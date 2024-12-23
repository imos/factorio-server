# Download a file from Google Drive using curl.
# Usage: download-from-gdrive.sh FILE_ID FILE_NAME MD5
#   FILE_ID = File ID to download
#   FILE_NAME = Output file name
#   MD5 = MD5 checksum of the file (optional)

set -eux

export TMPDIR="$(mktemp -d)"

FILE_ID="$1"
FILE_NAME="$2"
MD5="$3"

# Download file from Google Drive.
curl -c "${TMPDIR}/cookie" -o "${TMPDIR}/tmp" -s -L "https://drive.google.com/uc?export=download&id=${FILE_ID}"

# Extract UUID.
UUID="$(sed -nE 's/.*name="uuid" value="([a-f0-9\-]{36})".*/\1/p' "${TMPDIR}/tmp" || echo "")"

# If the file needs confirmation, it extracts UUID from the warning message and downloads it.
if [[ "${UUID}" != '' ]]; then
  curl -Lb "${TMPDIR}/cookie" -o "${TMPDIR}/output" \
    "https://drive.usercontent.google.com/download?confirm=t&id=${FILE_ID}&export=download&authuser=0"
# Otherwise, just rename the file because it is downloaded successfully.
else
  mv "${TMPDIR}/tmp" "${TMPDIR}/output"
fi

# If MD5 checksum is provided, check it using openssl.
# openssl md5 -hex "$file" | awk '{print $2}'
if [[ "${MD5}" != '' ]]; then
  if [[ "$(openssl md5 -hex "${TMPDIR}/output" | awk '{print $2}')" != "${MD5}" ]]; then
    echo "MD5 checksum does not match."
    exit 1
  fi
fi

# Rename the file to the specified name.
mv "${TMPDIR}/output" "${FILE_NAME}"

# Remove temporary directory.
rm -rf "${TMPDIR}"
