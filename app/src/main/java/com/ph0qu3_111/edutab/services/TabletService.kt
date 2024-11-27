package com.ph0qu3_111.edutab.services

import com.ph0qu3_111.edutab.models.Tablet
import retrofit2.Call
import retrofit2.http.GET

interface TabletService {
    @GET("tablets")
    fun getAvailableTablets(): Call<List<Tablet>>
}