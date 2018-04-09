package com.babsazo.controller.login;

public interface Authenticator {
	void authenticate(String id, String password);
}
