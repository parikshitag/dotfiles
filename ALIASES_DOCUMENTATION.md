# Dotfiles Aliases & Functions Documentation

## Table of Contents
1. Shell Shortcuts
2. File & Directory Management
3. Git Aliases
4. Kubernetes (kubectl) Aliases
5. Python Virtual Environments
6. TMUX Session Management
7. AWS Profile & SSO Management
8. EKS Cluster Management
9. Port Forwarding (Airflow, Redash)
10. SSM Tunnels (Bastion, RDS, Redshift)
11. AWS DevOps Toolkit
12. Port Number Reference

---

## 1. Shell Shortcuts

| Alias | Command | Description |
|-------|---------|-------------|
| ch | history \| grep "git commit" | Search commit history |
| hg | history \| grep | Search command history |
| yt | Open YouTube Scripts folder | Opens in Sublime (Mac) or VS Code (Linux) |
| oyt | Open YouTube Scripts folder | Opens in Finder (Mac) or file manager (Linux) |
| cyt | cd to YouTube Scripts | Changes directory to YouTube Scripts |

---

## 2. File & Directory Management

### List Files

| Alias | Command | Description |
|-------|---------|-------------|
| la | ls -lahF --color | List all files with details (long format) |
| ls | ls --color | List files with color output |

### grep with Color

| Alias | Command | Description |
|-------|---------|-------------|
| grep | grep --color=auto | Grep with color highlighting |
| fgrep | fgrep --color=auto | Fast grep with color |
| egrep | egrep --color=auto | Extended grep with color |

---

## 3. Git Aliases

| Alias | Full Command | Description |
|-------|--------------|-------------|
| g | git | Git shortcut |
| gs | git status | Show working tree status |
| ga | git add | Add files to staging |
| gc | git commit | Commit changes |
| gp | git push | Push to remote |
| gpl | git pull | Pull from remote |
| gl | git log --oneline --graph --decorate --all | Pretty git log with graph |
| gd | git diff | Show unstaged changes |
| gds | git diff --staged | Show staged changes |
| gco | git checkout | Checkout branch/file |
| gb | git branch | List/manage branches |
| gm | git merge | Merge branches |
| gr | git remote -v | Show remote repositories |

---

## 4. Kubernetes (kubectl) Aliases

### Basic kubectl

| Alias | Full Command | Description |
|-------|--------------|-------------|
| k | kubectl | kubectl shortcut |
| kns | kubens | Switch namespace |

### Events & All Namespaces

| Alias | Command | Description |
|-------|---------|-------------|
| kge | kubectl get events --sort-by="{.lastTimestamp}" | Get events sorted by time |
| kca | kubectl "$@" --all-namespaces | Run kubectl command in all namespaces |

### Apply / Exec / Port-forward

| Alias | Command | Description |
|-------|---------|-------------|
| kaf | kubectl apply -f | Apply configuration file |
| keti | kubectl exec -ti | Execute interactive shell in pod |
| kpf | kubectl port-forward | Port forward to pod/service |
| kcp | kubectl cp | Copy files to/from pod |

### Context Management

| Alias | Command | Description |
|-------|---------|-------------|
| kcuc | kubectl config use-context | Switch context |
| kcsc | kubectl config set-context | Set context configuration |
| kcdc | kubectl config delete-context | Delete context |
| kccc | kubectl config current-context | Show current context |
| kcgc | kubectl config get-contexts | List all contexts |
| kcn | kubectl config set-context ... --namespace | Set namespace for current context |

### Delete Resources

| Alias | Command | Description |
|-------|---------|-------------|
| kdel | kubectl delete | Delete resource |
| kdelf | kubectl delete -f | Delete resources from file |

### Pods

| Alias | Command | Description |
|-------|---------|-------------|
| kgp | kubectl get pods | List pods |
| kgpw | kgp --watch | Watch pods |
| kgpwide | kgp -o wide | List pods with more details |
| kgpl | kgp -l | List pods by label |
| kep | kubectl edit pods | Edit pod |
| kdp | kubectl describe pods | Describe pod |
| kdelp | kubectl delete pods | Delete pod |

### Services

| Alias | Command | Description |
|-------|---------|-------------|
| kgs | kubectl get svc | List services |
| kgsw | kgs --watch | Watch services |
| kgswide | kgs -o wide | List services with details |
| kes | kubectl edit svc | Edit service |
| kds | kubectl describe svc | Describe service |
| kdels | kubectl delete svc | Delete service |

### Ingress

