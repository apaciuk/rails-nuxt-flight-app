<template>
  <div class="container mt-5">
    <h1 class="font-bold">Create Flight</h1>
    <button class="btn btn-success">Create Flight</button>
  </div>
</template>

<script>
async function addFlight( data ) {
    let formData = new FormData();
    formData.append( 'name', data.name, image_url, data.image_url, description, data.description, price, data.price, date, data.date, time, data.time, duration, data.duration, from, data.from, to, data.to, airline, data.airline, flight_number, data.flight_number, aircraft, data.aircraft, seats, data.seats, available_seats, data.available_seats, user_id, data.user_id, created_at, data.created_at, updated_at, data.updated_at );
    await $fetch( '/api/v1/flights', {
        method: 'POST',
        body: data
    } );
}

</script>
