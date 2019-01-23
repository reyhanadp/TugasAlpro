program tugas_besar;

uses
  crt,
  SysUtils;

const
  username = 'admin';
  password = 'admin';
  maks = 100;

type
  TSarray = array of string;

  tipe_dvd = record
    judul_dvd: string;
    genre: string;
    tahun: string;
    subtitle: string;
    stock: string;
    jumlah: integer;
  end;

  tipe_member = record
    id_member: string;
    nama: string;
    tgl_lahir: string;
    alamat: string;
  end;

  tipe_trans = record
    id_trans: string;
    judul: string;
    id_member: string;
    tanggal: string;
    jumlah: string;
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

  procedure menu_data_member(); forward;
  procedure menu_transaksi_penjualan(); forward;

  procedure login();
  var
    user, pass, ch: string;
  begin
    for i := 1 to 3 do
    begin
      pass := '';
      gotoxy(4, 4);
      write('Username = admin');
      gotoxy(4, 5);
      write('Password = admin');

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
        'data_dvd.txt');
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
      'data_dvd.txt');
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
    Assign(infile, 'data_dvd.txt');
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

      Assign(infile, 'data_dvd.txt');
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
      'data_dvd.txt');
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
    writeln('|  3. Tahun Keluar Film                    |');
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
        Write(
          '||                                                      |                       |       |                     |       ||');
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

  procedure input_data_member();
  var
    data_member: tipe_member;
    ulang: string;
    infile: Text;
  begin
    ClrScr;
    repeat
      Assign(infile,
        'data_member.txt');
      Append(infile);

      clrscr;
      gotoxy(1, 1);
      Write('++====================================================================================================================++');
      gotoxy(1, 2);
      Write('||                                                   ISI DATA MEMBER                                                  ||');
      gotoxy(1, 3);
      Write('++=========================================================================++=========================================++');
      for i := 1 to 25 do
      begin
        gotoxy(1, 3 + i);
        Write(
          '||                                                                         ||                                         ||');
      end;
      gotoxy(1, 29);
      Write('++=========================================================================++=========================================++');

      gotoxy(4, 5);
      Write('ID Member     : ');
      readln(data_member.id_member);
      gotoxy(4, 6);
      Write('Nama Member   : ');
      readln(data_member.nama);
      gotoxy(4, 7);
      Write('Tanggal Lahir : ');
      readln(data_member.tgl_lahir);
      gotoxy(4, 8);
      Write('Alamat Rumah  : ');
      readln(data_member.alamat);


      writeln(infile, data_member.id_member + ',' + data_member.nama +
        ',' + data_member.tgl_lahir + ',' + data_member.alamat);
      Close(infile);

      gotoxy(4, 11);
      Write('Apakah anda ingin memasukan data lagi?[Y/N] ');
      readln(ulang);
    until (ulang = 'N') or (ulang = 'n');
    menu_data_member();
  end;

  procedure tampil_data_member();
  var
    infile: Text;
    isi: string;
    all_array: TSarray;

  begin
    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||                                                     DATA MEMBER                                                    ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(1, 4);
    Write('|| ID MEMBER  |                   NAMA                   | TANGGAL LAHIR |                   ALAMAT                   ||');
    gotoxy(1, 5);
    Write('++====================================================================================================================++');
    Assign(infile,
      'data_member.txt');
    reset(infile);
    i := 0;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      gotoxy(1, 6 + i);
      Write('||            |                                          |               |                                            ||');
      gotoxy(4, 6 + i);
      Write(all_array[0]);
      gotoxy(17, 6 + i);
      Write(all_array[1]);
      gotoxy(62, 6 + i);
      Write(all_array[2]);
      gotoxy(76, 6 + i);
      Write(all_array[3]);
      i := i + 1;
    end;
    Close(infile);
    if i = 0 then
    begin
      i := i + 1;
      gotoxy(1, 6);
      Write('||                                              TIDAK ADA DATA MEMBER                                                 ||');
    end;
    gotoxy(1, 6 + i);
    Write('++====================================================================================================================++');
    gotoxy(1, 8 + i);
    Write('Tekan enter untuk kembali ke menu data dvd..');
    readln();
    menu_data_member();

  end;

  procedure isi_ubah_data_member(id_member, nama, tgl_lahir, alamat: string);
  var
    temp_member: tipe_member;
    data_member: array[1..maks] of tipe_member;
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
    Write('||                                                  UBAH DATA MEMBER                                                  ||');
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
    Write('ID MEMBER    : ', id_member);
    gotoxy(4, 8);
    Write('NAMA         : ', nama);
    gotoxy(4, 9);
    Write('TAGGAL LAHIR : ', tgl_lahir);
    gotoxy(4, 10);
    Write('ALAMAT       : ', alamat);

    gotoxy(63, 7);
    Write('ID MEMBER     : ');
    ReadLn(temp_member.id_member);
    gotoxy(63, 8);
    Write('NAMA          : ');
    ReadLn(temp_member.nama);
    gotoxy(63, 9);
    Write('TANGGAL LAHIR : ');
    ReadLn(temp_member.tgl_lahir);
    gotoxy(63, 10);
    Write('ALAMAT        : ');
    ReadLn(temp_member.alamat);

    gotoxy(63, 12);
    Write('Apakah Anda Yakin Merubah Data DVD?[Y/N] ');
    ReadLn(yakin);

    if (yakin = 'n') or (yakin = 'N') then
    begin
      menu_data_member();
    end
    else
    begin

      Assign(infile, 'data_member.txt');
      Reset(infile);
      k := 1;
      while not EOF(infile) do
      begin
        readln(infile, isi);
        all_array := Split(isi, ',');
        if all_array[0] <> id_member then
        begin
          data_member[k].id_member := all_array[0];
          data_member[k].nama := all_array[1];
          data_member[k].tgl_lahir := all_array[2];
          data_member[k].alamat := all_array[3];
        end
        else
        begin
          data_member[k].id_member := temp_member.id_member;
          data_member[k].nama := temp_member.nama;
          data_member[k].tgl_lahir := temp_member.tgl_lahir;
          data_member[k].alamat := temp_member.alamat;
        end;
        k := k + 1;
      end;
      Rewrite(infile);

      for i := 1 to k - 1 do
      begin
        writeln(infile, data_member[i].id_member + ',' + data_member[i].nama +
          ',' + data_member[i].tgl_lahir + ',' + data_member[i].alamat);
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
      menu_data_member();

    end;
  end;

  procedure hapus_data_member(posisi: integer);
  var
    infile: Text;
    isi: string;
    j: integer;
    k: integer;
    all_array: TSarray;
    data_member: array[1..maks] of tipe_member;
  begin
    Assign(infile, 'data_member.txt');
    Reset(infile);
    j := 1;
    k := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      if j <> posisi then
      begin
        data_member[k].id_member := all_array[0];
        data_member[k].nama := all_array[1];
        data_member[k].tgl_lahir := all_array[2];
        data_member[k].alamat := all_array[3];
        k := k + 1;
      end;
      j := j + 1;
    end;
    Rewrite(infile);

    for i := 1 to k - 1 do
    begin
      writeln(infile, data_member[i].id_member + ',' + data_member[i].nama +
        ',' + data_member[i].tgl_lahir + ',' + data_member[i].alamat);
    end;

    Close(infile);
    gotoxy(25, 11);
    writeln('=============================================================================');
    gotoxy(25, 12);
    writeln('|     Data Berhasil Dihapus, Tekan Enter Untuk Kembali ke Menu Data Member  |');
    gotoxy(25, 13);
    writeln('=============================================================================');
    ReadLn;
    menu_data_member();
  end;

  procedure ubah_data_member();
  var
    id_cari: string;
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
    Write('||  Masukan ID Member :                                                                                               ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(25, 2);
    readln(id_cari);
    Write('++====================================================================================================================++');
    Assign(infile,
      'data_member.txt');
    reset(infile);
    j := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      if all_array[0] = id_cari then
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
      Write('||                                            DATA MEMBER DITEMUKAN                                                   ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(1, 4);
      Write('||                                                                                                                    ||');
      gotoxy(1, 5);
      Write('|| ID MEMBER     :                                                                                                    ||');
      gotoxy(20, 5);
      Write(all_array[0]);
      gotoxy(1, 6);
      Write('|| NAMA          :                                                                                                    ||');
      gotoxy(20, 6);
      Write(all_array[1]);
      gotoxy(1, 7);
      Write('|| TANGGAL LAHIR :                                                                                                    ||');
      gotoxy(20, 7);
      Write(all_array[2]);
      gotoxy(1, 8);
      Write('|| ALAMAT        :                                                                                                    ||');
      gotoxy(20, 8);
      Write(all_array[3]);
      gotoxy(1, 9);
      Write('||                                                                                                                    ||');
      gotoxy(1, 10);
      Write('||                                                                                                                    ||');
      gotoxy(1, 11);
      Write('|| ++====================================================++                                                           ||');
      gotoxy(1, 12);
      Write('|| ||          Pilih ubah atau hapus data Member         ||                                                           ||');
      gotoxy(1, 13);
      Write('|| ++====================================================++                                                           ||');
      gotoxy(1, 14);
      Write('|| ||   1. Hapus Data Member                             ||                                                           ||');
      gotoxy(1, 15);
      Write('|| ||   2. Ubah Data Member                              ||                                                           ||');
      gotoxy(1, 16);
      Write('|| ||   3. Kembali Ke Menu Data Member                   ||                                                           ||');
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
        hapus_data_member(j);
      end
      else
      if pilihan = 2 then
      begin
        ClrScr;
        isi_ubah_data_member(all_array[0], all_array[1], all_array[2],
          all_array[3]);
      end
      else
      begin
        ClrScr;
        menu_data_member();
      end;
    end
    else
    begin
      gotoxy(1, 5);
      Write('Data tidak ditemukan !!, apakah Anda ingin melakukan pencarian judul lagi? [Y/N]');
      readln(ulang);
      if (ulang = 'Y') or (ulang = 'y') then
      begin
        ubah_data_member();
      end
      else
      begin
        menu_data_member();
      end;

    end;
  end;

  procedure cari_data_member();
  var
    pilihan: integer;
    cari: string;
    //temp_member: tipe_member;
    data_member: array[1..maks] of tipe_member;
    infile: Text;
    isi: string;
    j: integer;
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
    writeln('|  1. ID Member                            |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Nama                                 |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. Tanggal Lahir                        |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  4. Alamat                               |');
    Delay(200);
    gotoxy(35, 10);
    writeln('|  0. Kembali Ke Menu Data Member          |');
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
      menu_data_member();
    end;

    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    if pilihan = 1 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan ID Member  :                                                                                              ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(26, 2);
      readln(cari);
    end
    else
    if pilihan = 2 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Nama  :                                                                                                   ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(21, 2);
      readln(cari);
    end
    else
    if pilihan = 3 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Tanggal Lahir     :                                                                                       ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(33, 2);
      readln(cari);
    end
    else
    if pilihan = 4 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Alamat   :                                                                                                ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(24, 2);
      readln(cari);
    end;

    Assign(infile, 'data_member.txt');
    reset(infile);
    j := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');

      if all_array[pilihan - 1] = cari then
      begin
        data_member[j].id_member := all_array[0];
        data_member[j].nama := all_array[1];
        data_member[j].tgl_lahir := all_array[2];
        data_member[j].alamat := all_array[3];
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
    Write('|| ID MEMBER  |                   NAMA                   | TANGGAL LAHIR |                   ALAMAT                   ||');
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
      menu_data_member();
    end
    else
    begin

      for i := 1 to j - 1 do
      begin
        gotoxy(1, 5 + i);
        Write(
          '||            |                                          |               |                                            ||');
        gotoxy(4, 5 + i);
        Write(data_member[i].id_member);
        gotoxy(17, 5 + i);
        Write(data_member[i].nama);
        gotoxy(62, 5 + i);
        Write(data_member[i].tgl_lahir);
        gotoxy(76, 5 + i);
        Write(data_member[i].alamat);
      end;
      gotoxy(1, 6 + i);
      Write('++====================================================================================================================++');
      gotoxy(1, 8 + i);
      Write('Tekan enter untuk kembali ke menu data member..');
      readln();
      menu_data_member();
    end;
  end;

  procedure menu_data_member();
  var
    pilihan: integer;
  begin
    ClrScr;
    gotoxy(35, 3);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 4);
    writeln('|               MENU DATA MEMBER           |');
    Delay(200);
    gotoxy(35, 5);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 6);
    writeln('|  1. Input Data Member                    |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Tampil Data Member                   |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. Ubah Atau Hapus Data Member          |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  4. Cari Data Member                     |');
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
      input_data_member();
    end
    else
    if pilihan = 2 then
    begin
      tampil_data_member();
    end
    else
    if pilihan = 3 then
    begin
      ubah_data_member();
    end
    else
    if pilihan = 4 then
    begin
      cari_data_member();
    end
    else
    begin
      ClrScr;
      menu_utama();
    end;

  end;

  procedure input_data_transaksi();
  var
    data_dvd: array[1..maks] of tipe_dvd;
    temp_dvd: array[1..maks] of tipe_dvd;
    data_member: array[1..maks] of tipe_member;
    data_trans: array[1..maks] of tipe_trans;
    lagi: string;
    stok: integer;
    cari_judul: string;
    temp_member: tipe_member;
    infile: Text;
    isi: string;
    j: integer;
    all_array: TSarray;
    pake_member: string;
    id_member: string;
    total_jumlah: integer;
    total_harga: real;
    total_setelah_diskon: real;
    ulang: string;
    YY, MM, DD: word;
    m, n: integer;
    id_trans_terakhir: string;
    day: string;
    month: string;
    year: string;
  begin
    repeat
      ClrScr;
      total_jumlah := 0;
      gotoxy(1, 1);
      Write('++====================================================================================================================++');
      gotoxy(1, 2);
      Write('||                                            INPUT DATA TRANSAKSI PENJUALAN DVD                                      ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      for i := 1 to 25 do
      begin
        gotoxy(1, 3 + i);
        Write(
          '||                                                                                                                    ||');
      end;
      gotoxy(1, 29);
      Write('++====================================================================================================================++');
      gotoxy(1, 4);
      Write('||                                                                                                                    ||');
      gotoxy(1, 5);
      Write('||   Masukan Judul DVD dan Jumlah DVD yang dijual :                                                                   ||');
      gotoxy(1, 6);
      Write('||   ++==========================================================================================================++   ||');
      gotoxy(1, 7);
      Write('||   ||                      JUDUL                       |     GENRE    | TAHUN |      SUBTITLE       |  JUMLAH  ||   ||');
      gotoxy(1, 8);
      Write('||   ++==========================================================================================================++   ||');
      i := 1;
      repeat


        repeat
          gotoxy(1, 8 + i);
          Write(
            '||   ||                                                  |              |       |                     |          ||   ||');
          gotoxy(9, 8 + i);
          ReadLn(cari_judul);

          Assign(infile, 'data_dvd.txt');
          reset(infile);
          j := 1;
          while not EOF(infile) do
          begin
            readln(infile, isi);
            all_array := Split(isi, ',');

            if all_array[0] = cari_judul then
            begin
              data_dvd[i].judul_dvd := all_array[0];
              gotoxy(60, 8 + i);
              Write(all_array[1]);
              data_dvd[i].genre := all_array[1];
              gotoxy(75, 8 + i);
              Write(all_array[2]);
              data_dvd[i].tahun := all_array[2];
              gotoxy(83, 8 + i);
              Write(all_array[3]);
              data_dvd[i].subtitle := all_array[3];
              data_dvd[i].stock := all_array[4];
              j := j + 1;
              Break;
            end;

          end;
          Close(infile);
          if j = 1 then
          begin
            gotoxy(8, 9 + i);
            Write('Judul DVD Tidak Terdaftar!');
            ReadLn;
            gotoxy(8, 9 + i);
            ClrEol;
            gotoxy(1, 9 + i);
            Write(
              '||                                                                                                                    ||');
          end;
        until j = 2;


        repeat
          gotoxy(108, 8 + i);
          ReadLn(data_dvd[i].jumlah);
          if data_dvd[i].jumlah > StrToInt(data_dvd[1].stock) then
          begin
            gotoxy(100, 9 + i);
            Write('Stock DVD Kurang!');
            ReadLn;
            gotoxy(108, 8 + i);
            ClrEol;
            gotoxy(1, 9 + i);
            ClrEol;
            gotoxy(108, 8 + i);
            Write('      ||   ||');
            gotoxy(1, 9 + i);
            Write(
              '||                                                                                                                    ||');
          end;
        until data_dvd[i].jumlah <= StrToInt(data_dvd[1].stock);
        total_jumlah := total_jumlah + data_dvd[i].jumlah;
        gotoxy(8, 9 + i);
        Write('Apakah Anda Akan Menambahkan Data Lagi? [Y/N] ');
        ReadLn(lagi);
        i := i + 1;
      until (lagi = 'N') or (lagi = 'n');
      gotoxy(1, 8 + i);
      Write('||   ++==========================================================================================================++   ||');

      gotoxy(6, 10 + i);
      Write('Apakah penjualan menggunakan member? [Y/N] ');
      ReadLn(pake_member);
      if (pake_member = 'Y') or (pake_member = 'y') then
      begin
        gotoxy(6, 10 + i);
        ClrEol;
        gotoxy(1, 10 + i);
        Write(
          '||   Masukan ID Member :                                                                                              ||');
        gotoxy(1, 11 + i);
        Write(
          '||   ++==========================================================================================================++   ||');
        gotoxy(1, 12 + i);
        Write(
          '||   ||  ID MEMBER  |              NAMA                  |     TANGGAL LAHIR     |             ALAMAT            ||   ||');
        gotoxy(1, 13 + i);
        Write(
          '||   ++==========================================================================================================++   ||');
        repeat
          gotoxy(1, 14 + i);
          Write(
            '||   ||             |                                    |                       |                               ||   ||');
          gotoxy(9, 14 + i);
          ReadLn(id_member);
          Assign(infile, 'data_member.txt');
          reset(infile);
          j := 1;
          while not EOF(infile) do
          begin
            readln(infile, isi);
            all_array := Split(isi, ',');

            if all_array[0] = id_member then
            begin
              data_member[j].id_member := all_array[0];
              gotoxy(23, 14 + i);
              Write(all_array[1]);
              data_member[j].nama := all_array[1];
              gotoxy(67, 14 + i);
              Write(all_array[2]);
              data_member[j].tgl_lahir := all_array[2];
              gotoxy(84, 14 + i);
              Write(all_array[3]);
              data_member[j].alamat := all_array[3];
              j := j + 1;
              Break;
            end;

          end;
          Close(infile);
          if j = 1 then
          begin
            gotoxy(8, 15 + i);
            Write('ID Member Tidak Terdaftar!');
            ReadLn;
            gotoxy(8, 15 + i);
            ClrEol;
            gotoxy(1, 15 + i);
            Write(
              '||                                                                                                                    ||');
          end;

        until j = 2;
        gotoxy(1, 15 + i);
        Write(
          '||   ++==========================================================================================================++   ||');

        gotoxy(6, 17 + i);
        Write('Jumlah Penjualan DVD : ', total_jumlah);
        total_harga := total_jumlah * 5000;
        gotoxy(6, 18 + i);
        Write('Harga Total DVD      : Rp', total_harga: 0: 2);
        gotoxy(6, 19 + i);
        Write('Diskon Member        : 20%');
        total_setelah_diskon := total_harga - (total_harga * 0.2);
        gotoxy(6, 20 + i);
        Write('Harga Setelah Diskon : Rp', total_setelah_diskon: 0: 2);
        gotoxy(6, 22 + i);
        Write('Apakah anda ingin memasukan data transaksi lagi?[Y/N] ');
        readln(ulang);
      end
      else
      begin
        gotoxy(6, 12 + i);
        Write('Jumlah Penjualan DVD : ', total_jumlah);
        total_harga := total_jumlah * 5000;
        gotoxy(6, 13 + i);
        Write('Harga Total DVD      : Rp', total_harga: 0: 2);
        gotoxy(6, 16 + i);
        Write('Apakah anda ingin memasukan data transaksi lagi?[Y/N] ');
        readln(ulang);
      end;

      n := 1;
      Assign(infile, 'data_dvd.txt');
      reset(infile);
      while not EOF(infile) do
      begin
        readln(infile, isi);
        all_array := Split(isi, ',');

        for m := 1 to i - 1 do
        begin
          if all_array[0] = data_dvd[m].judul_dvd then
          begin
            temp_dvd[n].judul_dvd := all_array[0];
            temp_dvd[n].genre := all_array[1];
            temp_dvd[n].tahun := all_array[2];
            temp_dvd[n].subtitle := all_array[3];
            temp_dvd[n].stock :=
              IntToStr(StrToInt(all_array[4]) - data_dvd[m].jumlah);
            Break;
          end
          else
          if m = i - 1 then
          begin
            temp_dvd[n].judul_dvd := all_array[0];
            temp_dvd[n].genre := all_array[1];
            temp_dvd[n].tahun := all_array[2];
            temp_dvd[n].subtitle := all_array[3];
            temp_dvd[n].stock := all_array[4];
          end;
        end;
        n := n + 1;
      end;

      Rewrite(infile);

      for j := 1 to n - 1 do
      begin
        writeln(infile, temp_dvd[j].judul_dvd + ',' + temp_dvd[j].genre +
          ',' + temp_dvd[j].tahun + ',' + temp_dvd[j].subtitle +
          ',' + temp_dvd[j].stock);
      end;
      Close(infile);

      DeCodeDate(Date, YY, MM, DD);
      Assign(infile, 'data_transaksi.txt');
      reset(infile);
      while not EOF(infile) do
      begin
        readln(infile, isi);
        all_array := Split(isi, ',');
        id_trans_terakhir := all_array[0];
      end;
      Close(infile);

      Str(DD, day);
      Str(MM, month);
      Str(YY, year);

      Assign(infile, 'data_transaksi.txt');
      Append(infile);
      for j := 1 to i - 1 do
      begin
        if (pake_member = 'Y') or (pake_member = 'y') then
        begin
          writeln(infile, IntToStr(StrToInt(id_trans_terakhir) + j) +
            ',' + data_dvd[j].judul_dvd + ',' + data_member[1].id_member +
            ',' + day + '/' + month + '/' + year + ',' + IntToStr(data_dvd[j].jumlah));
        end
        else
        begin
          writeln(infile, IntToStr(StrToInt(id_trans_terakhir) + j) +
            ',' + data_dvd[j].judul_dvd + ',' + ' ' + ',' + day + '/' + month + '/' + year +
            ',' + IntToStr(data_dvd[j].jumlah));
        end;
      end;
      Close(infile);

    until (ulang = 'N') or (ulang = 'n');
    menu_transaksi_penjualan();
  end;

  procedure tampil_data_transaksi();
  var
    infile: Text;
    isi: string;
    all_array: TSarray;

  begin
    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||                                             DATA TRANSAKSI PENJUALAN DVD                                           ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(1, 4);
    Write('|| ID TRANSAKSI |                      JUDUL DVD                      |  ID MEMBER  | TANGGAL TRANSAKSI | JUMLAH BELI ||');
    gotoxy(1, 5);
    Write('++====================================================================================================================++');
    Assign(infile,
      'data_transaksi.txt');
    reset(infile);
    i := 0;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      gotoxy(1, 6 + i);
      Write('||              |                                                     |             |                   |             ||');
      gotoxy(4, 6 + i);
      Write(all_array[0]);
      gotoxy(19, 6 + i);
      Write(all_array[1]);
      gotoxy(73, 6 + i);
      Write(all_array[2]);
      gotoxy(87, 6 + i);
      Write(all_array[3]);
      gotoxy(107, 6 + i);
      Write(all_array[4]);
      i := i + 1;
    end;
    Close(infile);
    gotoxy(1, 6 + i);
    Write('++====================================================================================================================++');
    gotoxy(1, 8 + i);
    Write('Tekan enter untuk kembali ke menu data transaksi penjualan dvd..');
    readln();
    menu_transaksi_penjualan();
  end;

  procedure cari_data_transaksi();
  var
    pilihan: integer;
    cari: string;
    //temp_member: tipe_member;
    data_trans: array[1..maks] of tipe_trans;
    infile: Text;
    isi: string;
    j: integer;
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
    writeln('|  1. ID Transaksi                         |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Judul DVD                            |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. ID Member                            |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  4. Tanggal Transaksi                    |');
    Delay(200);
    gotoxy(35, 10);
    writeln('|  0. Kembali Ke Menu Data Transaksi DVD   |');
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
      menu_transaksi_penjualan();
    end;

    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    if pilihan = 1 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan ID Transaksi :                                                                                            ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(29, 2);
      readln(cari);
    end
    else
    if pilihan = 2 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Judul DVD :                                                                                               ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(25, 2);
      readln(cari);
    end
    else
    if pilihan = 3 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan ID Member :                                                                                               ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(25, 2);
      readln(cari);
    end
    else
    if pilihan = 4 then
    begin
      gotoxy(1, 2);
      Write('||  Masukan Tanggal Transaksi :                                                                                       ||');
      gotoxy(1, 3);
      Write('++====================================================================================================================++');
      gotoxy(33, 2);
      readln(cari);
    end;

    Assign(infile, 'data_transaksi.txt');
    reset(infile);
    j := 1;
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');

      if all_array[pilihan - 1] = cari then
      begin
        data_trans[j].id_trans := all_array[0];
        data_trans[j].judul := all_array[1];
        data_trans[j].id_member := all_array[2];
        data_trans[j].tanggal := all_array[3];
        data_trans[j].jumlah := all_array[4];
        j := j + 1;
      end;

    end;
    Close(infile);
    ClrScr;
    gotoxy(1, 1);
    Write('++====================================================================================================================++');
    gotoxy(1, 2);
    Write('||                                            HASIL CARI DATA TRANSAKSI PENJUALAN DVD                                 ||');
    gotoxy(1, 3);
    Write('++====================================================================================================================++');
    gotoxy(1, 4);
    Write('|| ID TRANSAKSI |                      JUDUL DVD                      |  ID MEMBER  | TANGGAL TRANSAKSI | JUMLAH BELI ||');
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
      menu_data_member();
    end
    else
    begin

      for i := 1 to j - 1 do
      begin
        gotoxy(1, 5 + i);
        Write(
          '||              |                                                     |             |                   |             ||');
        gotoxy(4, 5 + i);
        Write(data_trans[i].id_trans);
        gotoxy(19, 5 + i);
        Write(data_trans[i].judul);
        gotoxy(73, 5 + i);
        Write(data_trans[i].id_member);
        gotoxy(87, 5 + i);
        Write(data_trans[i].tanggal);
        gotoxy(107, 5 + i);
        Write(data_trans[i].jumlah);
      end;
      gotoxy(1, 6 + i);
      Write('++====================================================================================================================++');
      gotoxy(1, 8 + i);
      Write('Tekan enter untuk kembali ke menu data transaksi penjualan dvd..');
      readln();
      menu_transaksi_penjualan();
    end;
  end;

  procedure menu_transaksi_penjualan();
  var
    pilihan: integer;
  begin
    ClrScr;
    gotoxy(35, 3);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 4);
    writeln('|       MENU TRANSAKSI PENJUALAN DVD       |');
    Delay(200);
    gotoxy(35, 5);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 6);
    writeln('|  1. Input Data Transaksi Penjualan DVD   |');
    Delay(200);
    gotoxy(35, 7);
    writeln('|  2. Tampil Data Transaksi Penjualan DVD  |');
    Delay(200);
    gotoxy(35, 8);
    writeln('|  3. Cari Data Transaksi Penjualan DVD    |');
    Delay(200);
    gotoxy(35, 9);
    writeln('|  0. Kembali Ke Menu Utama                |');
    Delay(200);
    gotoxy(35, 10);
    writeln('============================================');
    Delay(200);
    gotoxy(35, 11);
    writeln('|                                          |');
    Delay(200);
    gotoxy(35, 12);
    writeln('============================================');
    Delay(200);
    gotoxy(39, 11);
    Write('Pilihan Anda : ');
    readln(pilihan);
    if pilihan = 1 then
    begin
      input_data_transaksi();
    end
    else
    if pilihan = 2 then
    begin
      tampil_data_transaksi();
    end
    else
    if pilihan = 3 then
    begin
      cari_data_transaksi();
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
      textcolor(white);
      TextBackground(brown);
      clrscr;
      menu_data_member();
    end
    else
    if pilihan = 3 then
    begin
      textcolor(white);
      TextBackground(Green);
      clrscr;
      menu_transaksi_penjualan();
    end
    else
    if pilihan = 4 then
    begin
      textcolor(black);
      TextBackground(white);
      clrscr;
      login();

      if x = 1 then
      begin
        menu_utama();
      end;
    end
    else
    begin
      Exit;
    end;

  end;



begin
  //clrscr;
  window(1, 1, 120, 30);
  textcolor(black);
  TextBackground(white);
  clrscr;
  for i := 1 to 100 do
  begin
    gotoxy(49, 9);
    writeln('   Please Wait');
    gotoxy(49, 10);
    writeln('Loading . . . ', i, '%');
    Delay(50);
    clrscr;
  end;

  login();
  clrscr();
  //x := 1;
  if x = 1 then
  begin
    //ubah_data_member;
    //tampil_data_transaksi();
    //input_data_transaksi();
    menu_utama();
    //menu_data_dvd();
    //cari_data_member();
  end;

  readln();
end.