| Alias | Command | Description |
|-------|---------|-------------|
| kgi | kubectl get ingress | List ingress |
| kei | kubectl edit ingress | Edit ingress |
| kdi | kubectl describe ingress | Describe ingress |
| kdeli | kubectl delete ingress | Delete ingress |

### Namespaces

| Alias | Command | Description |
|-------|---------|-------------|
| kgns | kubectl get namespaces | List namespaces |
| kens | kubectl edit namespace | Edit namespace |
| kdns | kubectl describe namespace | Describe namespace |
| kdelns | kubectl delete namespace | Delete namespace |

### ConfigMaps

| Alias | Command | Description |
|-------|---------|-------------|
| kgcm | kubectl get configmaps | List configmaps |
| kecm | kubectl edit configmap | Edit configmap |
| kdcm | kubectl describe configmap | Describe configmap |
| kdelcm | kubectl delete configmap | Delete configmap |

### Secrets

| Alias | Command | Description |
|-------|---------|-------------|
| kgsec | kubectl get secret | List secrets |
| kdsec | kubectl describe secret | Describe secret |
| kdelsec | kubectl delete secret | Delete secret |

### Deployments

| Alias | Command | Description |
|-------|---------|-------------|
| kgd | kubectl get deployment | List deployments |
| kgdw | kgd --watch | Watch deployments |
| kgdwide | kgd -o wide | List deployments with details |
| ked | kubectl edit deployment | Edit deployment |
| kdd | kubectl describe deployment | Describe deployment |
| kdeld | kubectl delete deployment | Delete deployment |
| ksd | kubectl scale deployment | Scale deployment |
| krsd | kubectl rollout status deployment | Check rollout status |
| kgrs | kubectl get rs | List replica sets |
| krh | kubectl rollout history | Show rollout history |
| kru | kubectl rollout undo | Undo rollout |

### Nodes

| Alias | Command | Description |
|-------|---------|-------------|
| kgno | kubectl get nodes | List nodes |
| keno | kubectl edit node | Edit node |
| kdno | kubectl describe node | Describe node |
| kdelno | kubectl delete node | Delete node |

### All Resources & Logs

| Alias | Command | Description |
|-------|---------|-------------|
| kga | kubectl get all | Get all resources |
| kgaa | kubectl get all --all-namespaces | Get all resources in all namespaces |
| kl | kubectl logs | View logs |
| klf | kubectl logs -f | Follow logs |

---

## 5. Python Virtual Environments

| Alias | Command | Description |
|-------|---------|-------------|
| venv | source .venv/bin/activate | Activate local .venv |
| wipe_env | rm -rf ~/venvs/tutorial && python3 -m venv ~/venvs/tutorial | Delete and recreate tutorial env |
| dbtenv | source ~/venvs/dbtenv/bin/activate | Activate dbt environment |
| tut_env | source ~/venvs/tutorial/bin/activate | Activate tutorial environment |
| dss_env | source ~/venvs/dss/bin/activate | Activate dss environment |
| adw_env | source ~/venvs/adw/bin/activate | Activate adw environment |
| sc_env | source ~/venvs/servicecreator/bin/activate | Activate servicecreator environment |
| castor_env | source ~/venvs/castor/bin/activate | Activate castor environment |
| dafenv | source ~/venvs/daf/bin/activate | Activate daf environment |

---

## 6. Local Server

| Alias | Command | Description |
|-------|---------|-------------|
| nas | ssh nas | SSH to NAS server (uses ~/.ssh/config) |

---

## 7. TMUX Session Management

### Function: t(session_name)

Creates or attaches to a named tmux session.

**Usage:**
```
t dev          # Create/attach to 'dev' session
t prod         # Create/attach to 'prod' session
```

**Behavior:**
- If inside tmux: switches to the session
- If outside tmux: attaches to the session
- Creates session if it doesn't exist

---

## 8. AWS Profile & SSO Management

### Environment Variable

| Variable | Value | Description |
|----------|-------|-------------|
| DF_AWS_REGION | eu-west-1 | Default AWS region for DSS |

### Main Function: dfenv(environment)

Switches AWS profile with automatic SSO validation and login.

**Usage:**
```
dfenv dev      # Switch to dev-df-admin profile
dfenv uat      # Switch to uat-df-admin profile
dfenv prod     # Switch to prod-df-admin profile
dfenv cicd     # Switch to cicd profile
```

**Features:**
- Validates SSO session before switching
- Auto-triggers login if session expired
- Verifies login success
- Sets AWS_PROFILE and AWS_REGION

