# Indonesian 

File | JSON | CSV | XML | MySQL | PostgreSQL
:------ |:----- |:----- |:----- |:----- | :-----| 
Provinces| :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark:
Regencies| :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: | 
Provinces + Regencies| NA | NA | NA | :white_check_mark: | :white_check_mark:

# Run 
Installation and Running 
```
make build
make up
```

## Exec Container
```
docker exec -i image_name mysql -u db_user -p
```

## Migrate (Temp)
```
sudo docker exec image_name mysql -u db_user -p db_pass db_name < ./mysql/provinces_regencies_dump.sql
```

## Reference 
- [Provinsi Indonesia](https://www.detik.com/edu/detikpedia/d-6693208/berapa-jumlah-provinsi-di-indonesia-ini-data-terbaru-di-2023#:~:text=ini%20yuk%20detikers.-,Jumlah%20Provinsi%20di%20Indonesia%20per%202023,dan%20Provinsi%20Papua%20Barat%20Daya.)
- [Kabupaten Indonesia](https://id.wikipedia.org/wiki/Daftar_kabupaten_di_Indonesia)
- [Kota Indonesia](https://id.wikipedia.org/wiki/Daftar_kota_di_Indonesia_menurut_provinsi)