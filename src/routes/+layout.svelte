<script>
    import Footer from "../components/shared/Footer.svelte";
    import Navbar from "../components/shared/Navbar.svelte";

</script>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title> blog.asvang.no </title>

    </head>

    <body>
        <Navbar /> 

        <slot></slot>

    </body>

    <Footer />
</html>