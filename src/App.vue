<template>
    <main class="flex flex-col items-center justify-center text-white">
        <Suspense> <data-table /> </Suspense>
    </main>
</template>

<script lang="ts">
import DataTable from './components/data-table';

export default {
    name: 'Home',
    components: {
        DataTable,
    },
};
</script>
