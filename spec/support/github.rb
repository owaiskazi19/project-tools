Octokit.auto_paginate = true
GitHub::Progress.enabled = false
$github = Octokit::Client.new
$org = GitHub::Organization.new('RedHatOfficial')
