option(CURA_ENABLE_DEBUGMODE "Enable crash handler and other debug options in Cura" OFF)

ExternalProject_Add(Cura
    SVN_REPOSITORY https://212.106.159.105:81/svn/3D_Gen/src/Cura/Cura

    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX}
)

SetProjectDependencies(TARGET Cura DEPENDS Uranium CuraEngine)
