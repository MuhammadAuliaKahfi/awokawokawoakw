module.exports = {
    users: {
        create: {
            name: {
                required: true,
                message: 'Nama tidak boleh kosong'
            },
            email: {
                required: true,
                type: 'email',
                message: 'Email tidak terdaftar'
            },
            phone: {
                required: true,
                len: 11,
                message: 'Nomor tidak terdaftar'
            },
            password: {
                required: true,
                min: 4,
                message: 'Password salah'
            },
            address: {
                required: true,
                message: 'Alamat tidak valid'
            },
            gender: {
                required: true,
                message: 'Harus memilih jenis kelamin'
            }
        },
        update: {
            name: {
                required: true,
                message: 'Nama tidak boleh kosong'
            },
            email: {
                required: true,
                type: 'email',
                message: 'Email tidak terdaftar'
            },
            phone: {
                required: true,
                len: 11,
                message: 'Nomor tidak terdaftar'
            },
            address: {
                required: true,
                message: 'Alamat tidak valid'
            },
            gender: {
                required: true,
                message: 'Harus memilih jenis kelamin'
            }
        },
        login: {
            email: {
                required: true,
                type: 'email',
                message: 'Email tidak terdaftar'
            },
            password: {
                required: true,
                message: 'Password tidak boleh kosong'
            }
        },
        changePassword: {
            oldPassword: {
                required: true,
                min: 4,
                message: 'Password lama salah'
            },
            newPassword: {
                required: true,
                min: 4,
                message: 'Password baru salah'
            },
            confirmPassword: {
                required: true,
                min: 4,
                message: 'konfirmasi password salah'
            }
        }
    },

    books: {
        create: {
            genre: {
                required: true,
                message: 'Genre tidak boleh kosong'
            },
            title: {
                required: true,
                message: 'Title tidak boleh kosong'
            },
            publisher: {
                required: true,
                message: 'Publisher tidak boleh kosong'
            },
            author: {
                required: true,
                message: 'Author tidak boleh kosong'
            },
            edition: {
                required: true,
                message: 'Edisi tidak ditemukan'
            },
            isbn: {
                required: true,
                message: 'ISBN tidak boleh kosong'
            },
            pages: {
                required: true,
                message: 'Halaman Tidak ditemukan'
            }
        },
        request: {
            genre: {
                required: true,
                message: 'Genre tidak boleh kosong'
            },
            title: {
                required: true,
                message: 'Title tidak boleh kosong'
            },
            author: {
                required: true,
                message: 'Author tidak boleh kosong'
            },
            edition: {
                required: true,
                message: 'Edisi tidak ditemukan'
            },
            isbn: {
                required: true,
                message: 'ISBN tidak boleh kosong'
            }
        }
    }
};
