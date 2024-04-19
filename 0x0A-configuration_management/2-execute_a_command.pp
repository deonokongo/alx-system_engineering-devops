#a manifest that kills a process named killmenow
exec { 'killmenow_process':
  command => 'pkill -9 killmenow',
  onlyif  => 'pgrep killmenow',
}

