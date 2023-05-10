<html>
	<style>
		.input,select,textarea
		{
			font-size: 15px;
			Height:30px; 
			Width:308px;
		}
		.textarea
		{
			max-width: 308;
			min-width: 308;
		}
		td
		{
			font-size:20px;
			font-weight:bold;
		}
	</style>
	<title>206490316148</title>
	<body>
		<h1>User Registration</h1><hr/>
		<form action="userdata/" method="POST">
			<h3>
			<table>
				<tr>
					<td>User Name</td>
				</tr>
				<tr>
					<td><input class="input" type="text" name="username" placeholder="First Name" required></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="mobilenumber" placeholder="+91 99999 99999" required></td>
				</tr>
				<tr>
					<td>Email</td>
				</tr>
				<tr>
					<td><input class="input" type="email" name="email" placeholder="example@domain.com" required></td>
				</tr>
				<tr>
					<td>Gender</td>
					</tr>
				<tr>
					<td>
						<input type="radio" name="gender" value="Male">Male
						<input type="radio" name="gender"  value="Female">Female
					</td>
				</tr>
				<tr>
					<td>Known languages</td>
					</tr>
				<tr>
					<td>
						<input type="checkbox" name="languages[]" value="	English">English
						<input type="checkbox" name="languages[]" value="Gujrati">Gujrati
						<input type="checkbox" name="languages[]" value="Hindi">Hindi
					</td>
				</tr>
				<tr>
					<td>Country</td>
				</tr>
				<tr>
					<td>
						<select name="country" required>
							<option>INDIA</option>
							<option>Japan</option>
							<option>Australia</option>
							<option>United Kingdom</option>
							<option>Denmark</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Password</td>
				</tr>
				<tr>
					<td><input class="input" type="password" name="password" placeholder="Password" required></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td><input type="submit" class="input"></td>
				</tr>
			</table>
			</h3>
			<hr/><h2>ADITYA SAVALIYA | 206490316148</h2>
		</form>
	</body>
</html>
