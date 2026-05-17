{pkgs}:
pkgs.writeShellApplication {
  name = "docs-build";
  runtimeInputs = [
    (pkgs.python3.withPackages (ps: [
      ps.mkdocs
      ps.mkdocs-material
      ps.mike
    ]))
  ];
  text = ''
    set -eu

    cd docs
    mkdocs build --strict
  '';
}
