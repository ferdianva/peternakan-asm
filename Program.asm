.MODEL SMALL
ORG 100H 

Cetak_kal       macro kal
                mov ah, 09
                lea dx, kal
                int 21h 
                endm

POSISI macro baris,kolom
    mov ah, 02h
    mov dh, baris
    mov dl, kolom
    mov bh, 00h
    int 10h
endm

cls proc near
    mov ah, 06h
    mov cx, 0000h
    mov dh, 24
    mov dl, 79
    mov al, 00
    mov bh, 47h
    int 10h
    POSISI 0,0

cls endp

.DATA : 
        menuu0  DB ,13,10,'****************************************************',13,10,'$'
        menuu1  DB ,13,10,'----------- SELAMAT DATANG DI FARM HOUSE -----------',13,10,'$'
        menuu2  DB ,13,10,'****************************************************',13,10,'$'
        
        menuu3  DB 'Kami menyediakan hewan ternak yang sesuai syariat untuk qurban dan aqiqah.',13,10,'$'
        menuu4  DB ,13,10,'1. SAPI',13,10,'$'
        menuu5  DB ,13,10,'2. KAMBING',13,10,'$'
        menuu6  DB ,13,10,'3. DOMBA',13,10,'$'
        menuu7  DB ,13,10,'0. KELUAR PROGRAM $',13,10,'$'
        menuu8  DB ,13,10,'Silakan masukan nomor menu: $'

         
         
        sapi0 DB ,13,10,'********************************************',13,10,'$' 
        sapi1 DB ,13,10,'---------- Menu Hewan Qurban Sapi ----------',13,10,'$'
        sapi2 DB ,13,10,'********************************************',13,10,'$'
        
        sapi3 DB 'Berikut berat sapi yang tersedia',13,10,'$'
        sapi4 DB ,13,10,'1. 1000 - 750 kg :Rp.60 juta ',13,10,'$'
        sapi5 DB ,13,10,'2. 749 - 500  kg :Rp.30 juta ',13,10,'$'
        sapi6 DB ,13,10,'3. 499 - 250  kg :Rp.20 juta ',13,10,'$'
        
        sapi7 DB 13,10,'Silakan pilih kategori berat hewan: $'
        sapi8 DB 13,10,'Masukkan jumlah sapi yang akan dibeli (MAKSIMUM 3):  $ '
        
        sapi9_1_1 DB 13,10,'TOTAL HARGA: Rp60.000.000,00 $'
        sapi9_1_2 DB 13,10,'TOTAL HARGA: Rp120.000.000,00 $'
        sapi9_1_3 DB 13,10,'TOTAL HARGA: Rp180.000.000,00 $'
        
        sapi9_2_1 DB 13,10,'TOTAL HARGA: Rp30.000.000,00 $'
        sapi9_2_2 DB 13,10,'TOTAL HARGA: Rp60.000.000,00 $'
        sapi9_2_3 DB 13,10,'TOTAL HARGA: Rp90.000.000,00 $'
        
        sapi9_3_1 DB 13,10,'TOTAL HARGA: Rp20.000.000,00 $'
        sapi9_3_2 DB 13,10,'TOTAL HARGA: Rp40.000.000,00 $'
        sapi9_3_3 DB 13,10,'TOTAL HARGA: Rp60.000.000,00 $'
        
        sapi10 DB 13,10,'Tekan angka <0> untuk kembali ke menu awal $' 
    
        
         
        kambing0 DB ,13,10,'*******************************************',13,10,'$' 
        kambing1 DB ,13,10,'-------- Menu Hewan Qurban Kambing --------',13,10,'$'
        kambing2 DB ,13,10,'*******************************************',13,10,'$'
        
        kambing3 DB 'Berikut berat kambing yang tersedia',13,10,'$'
        kambing4 DB ,13,10,'1. > 40     kg :Rp.5 juta ',13,10,'$'
        kambing5 DB ,13,10,'2. 39 - 34  kg :Rp.4 juta ',13,10,'$'
        kambing6 DB ,13,10,'3. 33 - 28  kg :Rp.3 juta ',13,10,'$'
        kambing7 DB ,13,10,'4. 27 - 25  kg :Rp.2 juta ',13,10,'$'
        kambing8 DB ,13,10,'5. < 25     kg :Rp.1 juta ',13,10,'$'
        
        kambing9 DB 13,10,'Silakan pilih kategori berat hewan: $'
        kambing10 DB 13,10,'Masukkan jumlah kambing yang akan dibeli <MAKSIMUM 3>:  $' 
        kambing9_1_1 DB 13,10,'TOTAL HARGA: Rp5.000.000,00 $'
        kambing9_1_2 DB 13,10,'TOTAL HARGA: Rp10.000.000,00 $'
        kambing9_1_3 DB 13,10,'TOTAL HARGA: Rp15.000.000,00 $'
        
        kambing9_2_1 DB 13,10,'TOTAL HARGA: Rp4.000.000,00 $'
        kambing9_2_2 DB 13,10,'TOTAL HARGA: Rp8.000.000,00 $'
        kambing9_2_3 DB 13,10,'TOTAL HARGA: Rp12.000.000,00 $'
        
        kambing9_3_1 DB 13,10,'TOTAL HARGA: Rp3.000.000,00 $'
        kambing9_3_2 DB 13,10,'TOTAL HARGA: Rp6.000.000,00 $'
        kambing9_3_3 DB 13,10,'TOTAL HARGA: Rp9.000.000,00 $'
        
        kambing9_4_1 DB 13,10,'TOTAL HARGA: Rp2.000.000,00 $'
        kambing9_4_2 DB 13,10,'TOTAL HARGA: Rp4.000.000,00 $'
        kambing9_4_3 DB 13,10,'TOTAL HARGA: Rp6.000.000,00 $'
        
        kambing9_5_1 DB 13,10,'TOTAL HARGA: Rp1.000.000,00 $'
        kambing9_5_2 DB 13,10,'TOTAL HARGA: Rp2.000.000,00 $'
        kambing9_5_3 DB 13,10,'TOTAL HARGA: Rp3.000.000,00 $'
        
        kambing12 DB 13,10,'Tekan (0) untuk kembali ke menu awal $'
        
        
        
        
        
        
        domba0 DB ,13,10,'*******************************************',13,10,'$' 
        domba1 DB ,13,10,'--------- Menu Hewan Qurban Domba ---------',13,10,'$'
        domba2 DB ,13,10,'*******************************************',13,10,'$'
        
        domba3 DB 'Berikut berat domba yang tersedia',13,10,'$'
        domba4 DB ,13,10,'1. > 40     kg :Rp.5 juta ',13,10,'$'
        domba5 DB ,13,10,'2. 39 - 34  kg :Rp.4 juta ',13,10,'$'
        domba6 DB ,13,10,'3. 33 - 28  kg :Rp.3 juta ',13,10,'$'
        domba7 DB ,13,10,'4. 27 - 25  kg :Rp.2 juta ',13,10,'$'
        domba8 DB ,13,10,'5. < 25     kg :Rp.1 juta ',13,10,'$'
        
        domba9 DB 13,10,'Silakan pilih kategori berat hewan: $'
        domba10 DB 13,10,'Masukkan jumlah domba yang akan dibeli <MAKSIMUM 3>:  $'
        domba9_1_1 DB 13,10,'TOTAL HARGA: Rp5.000.000,00 $'
        domba9_1_2 DB 13,10,'TOTAL HARGA: Rp10..000.000,00 $'
        domba9_1_3 DB 13,10,'TOTAL HARGA: Rp15.000.000,00 $'
        
        domba9_2_1 DB 13,10,'TOTAL HARGA: Rp4.000.000,00 $'
        domba9_2_2 DB 13,10,'TOTAL HARGA: Rp8.000.000,00 $'
        domba9_2_3 DB 13,10,'TOTAL HARGA: Rp12.000.000,00 $'
        
        domba9_3_1 DB 13,10,'TOTAL HARGA: Rp3.000.000,00 $'
        domba9_3_2 DB 13,10,'TOTAL HARGA: Rp6.000.000,00 $'
        domba9_3_3 DB 13,10,'TOTAL HARGA: Rp9.000.000,00 $'
        
        domba9_4_1 DB 13,10,'TOTAL HARGA: Rp2.000.000,00 $'
        domba9_4_2 DB 13,10,'TOTAL HARGA: Rp4.000.000,00 $'
        domba9_4_3 DB 13,10,'TOTAL HARGA: Rp6.000.000,00 $'
        
        domba9_5_1 DB 13,10,'TOTAL HARGA: Rp1.000.000,00 $'
        domba9_5_2 DB 13,10,'TOTAL HARGA: Rp2.000.000,00 $'
        domba9_5_3 DB 13,10,'TOTAL HARGA: Rp3.000.000,00 $'
        
        domba12 DB 13,10,'Tekan (0) untuk kembali ke menu awal $'

        
        
