<script>
	import InputField from '../../components/InputField.svelte';
	import Button from '../../components/Button.svelte';
	let username = '';
	let password = '';

	async function login() {
		console.log('Username:', username);
		console.log('Password:', password);
	}
</script>

<main class="flex flex-col items-center gap-10 pt-10">
	<h1 class=" text-2xl">Please register to <span class="font-bold">HackOurPassword</span>.</h1>
	<p>
		Already registered? You can <a class="text-blue-500" href="/login">login</a>.
	</p>
	<form class="flex flex-col items-center justify-center gap-3" on:submit|preventDefault={login}>
		<InputField
			label="Username"
			id="username"
			value={username}
			placeholder="john.doe"
			onInput={(e) => (username = e.target.value)}
		/>
		<InputField
			label="Password"
			id="password"
			type="password"
			value={password}
			onInput={(e) => (password = e.target.value)}
		/>
		<Button label="Register" type="submit" />
	</form>
</main>
