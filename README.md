# IncludeOS_bootenv
An environment for booting IncludeOS binaries. Activated by importing this package or using `nix-shell` command.

This environment contains a few things:

1. find_chainloader - Used for finding the chainloader to boot IncludeOS
2. Virsh utility
3. An example Libvirt XML for booting IncludeOS binaries - edit the required fields for booting your binary or append to extend the feature set.