<template>
    <a :href="link"><button >{{text}}</button></a>
</template>

<script>
    export default {
        name: 'CTAButton',
        props: {
            text: String,
            link: String,
        },
    }
</script>

<style scoped>

    button {
        width: fit-content;
        padding: 7px;
        border-radius: 10px;
        box-shadow: 2px 2px 4px 2px rgba(0, 0, 0, 0.412);
        margin: 10px;
        background: #FFFAA1;
        border: 4px outset #e0dc8e;
        font-weight: bold;
        font-family: 'juice', sans-serif;
        font-size: 2em;
    }

    button:active {
        background: #e0dc8e;
        border: 4px inset #e0dc8e;
    }

    button:hover {
        cursor: pointer;
        background-color: #fffdd2;
    }

</style>