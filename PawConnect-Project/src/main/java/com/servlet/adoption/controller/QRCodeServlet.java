package com.servlet.adoption.controller;

import java.io.IOException;
import java.io.OutputStream;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.client.j2se.MatrixToImageWriter;

@WebServlet("/generateQR")
public class QRCodeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String text = req.getParameter("text"); // text to encode

        if (text == null || text.trim().isEmpty()) {
            text = "Hello from QR Code Servlet!";
        }

        int width = 250;
        int height = 250;

        QRCodeWriter qrWriter = new QRCodeWriter();

        try {
            BitMatrix bitMatrix = qrWriter.encode(text, BarcodeFormat.QR_CODE, width, height);

            resp.setContentType("image/png");
            OutputStream out = resp.getOutputStream();

            MatrixToImageWriter.writeToStream(bitMatrix, "PNG", out);

            out.flush();
            out.close();

        } catch (WriterException e) {
            e.printStackTrace();
        }
    }
}
