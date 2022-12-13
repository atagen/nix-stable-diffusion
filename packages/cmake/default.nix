# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchPypi, lib, scikit-build, cmake }:

buildPythonPackage rec {
  pname = "cmake-py";
  version = "3.25.0";

  src = fetchPypi {
    inherit version;
    pname = "cmake";
    sha256 = "03vrdrgvma0q6h7lxilag7ss3z9p8vyg55vnyn13f9v26gyqlrfi";
  };
  
  nativeBuildInputs = [ cmake ];
  propagatedBuildInputs = [ scikit-build ];
  
  preBuild = ''
    git apply ${./cmake.patch}
    unset BUILD_CMAKE_FROM_SOURCE
  '';
  CMAKE_BINARY_DIR = "${cmake}";
  #nope

  # TODO FIXME
  doCheck = false;

  meta = with lib; { };
}
