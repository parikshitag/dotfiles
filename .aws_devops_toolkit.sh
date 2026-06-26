#############################################
# 🚀 AWS DevOps Toolkit
#############################################

#############################################
# 👤 Identity Helper
#############################################

awswho() {
  local arn=$(aws sts get-caller-identity --query Arn --output text 2>/dev/null)
  echo "Profile: ${AWS_PROFILE:-not set}"
  echo "ARN: ${arn:-not available}"
}

#############################################
# 🔍 Auto-detect Pipelines
#############################################

cplist() {
  aws codepipeline list-pipelines \
    --query "pipelines[].name" \
    --output table
}

_get_pipeline() {
  if [ -z "$1" ]; then
    aws codepipeline list-pipelines \
      --query "pipelines[0].name" \
      --output text
  else
    echo "$1"
  fi
}

#############################################
# 🚀 CodePipeline
#############################################

cps() {
  PIPE=$(_get_pipeline "$1")

  aws codepipeline list-pipeline-executions \
    --pipeline-name "$PIPE" \
    --max-items 1 \
    --query "pipelineExecutionSummaries[0].{Pipeline:'$PIPE',Status:status,Start:startTime,Commit:sourceRevisions[0].revisionId}" \
    --output table
}

cptrigger() {
  PIPE=$(_get_pipeline "$1")
  aws codepipeline start-pipeline-execution --name "$PIPE"
  echo "🚀 Triggered pipeline: $PIPE"
}

cpwatch() {
  PIPE=$(_get_pipeline "$1")
  watch -n 10 "aws codepipeline list-pipeline-executions \
    --pipeline-name $PIPE \
    --max-items 1 \
    --query 'pipelineExecutionSummaries[0].status' \
    --output text"
}

deploy() {
  PIPE=$(_get_pipeline "$1")
  aws codepipeline start-pipeline-execution --name "$PIPE"
  echo "🚀 Triggered $PIPE — watching..."
  sleep 5
  cpwatch "$PIPE"
}

#############################################
# 🏗 CodeBuild
#############################################

cblist() {
  aws codebuild list-builds --sort-order DESC
}

cbprojects() {
  aws codebuild list-projects --output table
}

cbstart() {
  if [ -z "$1" ]; then
    PROJECT=$(aws codebuild list-projects --query "projects[0]" --output text)
  else
    PROJECT="$1"
  fi
  aws codebuild start-build --project-name "$PROJECT"
  echo "🏗️ Build started: $PROJECT"
}

#############################################
# 📦 CodeCommit
#############################################

ccrepos() {
  aws codecommit list-repositories \
    --query "repositories[].repositoryName" \
    --output table
}

ccclone() {
  REPO=$1
  git clone "codecommit::eu-west-1://$REPO"
}

#############################################
# END TOOLKIT
#############################################
