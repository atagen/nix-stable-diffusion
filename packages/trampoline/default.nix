# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchFromGitLab, lib }:

buildPythonPackage rec {
  pname = "trampoline";
  version = "0.1.2";

  src = fetchFromGitLab {
    owner = "ferreum";
    repo = "trampoline";
    rev = "6ff003ed89abc4b64587227d10a6a8ba48309a83";
    sha256 = "sha256-1GK0MOF1uHhbT8qUQzr32B5HY8x3Nc0SvkjP0C21V6k=";
  };
  # TODO FIXME
  doCheck = false;

  meta = with lib; {
    description = "Simple and tiny yield-based trampoline implementation.";
    homepage = "https://gitlab.com/ferreum/trampoline";
  };
}