**Profile Mapping:**
| Environment | AWS Profile |
|-------------|-------------|
| dev | dev-df-admin |
| uat | uat-df-admin |
| prod | prod-df-admin |
| cicd | cicd |

### Quick Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| dflogin | aws sso login --sso-session df-shared | Login to AWS SSO |
| dfdev | dfenv dev | Switch to dev profile |
| dfuat | dfenv uat | Switch to UAT profile |
| dfprod | dfenv prod | Switch to prod profile |
| dfcicd | dfenv cicd | Switch to CICD profile |
| awsprofile | echo ${AWS_PROFILE:-not set} | Show current AWS profile |
| lsrepo | List CodeCommit repositories | List all repos in current region |

---

## 9. EKS Cluster Management

### Function: eks()

Updates kubeconfig for the EKS cluster based on active AWS_PROFILE.

**Usage:**
```
dfdev && eks       # Switch to dev profile and update kubeconfig
dfprod && eks      # Switch to prod profile and update kubeconfig
```

**Cluster Mapping:**
| AWS Profile | EKS Cluster |
|-------------|-------------|
| dev-df-admin | dev-datafactory |
| uat-df-admin | uat-datafactory |
| prod-df-admin | prod-datafactory |

**Features:**
- Automatically derives cluster name from AWS_PROFILE
- Updates kubeconfig with correct context
- Validates AWS_PROFILE is set

---

## 10. Port Forwarding (Airflow, Redash)

### Airflow: pfairflow()

Port-forward to Airflow web UI with environment-specific ports.

**Usage:**
```
dfdev && pfairflow     # Forward dev Airflow to localhost:5000
dfuat && pfairflow     # Forward UAT Airflow to localhost:5001
dfprod && pfairflow    # Forward prod Airflow to localhost:5002
```

**Features:**
- Auto-updates EKS context before forwarding
- Uses environment-specific local ports
- Can run multiple environments simultaneously

**Port Mapping:**
| Environment | Local Port | Service | Remote Port |
|-------------|------------|---------|-------------|
| dev | 5000 | dev-api-server | 8080 |
| uat | 5001 | uat-api-server | 8080 |
| prod | 5002 | prod-api-server | 8080 |

### Redash: pfredash()

Port-forward to Redash web UI with environment-specific ports.

**Usage:**
```
dfdev && pfredash      # Forward dev Redash to localhost:5100
dfuat && pfredash      # Forward UAT Redash to localhost:5101
dfprod && pfredash     # Forward prod Redash to localhost:5102
```

**Port Mapping:**
| Environment | Local Port | Remote Port |
|-------------|------------|-------------|
| dev | 5100 | 80 |
| uat | 5101 | 80 |
| prod | 5102 | 80 |

### Port Check Aliases

| Alias | Command | Description |
|-------|---------|-------------|
| afcheck | lsof -i :5000 -i :5001 -i :5002 | Check Airflow ports |
| redashcheck | lsof -i :5100 -i :5101 -i :5102 | Check Redash ports |
| pgcheck | lsof -i :5432 -i :5433 -i :5434 | Check PostgreSQL ports |
| rscheck | lsof -i :5439 -i :5440 -i :5441 | Check Redshift ports |

---

## 11. SSM Tunnels (Bastion, RDS, Redshift)

### Helper Functions

These internal functions map AWS profiles to resources:

| Function | Purpose |
|----------|---------|
| _df_bastion_instance() | Returns bastion instance ID |
| _df_rds_endpoint() | Returns RDS endpoint |
| _df_redshift_endpoint() | Returns Redshift endpoint |

### Bastion: bs()

Connect to bastion server via AWS SSM.

**Usage:**
```
dfdev && bs        # Connect to dev bastion
dfuat && bs        # Connect to UAT bastion
dfprod && bs       # Connect to prod bastion
```

**Instance Mapping:**
| Environment | Instance ID |
|-------------|-------------|
| dev | i-065b5c527a1890cbe |
| uat | i-042d4e5d9c129220d |
| prod | i-007c3baf00fcdc433 |

### PostgreSQL/RDS: pgfwd()

Port-forward to RDS via SSM tunnel with environment-specific ports.

**Usage:**
```
dfdev && pgfwd     # Forward dev RDS to localhost:5432
dfuat && pgfwd     # Forward UAT RDS to localhost:5433
dfprod && pgfwd    # Forward prod RDS to localhost:5434
```

