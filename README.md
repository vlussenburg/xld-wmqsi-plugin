# xld-wmqsi-plugin
Websphere Message Broker / IBM Integration Bus plugin for BAR deployment support in XL Deploy

Warning, very alpha.

## Installation instructions

Drop the synthetic.xml and the iib folder in the ext/ directory of the XL Deploy installation.

## Usage instructions

After installing, you can add a 'WMQSI > WebsphereMessageBroker' infrastructure CI and a 'WMQSI > BarFile' application CI. Note that the installation path of the toolkit is currently hardcoded.

## Resources

Built and tested using the [Vagrant box](https://drive.google.com/file/d/0Bw7dX-1Go6FTUVZlMGgxd1RZblU/view?usp=sharing), example [Vagrantfile](https://drive.google.com/file/d/0Bw7dX-1Go6FTY0FLaUdNOF9oZzg/view?usp=sharing). The box boots with a gui on IP 192.168.2.10. You can use the UI and run /home/vagrant/iib-10.0.0.0/iib toolkit

## TODO

- Make a proper (xldp) of this
- Maybe use the scripting API instead of the CLI tools
- Better error code capturing
- Remove duplication from scripts (node name, mqsiprofile, etc)
