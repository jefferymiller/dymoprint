
clean:
	rm -rf venv

venv: requirements.txt
	virtualenv venv && \
	venv/bin/pip install -r requirements.txt

dnf:
	sudo dnf install usb_modeswitch

install:
	sudo install -m 644 91-dymo-labelmanager-pnp.rules /etc/udev/rules.d/