.CODE

menu_utama:
    Cetak_kal menuu0
    Cetak_kal menuu1
    Cetak_kal menuu2
    Cetak_kal menuu3
    Cetak_kal menuu4
    Cetak_kal menuu5
    Cetak_kal menuu6
    Cetak_kal menuu7
    Cetak_kal menuu8
    
    jmp inputan


inputan:
    mov ah, 0
    int 16h
    push ax
    
    cmp al, '1'
    je menu_sapi
    
    cmp al, '2'
    je menu_kambing
                  
    cmp al, '3'
    je menu_domba 
    
    cmp al, '0'
    je keluar
    
    



;================ Menu Dalam Hewan ================; 

;===== SAPI =====;
menu_sapi:
    Cetak_kal sapi0
    Cetak_kal sapi1
    Cetak_kal sapi2
    Cetak_kal sapi3
    Cetak_kal sapi4
    Cetak_kal sapi5
    Cetak_kal sapi6
    Cetak_kal sapi7
    
    mov ah, 0
    int 16h
    push ax
    
    CMP AL, '1'
    JE menu_sapi_a

    CMP AL, '2'
    JE menu_sapi_b

    CMP AL, '3'
    JE menu_sapi_c

    menu_sapi_a:
        Cetak_kal sapi8
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hs11
    
        CMP AL, '2'
        JE hs12 
        
        CMP AL, '3'
        JE hs13

        hs11:
            Cetak_kal sapi9_1_1
            Cetak_kal sapi10
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hs12:
            Cetak_kal sapi9_1_2
            Cetak_kal sapi10
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        hs13:
            Cetak_kal sapi9_1_3
            Cetak_kal sapi10
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls 
       
