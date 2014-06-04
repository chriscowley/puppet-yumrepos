The simplest option is to just use:

```
class { 'yumrepos': }
```

Which will enable EPEL and Puppetlabs Yum repos.

A few others are available. If you to use Spacewalk, along with those base repositories:

```
class { 'yumrepos': }
class { 'yumrepos::spacewalk': }
```
