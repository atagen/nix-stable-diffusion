# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchPypi, lib, torch, numpy, pyre-extensions, which, triton }:

buildPythonPackage rec {
  pname = "xformers";
  version = "0.0.12";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-QrdmgegHbn90Dl13e0K29SJ5emiIrJOVr8kum6inqsA=";
  };
  nativeBuildInputs = [ which ];
  propagatedBuildInputs = [ torch numpy pyre-extensions triton ];

  # TODO FIXME
  doCheck = false;

  meta = with lib; { };
}
