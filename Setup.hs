import           Distribution.PackageDescription hiding (Flag)
import           Distribution.Simple
import           Distribution.Simple.Setup
import           Distribution.Simple.Utils

main = defaultMainWithHooks simpleUserHooks
  {
    preConf = makeExtLib
  }

makeExtLib :: Args -> ConfigFlags -> IO HookedBuildInfo
makeExtLib _ flags = do
    let verbosity = fromFlag $ configVerbosity flags
    rawSystemExit verbosity "env"
        ["make", "--directory=ext_lib"]
    return emptyHookedBuildInfo
