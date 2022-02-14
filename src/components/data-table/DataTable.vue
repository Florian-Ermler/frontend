<template>
    <main>
        <div class="flex flex-col mt-28 justify-center items-start drop-shadow-2xl border-2 rounded">
            <div v-for="wine in data.data" :key="wine.id">
                <data-row
                    :id="wine.id"
                    :sweetness="wine.sweetness"
                    :origin="wine.origin"
                    :fermentation_container="wine.fermentation_container"
                    :grape_variety="wine.grape_variety"
                    :stored_since="wine.stored_since"
                />
            </div>
        </div>
    </main>
</template>

<script lang="ts">
import { defineComponent, ref } from '@vue/runtime-core';
import DataRow from '../data-row';

export default defineComponent({
    name: 'Home',
    components: {
        DataRow,
    },
    async setup() {
        const data = ref();
        try {
            const res = await fetch('https://directus.ermler.dev/items/wine/');
            data.value = await res.json();
        } catch (e) {
            console.log(e);
        }
        return {
            data,
        };
    },
});
</script>
