# Upstream (jthornber/thin-provisioning-tools) has since renamed its default
# branch from master to main, and this exact pinned commit (still present,
# tagged v0.7.6) isn't reachable from either branch anymore - bitbake's git
# fetcher requires SRCREV to be reachable from a named branch by default.
# nobranch=1 lets it fetch the commit directly by SHA instead.
SRC_URI_remove = "git://github.com/jthornber/thin-provisioning-tools"
SRC_URI_append = " git://github.com/jthornber/thin-provisioning-tools;nobranch=1"
