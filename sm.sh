#!/usr/bin/env bash
# sm - Sebastian Mandal's Personal Utility Package
# Usage: sm <command> [arguments]

# set -euo pipefail

# function info() { echo "[INFO] $*"; }
# function error() { echo "[ERROR] $*" >&2; }

# install_command() {
# 	if [ -f package.json ]; then
# 		if [ -f yarn.lock ]; then
# 			info "Detected Yarn project. Running: yarn install"
# 			yarn install "$@"
# 		elif [ -f package-lock.json ]; then
# 			info "Detected npm project. Running: npm ci"
# 			npm ci "$@"
# 		else
# 			info "Detected package.json without lock files. Running: pnpm install"
# 			pnpm install "$@"
# 		fi
# 	elif [ -f requirements.txt ]; then
# 		info "Detected Python project. Running: pip install -r requirements.txt"
# 		pip install -r requirements.txt "$@"
# 	else
# 		error "No package.json or requirements.txt found."
# 		return 1
# 	fi
# }

# run_command() {
# 	if [ -z "${1:-}" ]; then
# 		error "No script/command provided to run."
# 		return 1
# 	fi

# 	if [ -f package.json ]; then
# 		if [ -f yarn.lock ]; then
# 			info "Running with Yarn: yarn $1"
# 			yarn "$1"
# 		elif [ -f package-lock.json ]; then
# 			info "Running with npm: npm run $1"
# 			npm run "$1"
# 		else
# 			info "Running with pnpm: pnpm $1"
# 			pnpm "$1"
# 		fi
# 	elif [ -f requirements.txt ]; then
# 		info "Running Python command: python $1"
# 		python "$1"
# 	else
# 		error "No package.json or requirements.txt found."
# 		return 1
# 	fi
# }

# clean_command() {
# 	info "Cleaning up common build artifacts..."
# 	find . -type d -name "node_modules" -prune -exec rm -rf '{}' +
# 	find . -type d -name "__pycache__" -prune -exec rm -rf '{}' +
# 	find . -type d -name ".cache" -prune -exec rm -rf '{}' +
# 	info "Cleanup completed."
# }

# backup_command() {
# 	local target_dir="${1:-.}"
# 	local base_name
# 	base_name=$(basename "$target_dir")
# 	local timestamp
# 	timestamp=$(date +%Y-%m-%d-%H-%M-%S)
# 	local backup_file="${base_name}-${timestamp}.tar.gz"

# 	info "Creating backup of directory '$target_dir' as '$backup_file'..."
# 	tar -czf "$backup_file" -C "$(dirname "$target_dir")" "$base_name"
# 	info "Backup completed: $backup_file"
# }

# git_status_command() {
# 	info "Git status:"
# 	git status
# }

# git_commit_command() {
# 	if [ -z "${1:-}" ]; then
# 		error "No commit message provided."
# 		return 1
# 	fi
# 	info "Committing changes with message: $1"
# 	git commit -m "$1"
# }

# git_push_command() {
# 	info "Pushing changes..."
# 	git push
# }

# git_pull_command() {
# 	info "Pulling changes..."
# 	git pull
# }

# git_checkout_command() {
# 	if [ -z "${1:-}" ]; then
# 		error "No branch provided for checkout."
# 		return 1
# 	fi
# 	info "Checking out branch: $1"
# 	git checkout "$1"
# }

# git_checkout_new_command() {
# 	if [ -z "${1:-}" ]; then
# 		error "No branch name provided for new branch."
# 		return 1
# 	fi
# 	info "Creating and checking out new branch: $1"
# 	git checkout -b "$1"
# }

# git_merge_command() {
# 	if [ -z "${1:-}" ]; then
# 		error "No branch provided to merge."
# 		return 1
# 	fi
# 	info "Merging branch: $1"
# 	git merge "$1"
# }

# git_log_command() {
# 	info "Git log:"
# 	git log
# }

# reload_command() {
# 	info "Reloading shell configuration (~/.zshrc)..."
# 	source ~/.zshrc
# }

# config_command() {
# 	info "Opening zsh configuration file in vim..."
# 	vim ~/dev/dotfiles/zshrc
# }

# help_command() {
# 	cat <<EOF
# Sebastian Mandal's (sm) Personal Utility Package

# Usage:
# 	sm <command> [arguments]

# 	Available commands:
# 	install       Install dependencies (auto-detects package manager or Python requirements)
# 	run           Run a script/command (for Node.js or Python projects)
# 	clean         Remove common build artifacts (node_modules, __pycache__, .cache)
# 	backup        Create a timestamped backup of a directory (default: current directory)
# 	gs            Git status
# 	gc            Git commit (usage: sm gc "commit message")
# 	gp            Git push
# 	gpl           Git pull
# 	gco           Git checkout (usage: sm gco branch)
# 	gcb           Git checkout -b (usage: sm gcb new_branch)
# 	gm            Git merge (usage: sm gm branch)
# 	gl            Git log
# 	r             Reload shell configuration (~/.zshrc)
# 	config        Open zsh configuration file (vim)
# 	help          Show this help message
# EOF
# }

# main() {
# 	if [ "$#" -eq 0 ]; then
# 		help_command
# 		exit 0
# 	fi

# 	local cmd="$1"
# 	shift

# 	case "$cmd" in
# 	install) install_command "$@" ;;
# 	run) run_command "$@" ;;
# 	clean) clean_command "$@" ;;
# 	backup) backup_command "$@" ;;
# 	gs) git_status_command "$@" ;;
# 	gc) git_commit_command "$@" ;;
# 	gp) git_push_command "$@" ;;
# 	gpl) git_pull_command "$@" ;;
# 	gco) git_checkout_command "$@" ;;
# 	gcb) git_checkout_new_command "$@" ;;
# 	gm) git_merge_command "$@" ;;
# 	gl) git_log_command "$@" ;;
# 	r) reload_command "$@" ;;
# 	config) config_command "$@" ;;
# 	help | --help | -h) help_command "$@" ;;
# 	*)
# 		error "Unknown command: $cmd"
# 		help_command
# 		exit 1
# 		;;
# 	esac
# }

# main "$@"

alias test="echo testererereerer"
