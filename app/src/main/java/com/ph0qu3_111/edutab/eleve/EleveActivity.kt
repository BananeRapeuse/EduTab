package com.ph0qu3_111.edutab.eleve

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.ph0qu3_111.edutab.R

class EleveActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_eleve)

        val btnSubmit = findViewById<Button>(R.id.btnSubmit)
        val txtStatus = findViewById<TextView>(R.id.txtStatus)

        btnSubmit.setOnClickListener {
            val name = findViewById<EditText>(R.id.editName).text.toString()
            if (name.isNotEmpty()) {
                txtStatus.text = "Tablette en attente de connexion..."
                // Simuler la connexion à l'administration
            } else {
                txtStatus.text = "Veuillez entrer un nom"
            }
        }
    }
}