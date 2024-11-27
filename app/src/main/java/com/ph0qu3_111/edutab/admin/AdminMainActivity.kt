package com.ph0qu3_111.edutab.admin

import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import com.ph0qu3_111.edutab.R

class AdminMainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_admin_main)

        val btnConnectTablet = findViewById<Button>(R.id.btnConnectTablet)
        btnConnectTablet.setOnClickListener {
            // Afficher la liste des tablettes disponibles
        }
    }
}