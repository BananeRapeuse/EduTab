package com.ph0qu3_111.edutab.admin

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.ph0qu3_111.edutab.R

class AuthActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_auth)

        val btnLogin = findViewById<Button>(R.id.btnLogin)
        val txtError = findViewById<TextView>(R.id.txtError)

        btnLogin.setOnClickListener {
            val username = findViewById<EditText>(R.id.editUsername).text.toString()
            val password = findViewById<EditText>(R.id.editPassword).text.toString()

            if (username == "admin" && password == "admin") {
                txtError.text = ""
                startActivity(Intent(this, AdminMainActivity::class.java))
            } else {
                txtError.text = "Mot de passe incorrect"
            }
        }
    }
}