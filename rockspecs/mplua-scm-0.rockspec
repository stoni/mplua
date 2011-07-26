package = "mplua"
version = "scm-0"
source = {
   url = "git://github.com/stoni/mplua.git"
}
description = {
   summary = "Lua bindings to msgpack",
   homepage = "http://github.com/stoni/mplua",
   license = "Apache 2 License"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   MSGPACK = {
      header = "msgpack.hpp",
	  library = "msgpack"
   }
}
build = {
   type = "builtin",
   modules = {
     msgpack = {
       sources = {"src/lua_objects.cpp", "src/msgpack.cpp", "src/packer.cpp", "src/packer_impl.cpp", "src/unpacker.cpp"},
       libraries = {"msgpack"},
	   incdirs = {"$(MSGPACK_INCDIR)"},
       libdirs = {"$(MSGPACK_LIBDIR)"}
     }
   }
}