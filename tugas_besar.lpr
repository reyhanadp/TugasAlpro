program tugas_besar;

uses
  crt;

const
  username = 'reyhan';
  password = 'audian';
  maks = 100;

type
  TSarray = array of string;

  tipe_dvd = record
    judul_dvd: string;
    genre: string;
    tahun: string;
    subtitle: string;
    stock: string;
  end;

var
  i: integer;
  x: integer;


  function Split(Texto, Delimitador: string): TSarray;

  var
    o: integer;
    PosDel: integer;
    Aux: string;

  begin

    o := 0;
    Aux := Texto;
    SetLength(Result, Length(Aux));

    repeat

      PosDel := Pos(Delimitador, Aux) - 1;

      if PosDel = -1 then
      begin
        Result[o] := Aux;
        break;
      end;

      Result[o] := copy(Aux, 1, PosDel);
      Delete(Aux, 1, PosDel + Length(Delimitador));
      Inc(o);
    until Aux = '';
  end;

  procedure login();
  var
    user, pass, ch: string;
  begin
    for i := 1 to 3 do
    begin
      pass := '';
      gotoxy(43, 7);
      writeln('|=================================|');
      Delay(200);
      gotoxy(43, 8);
      writeln('|              LOGIN              |');
      Delay(200);
      gotoxy(43, 9);
      writeln('|=================================|');
      Delay(200);
      gotoxy(43, 10);
      writeln('|Silakan Masukan User dan Password|');
      Delay(200);
      gotoxy(43, 11);
      writeln('|---------------------------------|');
      Delay(200);
      gotoxy(43, 12);
      writeln('|                                 |');
      Delay(200);
      gotoxy(43, 13);
      writeln('|                                 |');
      Delay(200);
      gotoxy(43, 14);
      writeln('|                                 |');
      Delay(200);
      gotoxy(43, 15);
      writeln('|                                 |');
      Delay(200);
      gotoxy(43, 16);
      writeln('|=================================|');
      Delay(200);
      gotoxy(44, 12);
      Write(' Username : ');
      ReadLn(user);
      gotoxy(44, 14);
      Write(' Password  : ');
      repeat
        ch := readkey;
        if (ch <> ^M) then
        begin
          pass := pass + ch;
          Write('*');
        end;
      until (ch = ^M);

      x := 0;
      if (password = pass) and (username = user) then
      begin
        X := 1;
        Break;
        //break;
      end
      else
      if (password <> pass) and (username <> user) then
      begin
        X := 0;
        textcolor(red);
        gotoxy(38, 17);
        writeln('Username dan Password yang anda masukan salah');
        readln;
      end
      else
      if (password <> pass) and (username = user) then
      begin
        X := 0;
        textcolor(red);
        gotoxy(38, 17);
        writeln('Username benar dan Password yang anda masukan salah');
        readln;
      end
      else
      if (password = pass) and (username <> user) then
      begin
        X := 0;
        textcolor(red);
        gotoxy(38, 17);
        writeln('Username yang anda masukan salah dan Password benar');
        readln;
      end;
      clrscr;
    end;

    clrscr;
    if x = 0 then
    begin
      textcolor(red);
      gotoxy(31, 11);
      writeln('=======================================================');
      gotoxy(31, 12);
      writeln('|     Kesalahan anda Lebih dari 3X,Close Program      |');
      gotoxy(31, 13);
      writeln('=======================================================');
    end;

  end;

  procedure menu_data_dvd; forward;

  procedure input_data_dvd();
  var
    judul_film: string;
    genre: string;
    tahun: string;
    subtitle: string;
    stock: string;
    ulang: string;
    infile: Text;
  begin
    ClrScr;
    repeat
      Assign(infile,
        'C:\Users\reyha\OneDrive\Desktop\tugas_besar_alpro_ulang\data_dvd.txt');
      Append(infile);

      clrscr;
      gotoxy(1, 1);
      Write('++====================================================================================================================++');
      gotoxy(1, 2);
      Write('||                                                   ISI DATA DVD                                                     ||');
      gotoxy(1, 3);
      Write('++=========================================================================++=========================================++');
      gotoxy(1, 4);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 5);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 6);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 7);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 8);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 9);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 10);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 11);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 12);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 13);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 14);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 15);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 16);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 17);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 18);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 19);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 20);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 21);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 22);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 23);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 24);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 25);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 26);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 27);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 28);
      Write('||                                                                         ||                                         ||');
      gotoxy(1, 29);
      Write('++=========================================================================++=========================================++');

      gotoxy(4, 5);
      Write('Judul Film        : ');
      readln(judul_film);
      gotoxy(4, 6);
      Write('Genre             : ');
      readln(genre);
      gotoxy(4, 7);
      Write('Tahun Keluar Film : ');
      readln(tahun);
      gotoxy(4, 8);
      Write('Subtitle          : ');
      readln(subtitle);
      gotoxy(4, 9);
      Write('Stock             : ');
      readln(stock);

      writeln(infile, judul_film + ',' + genre + ',' + tahun + ',' +
        subtitle + ',' + stock);
      Close(infile);

      gotoxy(4, 11);
      Write('Apakah anda ingin memasukan data lagi?[Y/N] ');
      readln(ulang);
    until (ulang = 'N') or (ulang = 'n');
    menu_data_dvd();
  end;

  procedure tampil_data_dvd();
  var
    infile: Text;
    isi: string;
    all_array: TSarray;

  begin
    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||                                                     DATA DVD                                                       ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(1, 4);
    Write('||                         JUDUL                        |         GENRE         | TAHUN |      SUBTITLE       |  STOK ||');
    gotoxy(1, 5);
    Write('++====================================================================================================================++');
    Assign(infile,
      'C:\Users\reyha\OneDrive\Desktop\tugas_besar_alpro_ulang\data_dvd.txt');
    reset(infile);
    i := 0;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      gotoxy(1, 6 + i);
      Write('||                                                      |                       |       |                     |       ||');
      gotoxy(4, 6 + i);
      Write(all_array[0]);
      gotoxy(60, 6 + i);
      Write(all_array[1]);
      gotoxy(83, 6 + i);
      Write(all_array[2]);
      gotoxy(91, 6 + i);
      Write(all_array[3]);
      gotoxy(113, 6 + i);
      Write(all_array[4]);
      i := i + 1;
    end;
    Close(infile);
    gotoxy(1, 6 + i);
    Write('++====================================================================================================================++');
    gotoxy(1, 8 + i);
    Write('Tekan enter untuk kembali ke menu data dvd..');
    readln();
    menu_data_dvd;
  end;

  procedure hapus_data_dvd(posisi: integer);
  var
    infile: Text;
    isi: string;
    j: integer;
    k: integer;
    all_array: TSarray;
    data_dvd: array[1..maks] of tipe_dvd;
  begin
    Assign(infile, 'C:\Users\reyha\OneDrive\Desktop\tugas_besar_alpro_ulang\data_dvd.txt');
    Reset(infile);
    j := 1;
    k := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      if j <> posisi then
      begin
        data_dvd[k].judul_dvd := all_array[0];
        data_dvd[k].genre := all_array[1];
        data_dvd[k].tahun := all_array[2];
        data_dvd[k].subtitle := all_array[3];
        data_dvd[k].stock := all_array[4];
        k := k + 1;
      end;
      j := j + 1;
    end;
    Rewrite(infile);

    for i := 1 to k - 1 do
    begin
      writeln(infile, data_dvd[i].judul_dvd + ',' + data_dvd[i].genre +
        ',' + data_dvd[i].tahun + ',' + data_dvd[i].subtitle + ',' + data_dvd[i].stock);
    end;

    Close(infile);
    gotoxy(25, 11);
    writeln('=============================================================================');
    gotoxy(25, 12);
    writeln('|     Data Berhasil Dihapus, Tekan Enter Untuk Kembali ke Menu Data DVD     |');
    gotoxy(25, 13);
    writeln('=============================================================================');
    ReadLn;
    menu_data_dvd;
  end;

  procedure isi_ubah_dvd(judul, genre, tahun, subtitle, stock: string);
  var
    temp_dvd: tipe_dvd;
    data_dvd: array[1..maks] of tipe_dvd;
    infile: Text;
    isi: string;
    j: integer;
    k: integer;
    all_array: TSarray;
    yakin: string;
  begin
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||                                                  UBAH DATA DVD                                                     ||');
    gotoxy(1, 3);
    Write('++=========================================================++=========================================================++');
    gotoxy(1, 4);
    Write('||                                                         ||                                                         ||');
    gotoxy(1, 5);
    Write('||                          DATA LAMA                      ||                        DATA BARU                        ||');
    for i := 1 to 23 do
    begin
      gotoxy(1, 5 + i);
      Write(
        '||                                                         ||                                                         ||');
    end;
    gotoxy(1, 29);
    Write('++=========================================================================++=========================================++');
    gotoxy(4, 7);
    Write('JUDUL FILM : ', judul);
    gotoxy(4, 8);
    Write('GENRE      : ', genre);
    gotoxy(4, 9);
    Write('TAHUN      : ', tahun);
    gotoxy(4, 10);
    Write('SUBTITLE   : ', subtitle);

    gotoxy(63, 7);
    Write('JUDUL FILM : ');
    ReadLn(temp_dvd.judul_dvd);
    gotoxy(63, 8);
    Write('GENRE      : ');
    ReadLn(temp_dvd.genre);
    gotoxy(63, 9);
    Write('TAHUN      : ');
    ReadLn(temp_dvd.tahun);
    gotoxy(63, 10);
    Write('SUBTITLE   : ');
    ReadLn(temp_dvd.subtitle);
    temp_dvd.stock := stock;

    gotoxy(63, 11);
    Write('Apakah Anda Yakin Merubah Data DVD?[Y/N] ');
    ReadLn(yakin);

    if (yakin = 'n') or (yakin = 'N') then
    begin
      menu_data_dvd;
    end
    else
    begin

      Assign(infile, 'C:\Users\reyha\OneDrive\Desktop\tugas_besar_alpro_ulang\data_dvd.txt');
      Reset(infile);
      k := 1;
      while not EOF(infile) do
      begin
        readln(infile, isi);
        all_array := Split(isi, ',');
        if all_array[0] <> judul then
        begin
          data_dvd[k].judul_dvd := all_array[0];
          data_dvd[k].genre := all_array[1];
          data_dvd[k].tahun := all_array[2];
          data_dvd[k].subtitle := all_array[3];
          data_dvd[k].stock := all_array[4];
        end
        else
        begin
          data_dvd[k].judul_dvd := temp_dvd.judul_dvd;
          data_dvd[k].genre := temp_dvd.genre;
          data_dvd[k].tahun := temp_dvd.tahun;
          data_dvd[k].subtitle := temp_dvd.subtitle;
          data_dvd[k].stock := temp_dvd.stock;
        end;
        k := k + 1;
      end;
      Rewrite(infile);

      for i := 1 to k - 1 do
      begin
        writeln(infile, data_dvd[i].judul_dvd + ',' + data_dvd[i].genre +
          ',' + data_dvd[i].tahun + ',' + data_dvd[i].subtitle + ',' +
          data_dvd[i].stock);
      end;

      Close(infile);
      ClrScr;
      gotoxy(25, 11);
      writeln('=============================================================================');
      gotoxy(25, 12);
      writeln('|     Data Berhasil Diubah , Tekan Enter Untuk Kembali ke Menu Data DVD     |');
      gotoxy(25, 13);
      writeln('=============================================================================');
      ReadLn;
      menu_data_dvd;

    end;
  end;

  procedure ubah_data_dvd;
  var
    judul_cari: string;
    infile: Text;
    isi: string;
    all_array: TSarray;
    z: integer;
    ulang: string;
    pilihan: integer;
    j: integer;
  begin
    ClrScr;
    z := 0;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||  Masukan judul DVD :                                                                                               ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(25, 2);
    readln(judul_cari);
    Write('++====================================================================================================================++');
    Assign(infile,
      'C:\Users\reyha\OneDrive\Desktop\tugas_besar_alpro_ulang\data_dvd.txt');
    reset(infile);
    j := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      if all_array[0] = judul_cari then
      begin
        z := 1;
        Break;
      end;
      j := j + 1;
    end;
    Close(infile);
    if z = 1 then
    begin
      ClrScr;
      gotoxy(1, 1);
      Write('++====================================================================================================================++');
      gotoxy(1, 2);
      Write('||                                            DATA DVD DITEMUKAN                                                      ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(1, 4);
      Write('||                                                                                                                    ||');
      gotoxy(1, 5);
      Write('|| JUDUL :                                                                                                            ||');
      gotoxy(12, 5);
      Write(all_array[0]);
      gotoxy(1, 6);
      Write('|| GENRE :                                                                                                            ||');
      gotoxy(12, 6);
      Write(all_array[1]);
      gotoxy(1, 7);
      Write('|| TAHUN :                                                                                                            ||');
      gotoxy(12, 7);
      Write(all_array[2]);
      gotoxy(1, 8);
      Write('|| SUBTITLE :                                                                                                         ||');
      gotoxy(15, 8);
      Write(all_array[3]);
      gotoxy(1, 9);
      Write('|| STOCK :                                                                                                            ||');
      gotoxy(12, 9);
      Write(all_array[4]);
      gotoxy(1, 10);
      Write('||                                                                                                                    ||');
      gotoxy(1, 11);
      Write('|| ++====================================================++                                                           ||');
      gotoxy(1, 12);
      Write('|| ||          Pilih ubah atau hapus data DVD            ||                                                           ||');
      gotoxy(1, 13);
      Write('|| ++====================================================++                                                           ||');
      gotoxy(1, 14);
      Write('|| ||   1. Hapus Data DVD                                ||                                                           ||');
      gotoxy(1, 15);
      Write('|| ||   2. Ubah Data DVD                                 ||                                                           ||');
      gotoxy(1, 16);
      Write('|| ||   3. Kembali Ke Menu Data DVD                      ||                                                           ||');
      gotoxy(1, 17);
      Write('|| ++====================================================++                                                           ||');
      gotoxy(1, 18);
      Write('|| ||   Pilihan Anda :                                   ||                                                           ||');
      gotoxy(1, 19);
      Write('|| ++====================================================++                                                           ||');
      for i := 1 to 9 do
      begin
        gotoxy(1, 19 + i);
        Write(
          '||                                                                                                                    ||');
      end;
      gotoxy(1, 29);
      Write('++====================================================================================================================++');
      gotoxy(25, 18);
      ReadLn(pilihan);
      if pilihan = 1 then
      begin
        ClrScr;
        hapus_data_dvd(j);
      end
      else
      if pilihan = 2 then
      begin
        ClrScr;
        isi_ubah_dvd(all_array[0], all_array[1], all_array[2],
          all_array[3], all_array[4]);
      end
      else
      begin
        ClrScr;
        menu_data_dvd;
      end;
    end
    else
    begin
      gotoxy(1, 5);
      Write('Data tidak ditemukan !!, apakah Anda ingin melakukan pencarian judul lagi? [Y/N]');
      readln(ulang);
      if (ulang = 'Y') or (ulang = 'y') then
      begin
        ubah_data_dvd;
      end
      else
      begin
        menu_data_dvd;
      end;

    end;
  end;

  procedure cari_data_dvd();
  var
    pilihan: integer;
    cari: string;
    temp_dvd: tipe_dvd;
    data_dvd: array[1..maks] of tipe_dvd;
    infile: Text;
    isi: string;
    j: integer;
    //k: integer;
    all_array: TSarray;
  begin
    ClrScr;
    gotoxy(35, 3);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 4);
    writeln('|            Cari Data Berdasarkan         |');
    Delay(200);
    gotoxy(35, 5);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 6);
    writeln('|  1. Judul Film                           |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Genre Film                           |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. Tahun Keluar Film                     |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  4. Subtitle                             |');
    Delay(200);
    gotoxy(35, 10);
    writeln('|  0. Kembali Ke Menu Data DVD             |');
    Delay(200);
    gotoxy(35, 11);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 12);
    writeln('|  Pilihan Anda :                          |');
    Delay(200);
    gotoxy(35, 13);
    writeln('============================================');
    gotoxy(53, 12);
    ReadLn(pilihan);
    if pilihan = 0 then
    begin
      menu_data_dvd;
    end;

    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    if pilihan = 1 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Judul Film :                                                                                              ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(26, 2);
      readln(cari);
    end
    else
    if pilihan = 2 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Genre :                                                                                                   ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(21, 2);
      readln(cari);
    end
    else
    if pilihan = 3 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Tahun Keluar Film :                                                                                       ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(33, 2);
      readln(cari);
    end
    else
    if pilihan = 4 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Subtitle :                                                                                                ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(24, 2);
      readln(cari);
    end;

    Assign(infile,
      'data_dvd.txt');
    reset(infile);
    j := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');

      if all_array[pilihan - 1] = cari then
      begin
        data_dvd[j].judul_dvd := all_array[0];
        data_dvd[j].genre := all_array[1];
        data_dvd[j].tahun := all_array[2];
        data_dvd[j].subtitle := all_array[3];
        data_dvd[j].stock := all_array[4];
        j := j + 1;
      end;

    end;
    Close(infile);
    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||                                              HASIL CARI DATA DVD                                                   ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(1, 4);
    Write('||                         JUDUL                        |         GENRE         | TAHUN |      SUBTITLE       |  STOK ||');
    gotoxy(1, 5);
    Write('++====================================================================================================================++');

    if j = 1 then
    begin
      gotoxy(1, 5 + j);
      Write('||                                           DATA TIDAK DITEMUKAN                                                     ||');
      gotoxy(1, 6 + j);
      Write('++====================================================================================================================++');
      gotoxy(1, 8 + j);
      Write('Tekan enter untuk kembali ke menu data dvd..');
      readln();
      menu_data_dvd;
    end
    else
    begin

      for i := 1 to j - 1 do
      begin
        gotoxy(1, 5 + i);
        Write('||                                                      |                       |       |                     |       ||');
        gotoxy(4, 5 + i);
        Write(data_dvd[i].judul_dvd);
        gotoxy(60, 5 + i);
        Write(data_dvd[i].genre);
        gotoxy(83, 5 + i);
        Write(data_dvd[i].tahun);
        gotoxy(91, 5 + i);
        Write(data_dvd[i].subtitle);
        gotoxy(113, 5 + i);
        Write(data_dvd[i].stock);
      end;
      gotoxy(1, 6 + i);
      Write('++====================================================================================================================++');
      gotoxy(1, 8 + i);
      Write('Tekan enter untuk kembali ke menu data dvd..');
      readln();
      menu_data_dvd;
    end;
  end;

  procedure menu_utama(); forward;

  procedure menu_data_dvd();
  var
    pilihan: integer;
  begin
    ClrScr;
    gotoxy(35, 3);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 4);
    writeln('|               MENU DATA DVD              |');
    Delay(200);
    gotoxy(35, 5);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 6);
    writeln('|  1. Input Data DVD                       |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Tampil Data DVD                      |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. Ubah Atau Hapus Data DVD             |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  4. Cari Data DVD                        |');
    Delay(200);
    gotoxy(35, 10);
    writeln('|  0. Kembali Ke Menu Utama                |');
    Delay(200);
    gotoxy(35, 11);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 12);
    writeln('|                                          |');
    Delay(200);
    gotoxy(35, 13);
    writeln('============================================');
    Delay(200);
    gotoxy(39, 12);
    Write('Pilihan Anda : ');
    readln(pilihan);
    if pilihan = 1 then
    begin
      input_data_dvd();
    end
    else
    if pilihan = 2 then
    begin
      tampil_data_dvd();
    end
    else
    if pilihan = 3 then
    begin
      ubah_data_dvd;
    end
    else
    if pilihan = 4 then
    begin
      cari_data_dvd();
    end
    else
    begin
      ClrScr;
      menu_utama();
    end;

  end;

  procedure menu_utama();
  var
    pilihan: integer;
  begin
    gotoxy(35, 2);
    writeln('             Selamat Datang ', username);
    Delay(200);
    gotoxy(35, 3);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 4);
    writeln('|               MENU PILIHAN               |');
    Delay(200);
    gotoxy(35, 5);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 6);
    writeln('|  1. Data DVD                             |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Data Member                          |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. Transaksi Penjualan DVD              |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  4. Logout                               |');
    Delay(200);
    gotoxy(35, 10);
    writeln('|  0. Exit                                 |');
    Delay(200);
    gotoxy(35, 11);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 12);
    writeln('|                                          |');
    Delay(200);
    gotoxy(35, 13);
    writeln('============================================');
    Delay(200);
    gotoxy(38, 12);
    Write('Pilihan Anda : ');
    ReadLn(pilihan);

    if pilihan = 1 then
    begin
      textcolor(white);
      TextBackground(blue);
      clrscr;
      menu_data_dvd();
    end
    else
    if pilihan = 2 then
    begin

    end
    else
    if pilihan = 3 then
    begin

    end;

  end;



begin
  //clrscr;
  window(1, 1, 120, 30);
  textcolor(black);
  TextBackground(white);
  clrscr;
  //for i := 1 to 100 do
  //begin
  //  gotoxy(49, 9);
  //  writeln('   Please Wait');
  //  gotoxy(49, 10);
  //  writeln('Loading . . . ', i, '%');
  //  Delay(50);
  //  clrscr;
  //end;

  //login();
  clrscr();
  x := 1;
  if x = 1 then
  begin
    //ubah_data_dvd;
    //tampil_data_dvd();
    //input_data_dvd();
    //menu_utama();
    //menu_data_dvd();
    cari_data_dvd();
  end;

  readln();
end.
