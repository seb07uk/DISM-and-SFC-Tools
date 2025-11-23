Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object Windows.Forms.Form
$form.StartPosition = "CenterScreen"
$form.Text = "DISM and SFC Tools v1.0"
$form.Width = 435
$form.Height = 250
$form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("graphics\app.ico")

$button1 = New-Object Windows.Forms.Button
$button1.Text = "Health Restore"
$button1.Width = 120
$button1.Height = 40
$button1.Location = New-Object Drawing.Point(10, 10)
$button1.Add_Click({
    $batPath = "scripts\option1.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button1)

$button2 = New-Object Windows.Forms.Button
$button2.Text = "Health Scan"
$button2.Width = 120
$button2.Height = 40
$button2.Location = New-Object Drawing.Point(10, 60)
$button2.Add_Click({
    $batPath = "scripts\option2.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button2)

$button3 = New-Object Windows.Forms.Button
$button3.Text = "Health Check"
$button3.Width = 120
$button3.Height = 40
$button3.Location = New-Object Drawing.Point(10, 110)
$button3.Add_Click({
    $batPath = "scripts\option3.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button3)

$button4 = New-Object Windows.Forms.Button
$button4.Text = "System File Checker"
$button4.Width = 120
$button4.Height = 40
$button4.Location = New-Object Drawing.Point(150, 10)
$button4.Add_Click({
    $batPath = "scripts\option4.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button4)

$button5 = New-Object Windows.Forms.Button
$button5.Text = "System Files Verification"
$button5.Width = 120
$button5.Height = 40
$button5.Location = New-Object Drawing.Point(150, 60)
$button5.Add_Click({
    $batPath = "scripts\option5.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button5)

$button6 = New-Object Windows.Forms.Button
$button6.Text = "Analyze Component Store"
$button6.Width = 120
$button6.Height = 40
$button6.Location = New-Object Drawing.Point(150, 110)
$button6.Add_Click({
    $batPath = "scripts\option6.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button6)

$button7 = New-Object Windows.Forms.Button
$button7.Text = "System Component Cleanup"
$button7.Width = 120
$button7.Height = 40
$button7.Location = New-Object Drawing.Point(290, 10)
$button7.Add_Click({
    $batPath = "scripts\option7.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button7)

$button8 = New-Object Windows.Forms.Button
$button8.Text = "System Reset Base"
$button8.Width = 120
$button8.Height = 40
$button8.Location = New-Object Drawing.Point(290, 60)
$button8.Add_Click({
    $batPath = "scripts\option8.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button8)

$button9 = New-Object Windows.Forms.Button
$button9.Text = "All in One"
$button9.Width = 120
$button9.Height = 40
$button9.Location = New-Object Drawing.Point(290, 110)
$button9.Add_Click({
    $batPath = "scripts\option9.bat"
    if (Test-Path $batPath) {
        Start-Process -FilePath $batPath -WindowStyle Normal
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $batPath", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($button9)

$GitHubIcon = New-Object Windows.Forms.PictureBox
$GitHubIcon.Image = [System.Drawing.Image]::FromFile("graphics\github.png")
$GitHubIcon.SizeMode = "StretchImage"
$GitHubIcon.Width = 40
$GitHubIcon.Height = 40
$GitHubIcon.Location = New-Object Drawing.Point(270, 160)
$GitHubIcon.Add_Click({
    Start-Process "https://github.com/seb07uk"
})
$form.Controls.Add($GitHubIcon)

$emailIcon = New-Object Windows.Forms.PictureBox
$emailIcon.Image = [System.Drawing.Image]::FromFile("graphics\email.png")
$emailIcon.SizeMode = "StretchImage"
$emailIcon.Width = 40
$emailIcon.Height = 40
$emailIcon.Location = New-Object Drawing.Point(219, 160) 
$emailIcon.Add_Click({
    Start-Process "mailto:polsoft.its@fastservice.com"
})
$form.Controls.Add($emailIcon)

$emailIcon = New-Object Windows.Forms.PictureBox
$emailIcon.Image = [System.Drawing.Image]::FromFile("graphics\chomik.jpg")
$emailIcon.SizeMode = "StretchImage"
$emailIcon.Width = 40
$emailIcon.Height = 40
$emailIcon.Location = New-Object Drawing.Point(320, 160) 
$emailIcon.Add_Click({
    Start-Process "https://chomikuj.pl/polsoft-its/seb07uk"
})
$form.Controls.Add($emailIcon)

$AboutIco2 = New-Object Windows.Forms.PictureBox
$AboutIco2.Image = [System.Drawing.Image]::FromFile("graphics\logo.jpg")
$AboutIco2.SizeMode = "StretchImage"
$AboutIco2.Width = 40
$AboutIco2.Height = 40
$AboutIco2.Location = New-Object Drawing.Point(370, 160)
$AboutIco2.Add_Click({
    $ps1Path = "scripts\about.ps1"
    if (Test-Path $ps1Path) {
        Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File `"$ps1Path`""
    } else {
        [System.Windows.Forms.MessageBox]::Show("File not found: $ps1Path", "Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
})
$form.Controls.Add($AboutIco2)

$labelCopyright = New-Object Windows.Forms.Label
$labelCopyright.Text = "2025 Sebastian Januchowski"
$labelCopyright.AutoSize = $true
$labelCopyright.Font = New-Object Drawing.Font("Segoe UI", 8, [System.Drawing.FontStyle]::Regular)
$labelCopyright.Location = New-Object Drawing.Point(10, 190)
$labelCopyright.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left
$form.Controls.Add($labelCopyright)
$form.ShowDialog()