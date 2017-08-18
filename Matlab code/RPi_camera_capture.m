function RPi_camera_capture(rpi_object, pi_output_path, num_frames, wavelength, exposure)
% RPi_camera_capture: Signals the RaspberryPi to take num_frames at
% exposure. Uses pi_output_path, wavelength, num_frames, and exposure to
% create appropriate directory for output data.

fprintf('Taking photos');
pi_output_path = [pi_output_path '/' num2str(wavelength) '/'];
ssh2_command(rpi_object, ['python3 /home/pi/Desktop/I2R-MonoChrometer/PiCode/PiCamera_Capture.py ' pi_output_path ' ' num2str(num_frames) ' ' num2str(exposure)]);

end

