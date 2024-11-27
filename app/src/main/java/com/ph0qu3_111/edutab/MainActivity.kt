package com.ph0qu3_111.edutab

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val btnAdmin = findViewById<Button>(R.id.btnAdmin)
        val btnEleve = findViewById<Button>(R.id.btnEleve)

        btnAdmin.setOnClickListener {
            startActivity(Intent(this, admin.AuthActivity::class.java))
        }

        btnEleve.setOnClickListener {
            startActivity(Intent(this, eleve.EleveActivity::class.java))
        }
    }
}