**Port Mapping:**
| Environment | Local Port | RDS Port |
|-------------|------------|----------|
| dev | 5432 | 5432 |
| uat | 5433 | 5432 |
| prod | 5434 | 5432 |

**RDS Endpoints:**
| Environment | Endpoint |
|-------------|----------|
| dev | rds-dev-datafactory-instance-1.ciyx0wg9ft4f.eu-west-1.rds.amazonaws.com |
| uat | rds-uat-datafactory-instance-1.ciyx0wg9ft4f.eu-west-1.rds.amazonaws.com |
| prod | rds-prod-datafactory-instance-1.ciyx0wg9ft4f.eu-west-1.rds.amazonaws.com |

### Redshift: rsfwd()

Port-forward to Redshift via SSM tunnel with environment-specific ports.

**Usage:**
```
dfdev && rsfwd     # Forward dev Redshift to localhost:5439
dfuat && rsfwd     # Forward UAT Redshift to localhost:5440
dfprod && rsfwd    # Forward prod Redshift to localhost:5441
```

**Port Mapping:**
| Environment | Local Port | Redshift Port |
|-------------|------------|---------------|
| dev | 5439 | 5439 |
| uat | 5440 | 5439 |
| prod | 5441 | 5439 |

**Redshift Endpoints:**
| Environment | Endpoint |
|-------------|----------|
| dev | rs-dev-datafactory-001.cymikxohtjhl.eu-west-1.redshift.amazonaws.com |
| uat | rs-uat-datafactory-001.cymikxohtjhl.eu-west-1.redshift.amazonaws.com |
| prod | rs-prod-datafactory-001.cn7jv4zmgtoa.eu-west-1.redshift.amazonaws.com |

---

## 12. AWS DevOps Toolkit

Location: ~/.aws_devops_toolkit.sh

### Identity Helper

**awswho()**

Shows current AWS profile and ARN.

**Usage:**
```
awswho
```

**Output:**
```
Profile: dev-df-admin
ARN: arn:aws:sts::123456789:assumed-role/...
```

---

### CodePipeline Functions

**cplist()**

List all CodePipeline pipelines.

**Usage:**
```
cplist
```

**Output:** Table of all pipeline names

---

**cps([pipeline_name])**

Show status of most recent pipeline execution.

**Usage:**
```
cps                    # Show status of first/default pipeline
cps my-pipeline        # Show status of specific pipeline
```

**Output:** Table showing pipeline name, status, start time, and commit ID

---

**cptrigger([pipeline_name])**

Trigger a pipeline execution.

**Usage:**
```
cptrigger              # Trigger first/default pipeline
cptrigger my-pipeline  # Trigger specific pipeline
```

---

**cpwatch([pipeline_name])**

Watch pipeline execution status (updates every 10 seconds).

**Usage:**
```
cpwatch                # Watch first/default pipeline
cpwatch my-pipeline    # Watch specific pipeline
```

---

**deploy([pipeline_name])**

Trigger pipeline and watch status.

**Usage:**
```
deploy                 # Deploy first/default pipeline
deploy my-pipeline     # Deploy specific pipeline
```

**Behavior:**
- Triggers pipeline execution
- Waits 5 seconds
- Starts watching status

---

### CodeBuild Functions

**cblist()**

List all CodeBuild builds (most recent first).

**Usage:**
```
cblist
```

---

**cbprojects()**

List all CodeBuild projects.

**Usage:**
```
cbprojects
```

**Output:** Table of project names

---

**cbstart([project_name])**

Start a CodeBuild project.

**Usage:**
```
cbstart                # Start first/default project
cbstart my-project     # Start specific project
```

---

### CodeCommit Functions

**ccrepos()**

List all CodeCommit repositories.

**Usage:**
```
ccrepos
```

**Output:** Table of repository names

---

**ccclone(repository_name)**

Clone a CodeCommit repository using codecommit:// protocol.

**Usage:**
```
ccclone my-repo
```

**Behavior:**
- Clones from eu-west-1 region
- Uses CodeCommit credential helper

---

## 13. Port Number Reference

Complete port mapping for all services across environments:

### Summary Table

| Service | Dev | UAT | Prod | Notes |
|---------|-----|-----|------|-------|
| Airflow | 5000 | 5001 | 5002 | Web UI |
| Redash | 5100 | 5101 | 5102 | Web UI |
| PostgreSQL/RDS | 5432 | 5433 | 5434 | Database |
| Redshift | 5439 | 5440 | 5441 | Data Warehouse |