;===================================================                     
        menu_sapi_b:
        Cetak_kal sapi8
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hs21
    
        CMP AL, '2'
        JE hs22 
        
        CMP AL, '3'
        JE hs23 
        
        hs21:
            Cetak_kal sapi9_2_1
            Cetak_kal sapi10
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        

        
        hs22:
            Cetak_kal sapi9_2_2
            Cetak_kal sapi10
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        hs23:
            Cetak_kal sapi9_2_3
            Cetak_kal sapi10
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls           

;==============================================                   
                   
        menu_sapi_c:
        Cetak_kal sapi8
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hs31
    
        CMP AL, '2'
        JE hs32 
        
        CMP AL, '3'
        JE hs33 
        
        hs31:
            Cetak_kal sapi9_3_1
            Cetak_kal sapi10
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hs32:
            Cetak_kal sapi9_3_2
            Cetak_kal sapi10
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        hs33:
            Cetak_kal sapi9_3_3
            Cetak_kal sapi10
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls                    
                   
;===== KAMBING =====;

menu_kambing:
    Cetak_kal kambing0
    Cetak_kal kambing1
    Cetak_kal kambing2
    Cetak_kal kambing3
    Cetak_kal kambing4
    Cetak_kal kambing5
    Cetak_kal kambing6
    Cetak_kal kambing7
    Cetak_kal kambing8
    Cetak_kal kambing9
      
    mov ah, 0
    int 16h
    push ax
    
    CMP AL, '1'
    JE menu_kambing_a

    CMP AL, '2'
    JE menu_kambing_b

    CMP AL, '3'
    JE menu_kambing_c
    
    CMP AL, '4'
    JE menu_kambing_d

    CMP AL, '5'
    JE menu_kambing_e

    menu_kambing_a:
        Cetak_kal kambing10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hk11
    
        CMP AL, '2'
        JE hk12 
        
        CMP AL, '3'
        JE hk13
        

        hk11:
            Cetak_kal kambing9_1_1
            Cetak_kal kambing12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hk12:
            Cetak_kal kambing9_1_2
            Cetak_kal kambing12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        hk13:
            Cetak_kal kambing9_1_3
            Cetak_kal kambing12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls  
       
       
;===================================================                     
        menu_kambing_b:
        Cetak_kal kambing10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hk21
    
        CMP AL, '2'
        JE hk22 
        
        CMP AL, '3'
        JE hk23 
        
        hk21:
            Cetak_kal kambing9_2_1
            Cetak_kal kambing12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hk22:
            Cetak_kal kambing9_2_2
            Cetak_kal kambing12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            

        
        hk23:
            Cetak_kal kambing9_2_3
            Cetak_kal kambing12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls           
                   
    
;==============================================                   
                   
        menu_kambing_c:
        Cetak_kal kambing10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hk31
    
        CMP AL, '2'
        JE hk32 
        
        CMP AL, '3'
        JE hk33 
        
        hk31:
            Cetak_kal kambing9_3_1
            Cetak_kal kambing12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hk32:
            Cetak_kal kambing9_3_2
            Cetak_kal kambing12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            

        
        hk33:
            Cetak_kal kambing9_3_3
            Cetak_kal kambing12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls  
        
            
