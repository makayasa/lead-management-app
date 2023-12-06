class DummyData {
  final dummySellers = [
    {
      "seller_name": "Toko A",
      "phone_number": "08123456789",
      "address": {"province": "DKI Jakarta", "district": "Jakarta Barat", "sub_district": "Kebon Jeruk", "full_address": "Jl. Raya Kebon Jeruk No. 123"}
    },
    {
      "seller_name": "Toko B",
      "phone_number": "08567890123",
      "address": {"province": "Banten", "district": "Tangerang", "sub_district": "Ciledug", "full_address": "Jl. Ciledug Raya No. 45"}
    },
    {
      "seller_name": "Toko C",
      "phone_number": "08765432100",
      "address": {"province": "Jawa Barat", "district": "Bekasi", "sub_district": "Bekasi Selatan", "full_address": "Jl. Ahmad Yani No. 78"}
    },
    {
      "seller_name": "Toko D",
      "phone_number": "08111222333",
      "address": {"province": "DKI Jakarta", "district": "Jakarta Timur", "sub_district": "Cakung", "full_address": "Jl. Cakung Cilincing No. 56"}
    },
    {
      "seller_name": "Toko E",
      "phone_number": "08987654321",
      "address": {"province": "Jawa Barat", "district": "Depok", "sub_district": "Sawangan", "full_address": "Jl. Sawangan Indah No. 34"}
    },
    {
      "seller_name": "Toko Panjang Lorem Ipsum Dolor Sit amet",
      "phone_number": "08987654321",
      "address": {
        "province": "Jawa Barat",
        "district": "Depok",
        "sub_district": "Sawangan",
        "full_address":
            "Jl. Sawangan Indah No. 34 Jl. Sawangan Indah No. 34 Jl. Sawangan Indah No. 34 Jl. Sawangan Indah No. 34 Jl. Sawangan Indah No. 34 Jl. Sawangan Indah No. 34",
      }
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
    {"province_id": 2, "id": 3, "name": "Bogor"},
    {"province_id": 2, "id": 4, "name": "Depok"},
    {"province_id": 3, "id": 5, "name": "Tangerang"}
  ];

  final dataDummySubD = [
    {"province_id": 1, "district_id": 1, "id": 1, "name": "Gambir"},
    {"province_id": 1, "district_id": 1, "id": 2, "name": "Sawah Besar"},
    {"province_id": 1, "district_id": 2, "id": 5, "name": "Tanah Abang"},
    {"province_id": 2, "district_id": 3, "id": 9, "name": "Bogor Tengah"},
    {"province_id": 2, "district_id": 4, "id": 13, "name": "Depok Timur"},
    {"province_id": 3, "district_id": 5, "id": 17, "name": "Tangerang Selatan"}
    // ... Data untuk subdistrict lainnya
  ];
}
