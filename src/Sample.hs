module Sample where

import Foreign.C

foreign import ccall "capi.h" c_randomNumber :: IO CInt