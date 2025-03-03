extends Control

func _process(delta: float) -> void:
	# print_debug(DisplayServer.window_get_size())
	if DisplayServer.window_get_size().x < 800:
		%MobileView.visible = true
		%DesktopView.visible = false
		%Navbar.set_size(Vector2(%Navbar.get_size().x, 130))
		for i in %NavbarHorContainer.get_children():
			i.add_theme_font_size_override("font_size", 65)

	else:
		%MobileView.visible = false
		%DesktopView.visible = true
		%Navbar.set_size(Vector2(%Navbar.get_size().x, 45))
		for i in %NavbarHorContainer.get_children():
			i.add_theme_font_size_override("font_size", 20)

func _ready():
	# Create an HTTP request node and connect its completion signal.
	%HTTPRequest.request_completed.connect(self._http_request_completed)

	# Perform the HTTP request. The URL below returns a PNG image as of writing.
	var error = %HTTPRequest.request("https://avatars.githubusercontent.com/u/25984671?v=4")
	if error != OK:
		push_error("An error occurred in the HTTP request.")

# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
	if result != HTTPRequest.RESULT_SUCCESS:
		push_error("Image couldn't be downloaded. Try a different image.")

	var image = Image.new()
	var error = image.load_png_from_buffer(body)
	if error != OK:
		push_error("Couldn't load the image.")

	var texture = ImageTexture.create_from_image(image)

	# Display the image in a TextureRect node.
	%ImageDesk.texture = texture
	%ImagePhone.texture = texture

# Buttons
func _on_linkedin_pressed() -> void:
	OS.shell_open("https://www.linkedin.com/in/anthony-vatousis/")

func _on_github_pressed() -> void:
	OS.shell_open("https://github.com/antv199")

func _on_blog_pressed() -> void:
	OS.shell_open("https://antv199.github.io/blog/")
