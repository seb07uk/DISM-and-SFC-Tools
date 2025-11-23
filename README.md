# DISM and SFC Tool v1.0

PowerShell/Batch
## 📌 Description
This project presents a simple and intuitive graphical user interface (GUI) in PowerShell, based on **Windows Forms** and **System.Drawing**.  
The application allows you to run various Windows diagnostic and repair tools (DISM, SFC) and integrate with external resources.

---

## ✅ Project Advantages

- **Use of Windows Forms and System.Drawing**  
  - The code uses the native .NET library, ensuring a stable and predictable GUI.  
  - Ability to add icons, images, and graphical controls (PictureBox, Label).  

- **Clear form structure**  
  - The form has clearly defined dimensions, title, icon, and startup position.  
  - Using the `Topmost` property ensures the window is always visible on top.  

- **Modular buttons for different options**  
  - Each button launches a specific `.bat` or `.ps1` file.  
  - The code is repetitive, but this makes it easy to extend with additional options.  
  - Error handling (`Test-Path`) – if the file does not exist, the user receives a message in a `MessageBox`.  

- **Intuitive GUI layout**  
  - Buttons are arranged in a grid (columns and rows), making navigation easier.  
  - Icons (GitHub, Email, Chomik, About) add visual appeal and serve as shortcuts.  
  - A copyright label in the bottom corner gives the application a professional look.  

- **Integration with external resources**  
  - Ability to open websites, send emails (`mailto:`), and run PowerShell scripts.  
  - This makes the GUI a central hub for managing tools and documentation.  

- **Security and control**  
  - `ExecutionPolicy Bypass` for `about.ps1` allows the script to run without restrictions, while the code still checks if the file exists.  
  - Error handling minimizes the risk of users not understanding why something doesn’t work.  

---

## 📂 Project Structure
- `app.ico` – application icon  
- `github.png`, `email.png`, `chomik.jpg`, `logo.jpg` – graphics for buttons  
- `opcja1.bat` … `opcja9.bat` – scripts executed by buttons  
- `about.ps1` – additional informational script  

---

## 🛠️ Requirements
- Windows 10/11  
- PowerShell 5.1 or newer  
- `.bat` files and graphics in the application’s root directory  

---

## 👨‍💻 Author
**2025 Sebastian Januchowski**

---

## 📄 License
This project is licensed under the MIT License. You are free to use, modify, and distribute it with proper attribution to the author.

---

<p style="text-align: center;">The code was originally written and used to test the main code.</p>  
<p style="text-align: center;">2025</p>