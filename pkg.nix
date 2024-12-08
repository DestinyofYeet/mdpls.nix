{
  rustPlatform,
  fetchFromGitHub,
  ...
}:

rustPlatform.buildRustPackage {
  pname = "mdpls";
  version = "1.0";

  src = fetchFromGitHub {
    owner = "euclio";
    repo = "mdpls";
    rev = "30761508593d85b5743ae39c4209947740eec92d";
    hash = "sha256-4n1MX8hS7JmKzaL8GfMq2q3IdwE4fvMmWOYo7rY+cdY=";
  };

  cargoHash = "sha256-lRNACOtogEDStw9WPFHFRVoKswB93T4+rVPoOFaOzzw=";

  meta = {
    description = "mdpls";
  };
}
