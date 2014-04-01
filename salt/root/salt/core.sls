curl:
  pkg:
    - installed

git-core:
  pkg:
    - installed

fresh-nodejs:
  cmd.run:
    - name: sudo add-apt-repository ppa:chris-lea/node.js && sudo apt-get update && sudo apt-get install python-software-properties python g++ make nodejs
    - unless: which npm
