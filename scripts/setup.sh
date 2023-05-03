SCRIPT_DIR=$(cd $(dirname "$0") && pwd)

function clone_repo() {
    local repo_url=$1
    local repo_dir="repos/$2"
    local force=${3:-false}
    if [ "$force" = "true" ]; then
        echo "force clone repo $repo_url to $repo_dir"
        rm -rf $repo_dir
    fi
    if [ ! -d "$repo_dir" ]; then
        git clone $repo_url $repo_dir
    fi
}

clone_repo \
    git@github.com:JackonYang/paper-crawler-cache.git \
    paper-crawler-cache

clone_repo \
	git@github.com:JackonYang/paper-extra-data.git \
    paper-extra-data

clone_repo \
	git@github.com:JackonYang/paper-pipe.git \
    paper-pipe

clone_repo \
	git@github.com:JackonYang/dataset-repo.git \
    dataset-repo

clone_repo \
	git@github.com:JackonYang/paper-repo.git \
    paper-repo
