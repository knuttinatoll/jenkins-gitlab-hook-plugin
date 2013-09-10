module GitlabWebHook
  class Settings
    # TODO a hook to delete artifacts from the feature branches would be nice

    # TODO: bring this into the UI / project configuration
    # default params should be available, configuration overrides them
    CREATE_PROJECTS_FOR_NON_MASTER_BRANCHES_AUTOMATICALLY = true
    MASTER_BRANCH = "master"
    USE_MASTER_PROJECT_NAME = true
    DESCRIPTION = "automatically created by Gitlab Web Hook plugin"
    ANY_BRANCH_PATTERN = "**"
    GITLAB_VERSION = '6.0'

    def self.automatic_project_creation?
      CREATE_PROJECTS_FOR_NON_MASTER_BRANCHES_AUTOMATICALLY
    end

    def self.master_branch
      MASTER_BRANCH
    end

    def self.use_master_project_name?
      USE_MASTER_PROJECT_NAME
    end

    def self.description
      DESCRIPTION
    end

    def self.any_branch_pattern
      ANY_BRANCH_PATTERN
    end

    def self.gitlab_version
      GITLAB_VERSION
    end
  end
end
