Private nix collection
-----------------------

Some hints:

* For getting md5 hash of a local directory

`nix-prefetch-url --type md5 file:///home/sibi/sibi-nix/pkgs/hello-src`

* For building custom package from this repository

`nix-build custom-packages.nix -A hello-src`

* For entering into the build environment

`nix-shell custom-packages.nix -A hello-src`

For debugging error, see
[manual](https://nixos.org/nix/manual/#sec-debug-build).

-------------------

To see how local package is developed, see the example of `hello-src`
package. 

Command for entering `nix-env` build environment:

`nix-shell custom-packages.nix -A sibiGHC `

(Note that `nix-build --run-env` has been renamed to `nix-shell`).