### Accessing Services

**Airflow:**
- Dev: http://localhost:5000
- UAT: http://localhost:5001
- Prod: http://localhost:5002

**Redash:**
- Dev: http://localhost:5100
- UAT: http://localhost:5101
- Prod: http://localhost:5102

**PostgreSQL Connection Strings:**
- Dev: postgresql://localhost:5432/dbname
- UAT: postgresql://localhost:5433/dbname
- Prod: postgresql://localhost:5434/dbname

**Redshift Connection Strings:**
- Dev: redshift://localhost:5439/dbname
- UAT: redshift://localhost:5440/dbname
- Prod: redshift://localhost:5441/dbname

---

## 14. Common Workflows

### Workflow 1: Access Dev Airflow

```bash
dfdev && pfairflow
# Opens: http://localhost:5000
```

### Workflow 2: Access Prod Database

```bash
dfprod && pgfwd
# Connect to: localhost:5434
```

### Workflow 3: Run Multiple Environments Simultaneously

```bash
# Terminal 1
dfdev && pfairflow     # Dev Airflow on :5000

# Terminal 2
dfprod && pfairflow    # Prod Airflow on :5002

# Terminal 3
dfdev && pgfwd         # Dev PostgreSQL on :5432

# Terminal 4
dfprod && rsfwd        # Prod Redshift on :5441
```

### Workflow 4: Deploy Pipeline

```bash
dfdev                  # Switch to dev environment
deploy my-pipeline     # Trigger and watch deployment
```

### Workflow 5: Check What's Running

```bash
afcheck                # Check Airflow ports
redashcheck            # Check Redash ports
pgcheck                # Check PostgreSQL ports
rscheck                # Check Redshift ports
```

---

## 15. macOS-Only Aliases

These aliases only work on macOS:

| Alias | Command | Description |
|-------|---------|-------------|
| update_system | sudo softwareupdate -i -a | Update macOS system |
| update_brew | brew update; brew upgrade; brew upgrade --cask; brew cleanup | Update Homebrew and packages |
| show | Show hidden files in Finder | Toggle visibility of hidden files |
| hide | Hide hidden files in Finder | Toggle visibility of hidden files |
| clean | Empty trash and Downloads | Clean up system |
| tut_mode | Tutorial/screencast mode | Hide dock, desktop, use analog clock |
| reg_mode | Regular mode | Restore normal dock and desktop |

---

## 16. Tips & Best Practices

### SSO Session Management

- Run `dflogin` once per day to authenticate
- Session is shared across all profiles (dev/uat/prod)
- Auto-login triggers if session expires

### Port Forwarding

- Each environment uses unique ports to avoid conflicts
- You can run multiple environments simultaneously
- Use check aliases to see what's currently running

### EKS Context

- Context automatically updates when you use port-forward functions
- No need to manually run `eks` before port-forwarding
- Context stays active until you switch to another profile

### Virtual Environments

- Always activate the correct venv before running Python scripts
- Use `wipe_env` to start fresh if environment is corrupted

### TMUX Sessions

- Use `t <name>` to organize work by project or environment
- Sessions persist even if terminal closes
- Easy to switch between projects

---

## 17. Troubleshooting

### AWS SSO Issues

**Problem:** "SSO session expired"

**Solution:**
```bash
dflogin                # Re-authenticate
dfdev                  # Switch profile (will auto-login if needed)
```

---

### Port Already in Use

**Problem:** "Port is already allocated"

**Solution:**
```bash
afcheck                # Check what's using the port
# Kill the process using the port, then retry
```

---

### kubectl Context Wrong

**Problem:** "Error from server (NotFound)"

**Solution:**
```bash
dfdev && eks           # Manually update context
kccc                   # Verify current context
```

---

### Can't Connect to Bastion

**Problem:** "Could not connect to the endpoint"

**Solution:**
```bash
awsprofile             # Verify correct profile is set
dfdev                  # Switch to correct profile
bs                     # Retry connection
```

---

## 18. File Locations

| File | Location | Purpose |
|------|----------|---------|
| Aliases | ~/dotfiles/.aliases | Main aliases file |
| AWS Toolkit | ~/dotfiles/.aws_devops_toolkit.sh | AWS helper functions |
| Symlinks | ~/.aliases, ~/.aws_devops_toolkit.sh | Links to dotfiles repo |

---

**Last Updated:** 2026-06-26
**Maintained By:** Parikshit Agarwal
**Repository:** https://github.com/parikshitag/dotfiles
