Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Tworzenie formularza
$form = New-Object System.Windows.Forms.Form
$form.Text = "About"
$form.StartPosition = "CenterScreen"
$form.Size = New-Object System.Drawing.Size(400, 200)
$form.FormBorderStyle = 'FixedDialog'
$form.MaximizeBox = $false
$form.MinimizeBox = $false
$form.TopMost = $true

# Linia 1
$label1 = New-Object System.Windows.Forms.Label
$label1.Text = " polsoft.ITS London"
$label1.AutoSize = $true
$label1.Font = New-Object System.Drawing.Font("Segoe UI", 15, [System.Drawing.FontStyle]::Bold)
$label1.Location = New-Object System.Drawing.Point(100, 20)
$form.Controls.Add($label1)

# Linia 2
$label2 = New-Object System.Windows.Forms.Label
$label2.Text = "    DISM and SFC Tools v1.0"
$label2.AutoSize = $true
$label2.Font = New-Object System.Drawing.Font("Segoe UI", 13)
$label2.Location = New-Object System.Drawing.Point(80, 50)
$form.Controls.Add($label2)

# Linia 3
$label3 = New-Object System.Windows.Forms.Label
$label3.Text = "         2025 Sebastian Januchowski"
$label3.AutoSize = $true
$label3.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$label3.Location = New-Object System.Drawing.Point(90, 80)
$form.Controls.Add($label3)

# Przycisk OK
$okButton = New-Object System.Windows.Forms.Button
$okButton.Text = "OK"
$okButton.Size = New-Object System.Drawing.Size(80, 30)
$okButton.Location = New-Object System.Drawing.Point(150, 120)
$okButton.Add_Click({ $form.Close() })
$form.Controls.Add($okButton)

# Wyświetlenie okna
$form.ShowDialog()