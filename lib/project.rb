class Project
    attr_reader :title

    def initialize title
        @title = title
    end

    def add_backer backer
        ProjectBacker.new(self, backer)
    end

    def backers
        backed_projects = ProjectBacker.all.filter { |backed_project| backed_project.project == self }
        backed_projects.map { |backed_project| backed_project.backer }
    end

end