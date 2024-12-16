
Program grosir;

Uses crt;

Type 
          TBarang =         Record
                    Kode:         string[10];
                    Nama:         string[50];
                    Jumlah:         integer;
                    Harga:         real;
          End;

Var 
          Barang:         array[1..100] Of TBarang;
          JumlahBarang:         integer;

Procedure TambahBarang;

Var 
          i:         integer;
          lagi:         char;
Begin
          Repeat
                    i := JumlahBarang + 1;
                    writeln();
                    write('Masukkan Nama Barang: ');
                    readln(Barang[i].Nama);
                   
                    write('Masukkan Jumlah Barang: ');
                    readln(Barang[i].Jumlah);
                    
                    write('Masukkan Harga Barang: ');
                    readln(Barang[i].Harga);
                    JumlahBarang := JumlahBarang + 1;
                    writeln();
                    write('Ingin memasukkan barang lagi? (y/n): ');
                    readln(lagi);
                    writeln()
          Until (lagi <> 'y') And (lagi <> 'Y');
End;

Procedure TampilkanBarang;

Var 
          i:         integer;
Begin
        writeln();
          writeln('Data Barang:');
          For i := 1 To JumlahBarang Do
                    Begin
                              
                              writeln('Nama: ', Barang[i].Nama);
                              writeln('Jumlah: ', Barang[i].Jumlah);
                              writeln('Harga: ', Barang[i].Harga:0:2);
                              writeln('----------------------');
                              writeln();
                    End;
End;

Procedure Menu;

Var 
          Pilihan:         integer;
Begin
          Repeat
                    writeln('Menu:');
                    writeln('1. Tambah Barang');
                    writeln('2. Tampilkan Barang');
                    writeln('3. Keluar');
                    write('Pilih menu: ');
                    readln(Pilihan);
                    Case Pilihan Of 
                              1:         TambahBarang;
                              2:         TampilkanBarang;
                              3:         writeln('Keluar dari program.');
                              Else
                                        writeln('Pilihan tidak valid.');
                    End;
          Until Pilihan = 3;
End;

Begin
          clrscr;
          JumlahBarang := 0;
          Menu;
End.
