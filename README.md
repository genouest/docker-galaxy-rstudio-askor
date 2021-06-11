# Docker RStudio Container for AskoR

[![Docker Repository on Quay](https://quay.io/repository/genouest/docker-galaxy-rstudio-askor/status "Docker Repository on Quay")](https://quay.io/repository/genouest/docker-galaxy-rstudio-askor)

This is a customised flavor of https://github.com/hexylena/docker-rstudio-notebook dedicated to AskoR analyses.

Specific R packages are pre-installed.

This image can be used as a Galaxy Interactive Tool.

## Installing it as a Galaxy Interactive Tool on a Galaxy instance

First make sure your Galaxy instance is [configured to support Interactive Tools](https://training.galaxyproject.org/training-material/topics/admin/tutorials/interactive-tools/tutorial.html).

Then you need to copy the [./interactivetool_rstudio_askor.xml](./interactivetool_rstudio_askor.xml) file into `$GALAXY_ROOT/tools/interactive/`.

Add this new tool to `$GALAXY_ROOT/config/tool_conf.xml`:

```
<?xml version='1.0' encoding='utf-8'?>
<toolbox monitor="true">
  [...]
  <section id="interactive_tools" name="Interactive tools">
    [...]
    <tool file="interactive/interactivetool_rstudio_askor.xml" />
  </section>
</toolbox>
```

And add this tool to `$GALAXY_ROOT/config/job_conf.xml`: follow the instructions in the [Interactive Tools tutorial](https://training.galaxyproject.org/training-material/topics/admin/tutorials/interactive-tools/tutorial.html), and adapt depending on your setup.