;==============================================                   
                   
        menu_kambing_d:
        Cetak_kal kambing10
        mov ah, 0
        int 16h
        push ax 
        
        CMP AL, '1'
        JE hk41
    
        CMP AL, '2'
        JE hk42 
        
        CMP AL, '3'
        JE hk43 
        
        hk41:
            Cetak_kal kambing9_4_1
            Cetak_kal kambing12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hk42:
            Cetak_kal kambing9_4_2
            Cetak_kal kambing12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        hk43:
            Cetak_kal kambing9_4_3
            Cetak_kal kambing12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls 
        

;==============================================                   
                   
        menu_kambing_e:
        Cetak_kal kambing10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hk51
    
        CMP AL, '2'
        JE hk52 
        
        CMP AL, '3'
        JE hk53 
        
        hk51:
            Cetak_kal kambing9_5_1
            Cetak_kal kambing12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        

        
        hk52:
            Cetak_kal kambing9_5_2
            Cetak_kal kambing12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            

        
        hk53:
            Cetak_kal kambing9_5_3
            Cetak_kal kambing12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls 
            

          

menu_domba:
    Cetak_kal domba0
    Cetak_kal domba1
    Cetak_kal domba2
    Cetak_kal domba3
    Cetak_kal domba4
    Cetak_kal domba5
    Cetak_kal domba6
    Cetak_kal domba7
    Cetak_kal domba8
    Cetak_kal domba9

  
    MOV AH, 0
    INT 16h
    PUSH AX

    
    CMP AL, '1'
    JE menu_domba_a

    CMP AL, '2'
    JE menu_domba_b

    CMP AL, '3'
    JE menu_domba_c
    
    CMP AL, '4'
    JE menu_domba_d

    CMP AL, '5'
    JE menu_domba_e

    menu_domba_a:
        Cetak_kal kambing10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hd11
    
        CMP AL, '2'
        JE hd12 
        
        CMP AL, '3'
        JE hd13

        hd11:
            Cetak_kal domba9_1_1
            Cetak_kal domba12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hd12:
            Cetak_kal domba9_1_2
            Cetak_kal domba12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            

        
        hd13:
            Cetak_kal domba9_1_3
            Cetak_kal domba12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls 
       
;===================================================                     
        menu_domba_b:
        Cetak_kal domba10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hd21
    
        CMP AL, '2'
        JE hd22 
        
        CMP AL, '3'
        JE hd23 
        
        hd21:
            Cetak_kal domba9_2_1
            Cetak_kal  domba12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hd22:
            Cetak_kal  domba9_2_2
            Cetak_kal  domba12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        
        hd23:
            Cetak_kal  domba9_2_3
            Cetak_kal  domba12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls           

;==============================================                   
                   
        menu_domba_c:
        Cetak_kal  domba10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hd31
    
        CMP AL, '2'
        JE hd32 
        
        CMP AL, '3'
        JE hd33 
        
        hd31:
            Cetak_kal  domba9_3_1
            Cetak_kal  domba12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        

        
        hd32:
            Cetak_kal  domba9_3_2
            Cetak_kal  domba12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            

        
        hd33:
            Cetak_kal  domba9_3_3
            Cetak_kal  domba12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls 
            
;==============================================                   
                   
        menu_domba_d:
        Cetak_kal  domba10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hd41
    
        CMP AL, '2'
        JE hd42 
        
        CMP AL, '3'
        JE hd43 
        
        hd41:
            Cetak_kal  domba9_4_1
            Cetak_kal  domba12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        
        
        hd42:
            Cetak_kal  domba9_4_2
            Cetak_kal  domba12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        
        hd43:
            Cetak_kal  domba9_4_3
            Cetak_kal  domba12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls       

;==============================================                   
                   
        menu_domba_e:
        Cetak_kal  domba10
        mov ah, 0
        int 16h
        push ax

        CMP AL, '1'
        JE hd51
    
        CMP AL, '2'
        JE hd52 
        
        CMP AL, '3'
        JE hd53 
        
        hd51:
            Cetak_kal  domba9_5_1
            Cetak_kal  domba12
              
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
        

        
        hd52:
            Cetak_kal  domba9_5_2
            Cetak_kal  domba12
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls
            
        
        
        hd53:
            Cetak_kal  domba9_5_3
            Cetak_kal  domba12
            
            mov ah, 0
            int 16h
            push ax
    
            cmp al, '0'
            je cls   
    
    

keluar:
    INT 20h
    HLT    
    
           