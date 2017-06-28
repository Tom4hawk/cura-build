
ExternalProject_Add(Uranium
    SVN_REPOSITORY https://212.106.159.105:81/svn/3D_Gen/src/Uranium

    GIT_REPOSITORY https://github.com/ultimaker/fdm_materials
    GIT_TAG origin/${TAG_OR_BRANCH}
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX} -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
)

SetProjectDependencies(TARGET Uranium)
