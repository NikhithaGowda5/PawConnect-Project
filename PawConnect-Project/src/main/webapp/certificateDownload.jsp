<%@ page import="com.itextpdf.text.*" %>
<%@ page import="com.itextpdf.text.pdf.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Date" %>

<%
    // 🔐 Ensure user is logged in
    if (session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    // 📥 Data from session (set after adoption)
    String adopterName = (String) session.getAttribute("fullName");
    String petName = (String) session.getAttribute("petName");
    String email = (String) session.getAttribute("email");

    if (adopterName == null || petName == null) {
        out.println("Certificate data missing.");
        return;
    }

    // 📄 PDF response settings
    response.setContentType("application/pdf");
    response.setHeader(
        "Content-Disposition",
        "attachment; filename=Pet_Adoption_Certificate.pdf"
    );

    Document document = new Document(PageSize.A4);
    PdfWriter.getInstance(document, response.getOutputStream());
    document.open();

    // 🎨 Fonts
    Font titleFont = new Font(Font.FontFamily.HELVETICA, 26, Font.BOLD, new BaseColor(106, 27, 154));
    Font normalFont = new Font(Font.FontFamily.HELVETICA, 14);
    Font highlightFont = new Font(Font.FontFamily.HELVETICA, 18, Font.BOLD, new BaseColor(106, 27, 154));

    // 🐾 Title
    Paragraph title = new Paragraph("Certificate of Adoption\n\n", titleFont);
    title.setAlignment(Element.ALIGN_CENTER);
    document.add(title);

    Paragraph subtitle = new Paragraph(
        "This certificate is proudly presented to\n\n",
        normalFont
    );
    subtitle.setAlignment(Element.ALIGN_CENTER);
    document.add(subtitle);

    // 👤 Adopter Name
    Paragraph namePara = new Paragraph(adopterName + "\n\n", highlightFont);
    namePara.setAlignment(Element.ALIGN_CENTER);
    document.add(namePara);

    // 🐶 Pet Name
    Paragraph petText = new Paragraph(
        "For lovingly adopting\n\n",
        normalFont
    );
    petText.setAlignment(Element.ALIGN_CENTER);
    document.add(petText);

    Paragraph petPara = new Paragraph(petName + "\n\n", highlightFont);
    petPara.setAlignment(Element.ALIGN_CENTER);
    document.add(petPara);

    // ❤️ Message
    Paragraph msg = new Paragraph(
        "And committing to provide care, safety, and unconditional love.\n\n",
        normalFont
    );
    msg.setAlignment(Element.ALIGN_CENTER);
    document.add(msg);

    // 📅 Details
    Paragraph details = new Paragraph(
        "Issued By: PawConnect Adoption Center\n" +
        "Issued On: " + new Date() + "\n" +
        "Adopter Email: " + email,
        normalFont
    );
    details.setAlignment(Element.ALIGN_CENTER);
    document.add(details);

    document.close();
%>
