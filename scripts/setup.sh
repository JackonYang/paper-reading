SCRIPT_DIR=$(cd $(dirname "$0") && pwd)

function clone_repo() {
    local repo_url=$1
    local repo_dir=$2
    local force=${3:-false}
    if [ "$force" = "true" ]; then
        echo "force clone repo $repo_url to $repo_dir"
        rm -rf $repo_dir
    fi
    if [ ! -d "$repo_dir" ]; then
        git clone $repo_url $repo_dir
    else
        echo "repo $repo_dir already exists"
    fi
}

home_dir=$(cd ~ && pwd)
data_root_dir=$(realpath "$home_dir/.cache-paper-reading")

mkdir -p $data_root_dir

clone_repo \
    git@github.com:JackonYang/paper-crawler-cache.git \
    $data_root_dir/crawler-cache

clone_repo \
	git@github.com:JackonYang/paper-extra-data.git \
    $data_root_dir/paper-extra-data

# clone_repo \
# 	git@github.com:JackonYang/paper-pipe.git \
#     paper-pipe

# clone_repo \
# 	git@github.com:JackonYang/paper-repo.git \
#     paper-repo
