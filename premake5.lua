project "ImGui"
	kind "StaticLib"
	language "C++"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"backends/imgui_impl_glfw.cpp"
	}

	filter "system:linux"
		pic "On"

		systemversion "latest"

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
