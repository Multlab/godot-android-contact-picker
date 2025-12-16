@tool
extends EditorPlugin

var export_plugin : AndroidExportPlugin

func _enter_tree():
	export_plugin = AndroidExportPlugin.new()
	add_export_plugin(export_plugin)

func _exit_tree():
	remove_export_plugin(export_plugin)
	export_plugin = null

class AndroidExportPlugin extends EditorExportPlugin:
	var _plugin_name = "ContactPicker"

	func _supports_platform(platform):
		if platform is EditorExportPlatformAndroid:
			return true
		return false

	func _get_android_libraries(platform, debug):
		if debug:
			return PackedStringArray(["res://addons/ContactPicker/bin/release/ContactPicker-release.aar"])
		return PackedStringArray(["res://addons/ContactPicker/bin/release/ContactPicker-release.aar"])
	
	func _get_android_dependencies(platform, debug):
		return PackedStringArray([])
	
	func _get_android_manifest_activity_element_contents(platform, debug):
		return ""
	
	func _get_android_manifest_application_element_contents(platform, debug):
		return ""
	
	func _get_android_manifest_element_contents(platform, debug):
		return """
	<uses-permission android:name="android.permission.READ_CONTACTS" />
"""

	func _get_name():
		return _plugin_name
