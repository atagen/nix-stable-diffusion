# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchFromGitHub, filelock, lib, torch, cmake, llvm, clang, ncurses, git, zlib, pybind11, cmake-py }:

buildPythonPackage rec {
  pname = "triton";
  version = "8650b4d1cbc750d659156e2c17a058736614827b";

  src = fetchFromGitHub {
    owner = "openai";
    repo = "triton";
    rev = version;
    sha256 = "sha256-FzAkQHFsuH4X2jFJhcsqTfett8hnP6gPtAMKxqs0Sfg=";
  };
  
  nativeBuildInputs = [ cmake llvm clang git ];
  propagatedBuildInputs = [ torch filelock ncurses zlib pybind11 cmake-py ];

  postConfigure = ''
    cd ..
  '';

  preBuild = ''
    git apply ${./llvm.patch}
    cd python
  '';

  # TODO FIXME
  doCheck = false;

  meta = with lib; {
    description = "A language and compiler for custom Deep Learning operations";
    homepage = "https://github.com/openai/triton/";
  };
}
