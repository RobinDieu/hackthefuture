<script>
	export let label = '';
	export let id = '';
	export let type = 'text';
	export let value = '';
	export let placeholder = '';
	export let onInput;
</script>

<div>
	<label class="mb-4 block text-lg font-semibold text-gray-900" for={id}>{label}</label>
	<input
		{type}
		{id}
		bind:value
		{placeholder}
		class="block w-full rounded-lg border border-gray-300 bg-gray-50 py-2.5 text-lg text-gray-900 focus:border-black focus:ring-black"
		on:input={onInput}
	/>
</div>
