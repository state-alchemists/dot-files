# State Alchemists dot files

This is our favorite dot-files for antergos-xfce

For list of available features, please check .zshrc after installation

# Install

* Run `./install-bibit.sh` or open it and select which one you want to run
* Close your terminal
* Open your terminal again
* Open vim, perform `:GoInstallBinaries`

# Tips

## Kernel parameters

If your acpi doesn't work, try to edit `/etc/default/grub`, update `GRUB_CMDLINE_LINUX_DEFAULT` into one of this:

* `GRUB_CMDLINE_LINUX_DEFAULT="irqpoll noapic noacpi pcie_aspm=off rw"`
* `GRUB_CMDLINE_LINUX_DEFAULT="iommu=pt ivrs_ioapic[4]=00:14.0 ivrs_ioapic[5]=00:00.2 acpi_backlight=vendor idle=nomwait fsck.mode=skip pci=nommconf"`

The parameter is optimal for Acer Aspire 3 A315-41-R9D3

## Use caps lock as escape

* Open `settings | settings managers | sessions and startups`
* Add this command to startup: `setxkbmap -option caps:escape`

## Add shortcuts

* Open `settings | settings managers | keyboards | shortcuts`
    - `xfce4-screenshooter -f`: print-screen
    - `xfce4-screenshooter -r`: ctrl + print-screen
