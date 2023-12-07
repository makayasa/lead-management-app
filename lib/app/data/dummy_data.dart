class DummyData {
  final dummySellers = [
    {
      "seller_name": "Mega Gadgets",
      "phone_number": "08123456789",
      "address": {"province": "DKI Jakarta", "district": "Jakarta Pusat", "sub_district": "Gambir", "full_address": "Jl. Raya Gambir No. 123"}
    },
    {
      "seller_name": "Best Electronics",
      "phone_number": "08234567890",
      "address": {"province": "Jawa Barat", "district": "Depok", "sub_district": "Depok Timur", "full_address": "Jl. Raya Depok Timur No. 45"}
    },
    {
      "seller_name": "SuperMart Tech",
      "phone_number": "08123456123",
      "address": {"province": "Jawa Barat", "district": "Bandung", "sub_district": "Cimahi", "full_address": "Jl. Raya Cimahi No. 67"}
    },
    {
      "seller_name": "Digital Haven",
      "phone_number": "08234567234",
      "address": {"province": "DKI Jakarta", "district": "Jakarta Selatan", "sub_district": "Kebayoran Baru", "full_address": "Jl. Raya Kebayoran Baru No. 89"}
    },
    {
      "seller_name": "Gizmo Galaxy",
      "phone_number": "08123457345",
      "address": {"province": "Jawa Barat", "district": "Bekasi", "sub_district": "Bekasi Utara", "full_address": "Jl. Raya Bekasi Utara No. 101"}
    },
    {
      "seller_name": "Smart Solutions",
      "phone_number": "08234568456",
      "address": {"province": "DKI Jakarta", "district": "Jakarta Barat", "sub_district": "Tambora", "full_address": "Jl. Raya Tambora No. 112"}
    },
    {
      "seller_name": "Tech Trends",
      "phone_number": "08123459567",
      "address": {"province": "Banten", "district": "Tangerang", "sub_district": "Tangerang Selatan", "full_address": "Jl. Raya Tangerang Selatan No. 123"}
    },
    {
      "seller_name": "Future Devices",
      "phone_number": "08234560678",
      "address": {"province": "Jawa Barat", "district": "Bogor", "sub_district": "Bogor Timur", "full_address": "Jl. Raya Bogor Timur No. 134"}
    },
    {
      "seller_name": "Epic Electronics",
      "phone_number": "08123451789",
      "address": {"province": "Banten", "district": "Tangerang", "sub_district": "Tangerang Utara", "full_address": "Jl. Raya Tangerang Utara No. 145"}
    },
    {
      "seller_name": "Innovate Hub",
      "phone_number": "08234562890",
      "address": {"province": "DKI Jakarta", "district": "Jakarta Timur", "sub_district": "Cakung", "full_address": "Jl. Raya Cakung No. 156"}
    }
  ];

  final dataDummyProvinsi = [
    {"id": 1, "name": "DKI Jakarta"},
    {"id": 2, "name": "Jawa Barat"},
    {"id": 3, "name": "Banten"},
  ];

  final dataDummyDistrict = [
    {"province_id": 1, "id": 1, "name": "Jakarta Pusat"},
    {"province_id": 1, "id": 2, "name": "Jakarta Utara"},
    {"province_id": 1, "id": 6, "name": "Jakarta Selatan"},
    {"province_id": 1, "id": 7, "name": "Jakarta Timur"},
    {"province_id": 1, "id": 8, "name": "Jakarta Barat"},
    // {"province_id": 1, "id": 9, "name": "Jakarta Selatan"},
    // {"province_id": 1, "id": 10, "name": "Jakarta Pusat"},
    
    {"province_id": 2, "id": 4, "name": "Depok"},
    {"province_id": 2, "id": 3, "name": "Bogor"},
    {"province_id": 2, "id": 11, "name": "Bogor Barat"},
    {"province_id": 2, "id": 12, "name": "Bogor Selatan"},
    {"province_id": 2, "id": 13, "name": "Bogor Utara"},
    {"province_id": 2, "id": 14, "name": "Bogor Timur"},
    {"province_id": 2, "id": 15, "name": "Bogor Tenggara"},
    
    {"province_id": 3, "id": 5, "name": "Tangerang"},
    {"province_id": 3, "id": 16, "name": "Tangerang Barat"},
    {"province_id": 3, "id": 17, "name": "Tangerang Timur"},
    {"province_id": 3, "id": 18, "name": "Tangerang Selatan"},
    {"province_id": 3, "id": 19, "name": "Tangerang Utara"},
    {"province_id": 3, "id": 20, "name": "Tangerang Kota"}


  ];

  final dataDummySubD = [
    {"province_id": 1, "district_id": 1, "id": 1, "name": "Gambir"},
    {"province_id": 1, "district_id": 1, "id": 2, "name": "Sawah Besar"},
    {"province_id": 1, "district_id": 2, "id": 5, "name": "Tanah Abang"},
    {"province_id": 2, "district_id": 3, "id": 9, "name": "Bogor Tengah"},
    {"province_id": 2, "district_id": 4, "id": 13, "name": "Depok Timur"},
    {"province_id": 3, "district_id": 5, "id": 17, "name": "Tangerang Selatan"},

    {"province_id": 1, "district_id": 6, "id": 21, "name": "Kebayoran Baru"},
    {"province_id": 1, "district_id": 6, "id": 22, "name": "Kebayoran Lama"},
    {"province_id": 1, "district_id": 6, "id": 23, "name": "Pesanggrahan"},
    {"province_id": 1, "district_id": 7, "id": 24, "name": "Cakung"},
    {"province_id": 1, "district_id": 7, "id": 25, "name": "Pulo Gadung"},
    {"province_id": 1, "district_id": 7, "id": 26, "name": "Matraman"},
    {"province_id": 1, "district_id": 8, "id": 27, "name": "Taman Sari"},
    {"province_id": 1, "district_id": 8, "id": 28, "name": "Tambora"},
    {"province_id": 1, "district_id": 8, "id": 29, "name": "Grogol Petamburan"},
    {"province_id": 1, "district_id": 6, "id": 30, "name": "Menteng"},
    {"province_id": 1, "district_id": 6, "id": 31, "name": "Senen"},
    {"province_id": 1, "district_id": 6, "id": 32, "name": "Johar Baru"},
    {"province_id": 1, "district_id": 1, "id": 33, "name": "Sawah Besar"},
    {"province_id": 1, "district_id": 1, "id": 34, "name": "Kemayoran"},
    {"province_id": 1, "district_id": 1, "id": 35, "name": "Cempaka Putih"},
    
    {"province_id": 2, "district_id": 11, "id": 36, "name": "Ciawi"},
    {"province_id": 2, "district_id": 11, "id": 37, "name": "Citeureup"},
    {"province_id": 2, "district_id": 11, "id": 38, "name": "Megamendung"},
    {"province_id": 2, "district_id": 12, "id": 39, "name": "Cibinong"},
    {"province_id": 2, "district_id": 12, "id": 40, "name": "Gunung Putri"},
    {"province_id": 2, "district_id": 12, "id": 41, "name": "Citeureup"},
    {"province_id": 2, "district_id": 13, "id": 42, "name": "Bogor Selatan"},
    {"province_id": 2, "district_id": 13, "id": 43, "name": "Bogor Timur"},
    {"province_id": 2, "district_id": 13, "id": 44, "name": "Bogor Utara"},
    {"province_id": 2, "district_id": 14, "id": 45, "name": "Bogor Barat"},
    {"province_id": 2, "district_id": 14, "id": 46, "name": "Bogor Tenggara"},
    {"province_id": 2, "district_id": 14, "id": 47, "name": "Bogor Kota"},
    {"province_id": 2, "district_id": 15, "id": 48, "name": "Cileungsi"},
    {"province_id": 2, "district_id": 15, "id": 49, "name": "Gunung Putri"},
    {"province_id": 2, "district_id": 15, "id": 50, "name": "Gunung Sindur"},
    
    {"province_id": 3, "district_id": 16, "id": 51, "name": "Ciledug"},
    {"province_id": 3, "district_id": 16, "id": 52, "name": "Larangan"},
    {"province_id": 3, "district_id": 16, "id": 53, "name": "Karang Tengah"},
    {"province_id": 3, "district_id": 17, "id": 54, "name": "Pondok Aren"},
    {"province_id": 3, "district_id": 17, "id": 55, "name": "Serpong"},
    {"province_id": 3, "district_id": 17, "id": 56, "name": "Ciputat"},
    {"province_id": 3, "district_id": 18, "id": 57, "name": "Tangerang Selatan"},
    {"province_id": 3, "district_id": 18, "id": 58, "name": "Pamulang"},
    {"province_id": 3, "district_id": 18, "id": 59, "name": "Serpong Utara"},
    {"province_id": 3, "district_id": 19, "id": 60, "name": "Tangerang Utara"},
    {"province_id": 3, "district_id": 19, "id": 61, "name": "Kelapa Dua"},
    {"province_id": 3, "district_id": 19, "id": 62, "name": "Pakuhaji"},
    {"province_id": 3, "district_id": 20, "id": 63, "name": "Tangerang Kota"},
    {"province_id": 3, "district_id": 20, "id": 64, "name": "Cibodas"},
    {"province_id": 3, "district_id": 20, "id": 65, "name": "Karawaci"}
  ];
}
