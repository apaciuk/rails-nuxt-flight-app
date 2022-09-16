<template>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background: linear-gradient(112.1deg, rgb(32, 38, 57) 11.4%, rgb(63, 76, 119) 70.2%);">
  <div class="container-fluid">
    <strong><nuxt-link to="/" class="nav-link text-white">Flights</nuxt-link></strong>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <nuxt-link to="/list" class="nav-link mx-2">List</nuxt-link>
        </li>
        <li class="nav-item">
          <nuxt-link to="/create" class="nav-link mx-2">Create</nuxt-link>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-info" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</template>
    
    
