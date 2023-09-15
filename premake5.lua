workspace "glad"
	configurations {"debug", "release"}


project "glad"
	kind "StaticLib"
	language "C"
	targetdir "lib"
	targetname "glad"

	includedirs {"include"}
	files {"src/glad.c"}

	filter "configurations:debug"
		defines {"DEBUG"}
		symbols "On"

	filter "configurations:release"
		defines {"NDEBUG"}
		optimize "On"