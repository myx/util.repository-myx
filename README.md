# util.repository-myx

Bootstraps a `myx` workspace from scratch — clones/updates the set of repos a `myx` workspace needs, using `sh-data/repository/remotes-list-myx.txt` as the authoritative list of `<local-path> <git-remote-url>` pairs. Run one of the following on a fresh machine:

	or

TGT_APP_PATH="~/myx.distro" curl --silent -L https://raw.githubusercontent.com/myx/util.repository-myx/master/sh-scripts/install-myx-repository.sh | sh -e

	or

TGT_APP_PATH="~/myx.distro" fetch -o - https://raw.githubusercontent.com/myx/util.repository-myx/master/sh-scripts/install-myx-repository.sh | sh -e

	or

TGT_APP_PATH="~/myx.distro" wget -O - https://raw.githubusercontent.com/myx/util.repository-myx/master/sh-scripts/install-myx-repository.sh | sh -e

