class r_repo (

  $apache = undef,
  $repos  = undef,

) {

  contain "${module_name}::apache"
  contain "${module_name}::repos"
}
