{
  stdenv
  , fetchFromGitHub
  , lib
}:
stdenv.mkDerivation rec {
  pname = "cutlass";
  version = "2.10.0";

  src = fetchFromGitHub {
    owner = "NVIDIA";
    repo = "cutlass";
    rev = "v2.10.0";
    sha256 = "sha256-e2SwXNNwjl/1fV64b+mOJvwGDYeO1LFcqZGbNten37U=";
  };
  
  dontBuild = true;

  installPhase = "
    mkdir -p $out
    mv * $out/
  ";

  meta = with lib; {
    description =
      "CUDA Templates for Linear Algebra Subroutines";
    homepage = "https://github.com/NVIDIA/cutlass";
  };
}

