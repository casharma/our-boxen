class people::casharma::brew {
  $formulae = [
    'tree',
    'wget',
    'gnupg',
    'graphviz',
    'fondu',
    'fontconfig',
    'fontforge',
    'imagemagick',
    'jasper',
    'qemu',
    'tmux',
    'watch',
    'xorriso'
  ]
  package { $formulae :
   ensure => present,
  }
}
