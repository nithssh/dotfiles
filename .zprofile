export EDITOR="code"
export PROTON_LOG_DIR=$HOME/.proton
# export PROTON_LOG=1

# Wayland related config
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export GBM_BACKEND=nvidia-drm
    export __GLX_VENDOR_LIBRARY_NAME=nvidia

    export MOZ_ENABLE_WAYLAND=1 
    # export EGL_PLATFORM=wayland # Required on FF98+ when running on Wayland, due to a regression that has been introduced.
fi

export GCM_CREDENTIAL_STORE=secretservice

# for Firefox Hardware Accelerated encoding
# export VDPAU_DRIVER=nvidia 
# export MOZ_DISABLE_RDD_SANDBOX=1 # Disables the sandbox for the RDD process that the decoder runs in
# export NVD_BACKEND=direct # Controls which backend this library uses. Either egl (default), or direct. See direct backend for more details.
