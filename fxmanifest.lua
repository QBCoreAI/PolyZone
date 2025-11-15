games {'gta5'}

fx_version 'cerulean'

description 'Define zones of different shapes and test whether a point is inside or outside of the zone'
version '2.6.2'

shared_scripts {
  'Poly/init.lua'
}

client_scripts {
  'Poly/client/utils.lua',
  'Poly/client/base.lua',
  'Poly/client/zones/*.lua',
  'Poly/creation/client/*.lua'
}

server_scripts {
  'Poly/creation/server/*.lua',
  'Poly/server/init.lua'
}
