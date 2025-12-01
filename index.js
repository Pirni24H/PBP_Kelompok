const mahasiswaNim = '2024004008';

const updatedData = {
    nama: 'Ronaldo',
    gender: 'L',
    prodi: 'TE',
    alamat: 'Jl. Cibolang Kaler'
};

fetch(`http://localhost:3000/mahasiswa/${mahasiswaNim}`, {
    method: 'PUT',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(updatedData)
})
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));

    const mahasiswanim = '2024004017'; // NIM yang ingin dihapus

fetch(`http://localhost:3000/mahasiswa/${mahasiswanim}`, {
    method: 'DELETE',
    headers: {
        'Content-Type': 'application/json'
    }
})
    .then(response => response.json())
    .then(data => console.log('Response:', data))
    .catch(error => console.error('Error:', error));

const newData = {
    nim: '2024004999',
    nama: 'Dewi Purnama',
    gender: 'P',
    alamat: 'Cisaat',
    prodi: 'TI'
};

fetch('http://localhost:3000/mahasiswa', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(newData)
})
    .then(response => response.json())
    .then(data => console.log('Response:', data))
    .catch(error => console.error('Error:', error));


