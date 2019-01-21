program tugas_besar;

uses
  crt;

const
  username = 'reyhan';
  password = 'audian';


var
  i: integer;
  x: integer;

type
  TSarray = array of string;


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

    repeat
      Assign(infile,
        'D:\Jauhar\kuliah\semester 1\algoritma\ulang\tugas_besar_alpro_ulang-master\data_dvd.txt');
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
      'D:\Jauhar\kuliah\semester 1\algoritma\ulang\tugas_besar_alpro_ulang-master\data_dvd.txt');
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

  procedure isi_ubah_dvd;
  begin
    ClrScr;
  end;

  procedure ubah_data_dvd;
  var
    judul_cari: string;
    infile: Text;
    isi: string;
    all_array: TSarray;
    z: integer;
    ulang: string;
  begin
    ClrScr;
    z:=0;
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
      'D:\Jauhar\kuliah\semester 1\algoritma\ulang\tugas_besar_alpro_ulang-master\data_dvd.txt');
    reset(infile);
    while not EOF(infile) do
    begin
      readln(infile, isi);
      all_array := Split(isi, ',');
      if all_array[0] = judul_cari then
      begin
        z := 1;
        Break;
      end;
    end;
    Close(infile);
    if z = 1 then
    begin
       ClrScr;
       gotoxy(1, 1);
       Write('++====================================================================================================================++');
    end
    else
    begin
      gotoxy(1, 5);
      Write('Data tidak ditemukan !!, apakah Anda ingin melakukan pencarian judul lagi? [Y/N]');
      readln(ulang);
      if (ulang = 'Y') or (ulang ='y') then
      begin
         ubah_data_dvd;
      end
      else
      begin
        menu_data_dvd;
      end;

    end;
  end;

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
    writeln('|  3. Ubah Data DVD                        |');
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
      clrscr;
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
    ubah_data_dvd;
    //tampil_data_dvd();
    //input_data_dvd();
    //menu_utama();
  end;

  readln();
end.
