# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchFromGitHub, lib, torch, cudatoolkit, git, which, cutlass, einops }:

buildPythonPackage rec {
  pname = "flash-attention";
  version = "v0.2.2";

  src = fetchFromGitHub {
    owner = "HazyResearch";
    repo = "flash-attention";
    rev = version;
    sha256 = "sha256-X6eAHbpdk1dAeS9awS8xMZ7eTlpQeKS6iKdCPyEGcHU=";
  };
  nativeBuildInputs = [ cudatoolkit git which ];
  propagatedBuildInputs = [ cutlass torch einops ];
  CUDA_HOME = "${cudatoolkit}";
  CUDA_PATH = "${cudatoolkit}";
  CUDART_LIB = "${cudatoolkit.lib}/lib/libcudart.so";
  LD_LIBRARY_PATH = "${cudatoolkit.lib}/lib";
  LDFLAGS="-L${cudatoolkit.lib}/lib";

  # TODO FIXME
  doCheck = false;

  meta = with lib; {
    description = "Fast and memory-efficient exact attention";
    homepage = "https://github.com/HazyResearch/flash-attention";
  };
}
