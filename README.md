# Phloater

## What is it?

A [Vagrantfile][1] and some [Puppet][2] manifests to set up a reasonably
complete [Phabricator][3] environment with minimal effort.

## How do I use it?

Have Vagrant and Git installed. Then:

```sh
git clone https://github.com/bitglue/phloater.git
cd phloater
vagrant up
```

Vagrant creates a VM for yout, then invokes Puppet to install the current
Phabricator [from GitHub][4], along with MySQL and Apache.

Now visit [http://127.0.0.1:8080/][5]. Phabricator might be running.

## Why did you do this?

Because I'm too lazy for manual installs. Maybe later I'll develop a proper
Phabricator puppet module suitable for production installs, and I'll be glad I
made this testbed.

  [1]: http://www.vagrantup.com/
  [2]: http://puppetlabs.com/
  [3]: http://phabricator.org/
  [4]: https://github.com/facebook/phabricator
  [5]: http://127.0.0.1:8080/
