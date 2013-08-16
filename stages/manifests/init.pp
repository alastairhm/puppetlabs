class stages {
  stage { ['pre-run', 'post-run']:}
  Stage['pre-run'] -> Stage['main'] -> Stage['post-run']

  class { 'stages::epel':
    stage => 'pre-run',
  }

  class { 'stages::updatedb':
    stage => 'post-run',
  }
}
