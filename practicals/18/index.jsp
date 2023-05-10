<html>
	<style>
		.input,select,textarea
		{
			font-size: 15px;
			Height:30px; 
			Width:350px;
		}
		.textarea
		{
			max-width: 308;
			min-width: 308;
			height: 60;
		}
		td
		{
			font-size:20px;
			font-weight:bold;
		}
	</style>
	<title>206490316148</title>
	<body>
		<h1>Result Data Entry</h1><hr/>
		<form action="result\" method="POST">
			<h3>
			<table>
				<tr>
					<td colspan="2"><h3>General Information</td>
				</tr>
				<tr>
					<td>Enrollment Number</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="enrollment" placeholder="Entrollment Number" required></td>
				</tr><tr>
					<td>Full Name</td>
				</tr>
				<tr>
					<td><input class="input" type="text" name="fullname" placeholder="Full Name" required></td>
				</tr>
				</tr>
				<tr>
					<td>Department</td>
					</tr>
				<tr>
					<td>
						<select name="department" required>
							<option>Information Technology</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Semester</td>
					</tr>
				<tr>
					<td>
						<select name="semester" required>
							<option>6</option>
						</select>
					</td>
				</tr>
				<tr><td>&nbsp;</td><td>&nbsp;</td></tr>
				<tr>
					<td colspan="2"><h3>Mark Information</td>
				</tr>
				<tr>
					<td>Advance Java Programming</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="java" placeholder="Enter Mark" required></td>
				</tr>
				<tr>
					<td>Web And Network Security</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="wns" placeholder="Enter Mark" required></td>
				</tr><tr>
					<td>Android Application Development</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="aad" placeholder="Enter Mark" required></td>
				</tr>
				<tr>
					<td>Web Designing Using Php And Mysql</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="php" placeholder="Enter Mark" required></td>
				</tr>
				<tr>
					<td>Project II</td>
				</tr>
				<tr>
					<td><input class="input" type="number" name="project" placeholder="Enter Mark" required></td>
				</tr>
				<tr><td></td></tr>
				<tr>
					<td><input type="submit" value="Get Result"class="input"></td>
				</tr>
			</table>
			</h3>
			<hr/><h2>ADITYA SAVALIYA | 206490316148</h2>
		</form>
	</body>
</html>
