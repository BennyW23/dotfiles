SPACESHIP_PROMPT_ORDER=(
  dir            # Current directory section
  git            # Git section (git_branch + git_status)
  #async          # Async jobs indicator
  #line_sep       # Line break
  battery        # Battery level and status
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  kubectl        # Kubectl context section
  #exec_time      # Execution time
  time           # Time stamps section
)

SPACESHIP_KUBECTL_CONTEXT_COLOR_GROUPS=(
    240 'staging'
    cyan 'prod'
)

SPACESHIP_TIME_SHOW=true

SPACESHIP_DIR_COLOR=032

SPACESHIP_GIT_ASYNC=false
SPACESHIP_GIT_PREFIX="("
SPACESHIP_GIT_SUFFIX=")"
SPACESHIP_GIT_BRANCH_PREFIX=
SPACESHIP_GIT_BRANCH_COLOR=078
SPACESHIP_GIT_STATUS_PREFIX=
SPACESHIP_GIT_STATUS_SUFFIX=
SPACESHIP_GIT_STATUS_COLOR=214

SPACESHIP_CHAR_PREFIX=" "
SPACESHIP_CHAR_SUFFIX=""

SPACESHIP_KUBECTL_SHOW=true
SPACESHIP_KUBECTL_ASYNC=false
SPACESHIP_KUBECTL_SYMBOL=
SPACESHIP_KUBECTL_PREFIX=
SPACESHIP_KUBECTL_SUFFIX=
SPACESHIP_KUBECTL_VERSION_SHOW=false
SPACESHIP_KUBECTL_CONTEXT_SHOW_NAMESPACE=false

SPACESHIP_TIME_COLOR=242
SPACESHIP_TIME_PREFIX=
SPACESHIP_TIME_SUFFIX=
