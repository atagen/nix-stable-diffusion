# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ buildPythonPackage, fetchFromGitHub, filelock, huggingface-hub, lib, numpy
, packaging, pyyaml, regex, requests, tokenizers, tqdm }:

buildPythonPackage rec {
  pname = "transformers";
  version = "4.19.2";

  src = fetchFromGitHub {
    owner = "huggingface";
    repo = "transformers";
    rev = "v4.19.2";
    sha256 = "sha256-9r/1vW7Rhv9+Swxdzu5PTnlQlT8ofJeZamHf5X4ql8w=";
  };

  propagatedBuildInputs = [
    filelock
    huggingface-hub
    numpy
    packaging
    pyyaml
    regex
    requests
    tokenizers
    tqdm
  ];

  # TODO FIXME
  doCheck = false;

  meta = with lib; {
    description =
      "State-of-the-art Machine Learning for JAX, PyTorch and TensorFlow";
    homepage = "https://github.com/huggingface/transformers";
  };
}
