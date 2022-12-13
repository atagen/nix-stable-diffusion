# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchPypi, filelock, huggingface-hub, importlib-metadata
, lib, numpy, pillow, regex, requests }:

buildPythonPackage rec {
  pname = "diffusers";
  version = "0.10.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1vpg92piyxqnn41js7ifyv5vp7fpi2h3x429im4f44gh2acx2887";
  };

  propagatedBuildInputs =
    [ importlib-metadata filelock huggingface-hub numpy regex requests pillow ];

  # TODO FIXME
  doCheck = false;

  meta = with lib; {
    description = "Diffusers";
    homepage = "https://github.com/huggingface/diffusers";
  };
}
