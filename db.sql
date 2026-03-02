CREATE EXTENSION IF NOT EXISTS ai CASCADE;


DROP TABLE IF EXISTS computers CASCADE;

CREATE TABLE IF NOT EXISTS computers (
  id bigserial PRIMARY KEY,
  product_name VARCHAR(200) NOT NULL,
  price VARCHAR(50) NOT NULL,
  url VARCHAR(255) NOT NULL,
  technical_specs JSONB NOT NULL,
  description TEXT,
  comments JSONB NOT NULL,
  embedding vector(3072)
);
INSERT INTO "computers" ("product_name", "price", "url", "technical_specs", "description", "comments")
VALUES
  ('ASUS ROG Zephyrus G14 GA403UH-QS038 Ryzen 9 270 16GB LPDDRX5 RTX5050 8GB GDDR7 1TB SSD 14" OLED 120Hz FreeDos Notebook', '98.496,00 TL', 'https://www.itopya.com/asus-rog-zephyrus-g14-ga403uh-qs038-ryzen-9-270-16gb-lpddrx5-rtx5050-8gb-gddr7-1tb-ssd-14-oled-120h_u32406', '{"İşlemci Modeli":"Ryzen 9 270","İşlemci Nesil":"Ryzen 9000 Serisi","GPU Model":"GeForce RTX 5050","Mevcut Ram Bellek":"16GB (16GB x 1)","Ram Tipi":"LPDDR5X","Ram Hızı":"7500 MHz","SSD":"1TB","Ekran Boyutu":"14\"","Çözünürlük":"2880 x 1800","Desteklenen Max Ram Bellek":"16GB","İşlemci Çekirdek":"8 Çekirdek","İşlemci Hızı MAX":"5.2 GHz","L3 Önbellek":"24MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 5000 Serisi","USB 3.2":"USB 3.2 x 2, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"Yok","Ethernet":"Yok","Lan Çıkış Sayısı":"Yok","Wireless LAN":"WiFi 7","Bluetooth":"Bluetooth v5.4","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"1.5 kg"}', 'ASUS ROG Zephyrus G14 GA403UH-QS038 Ryzen 9 270 16GB LPDDRX5 RTX5050 8GB GDDR7 1TB SSD 14" OLED 120Hz FreeDos Notebook', '[]'),
  ('MSI THIN A15 B7VE-076XTR AMD Ryzen 5 7535HS 16GB DDR5 512GB SSD RTX4050 6GB 15.6" Full HD 144Hz FreeDos Gaming Notebook', '36.936,00 TL', 'https://www.itopya.com/msi-thin-a15-b7ve-076xtr-amd-ryzen-5-7535hs-16gb-ddr5-512gb-ssd-rtx4050-6gb-156-full-hd-144hz-free_u25369', '{"İşlemci Modeli":"Ryzen 5 7535HS","İşlemci Nesil":"Ryzen 7000 Serisi","GPU Model":"GeForce RTX 4050","Mevcut Ram Bellek":"16GB (8GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"4800 MHz","SSD":"512GB","Ekran Boyutu":"15.6\"","Çözünürlük":"1920 x 1080","İşlemci Çekirdek":"6 Çekirdek","İşlemci Hızı MAX":"4.5 GHz","L3 Önbellek":"16MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 4000 Serisi","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"Yok","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.3","WebCam":"Var","Wireless":"Var","Bağlantı Arayüz":"PCI-Express 4.0 x4","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","İşlemci Hızı":"3.3 GHz","GPU Ram":"6GB","Dokunmatik Ekran":"Yok","Ağırlık":"1.86 kg"}', 'THIN A15 B7VE-076XTR

İşlemci: AMD Ryzen 5 7535HS (16MB Cache, up to 4.55 GHz)
İşletim Sistemi: FreeDOS
Ekran: 15.6" FHD (1920*1080), 144Hz
Chipset: Integrated SoC
Ekran Kartı: RTX 4050, GDDR6 6GB
Ekran Kartı Watt Değeri: 35W+10W (Dynamic Boost ile)
Hafıza: DDR V 16GB (8GB*2, 4800MHz)
Hafıza yuvası: 2 Slot
Maksimum Hafıza: Max 64GB
Depolama Kapasitesi: 512GB NVMe SSD
Depolama Seçenekleri: 1x M.2 SSD slot (NVMe PCIe Gen4)
Ön Kamera: HD type (30fps@720p)
Klavye: Blue Backlit Gaming Keyboard
Pil: 3-Cells, 52.4 Whr
Güç Adaptörü: 120W
Boyutlar: 359 x 254 x 21.7 mm
Ağırlık: 1.86 kg
OYUNUN USTASI OL
Gökyüzünde devasa şimşekler çakıyor; dağların ardından ejderhalar yükseliyor, oyun dünyasının enginliği ve mucizeleri keşfedilmeyi bekliyor. Thin 15 yolculuğunuz için mükemmel bir yol arkadaşı! İkonik ince kasa şimdi yepyeni kozmos grisi rengi ve yükseltilmiş donanımıyla geliyor. Thin 15 ile gücünüzü gösterin ve oyun dünyasını özgürce, hızlıca deneyimleyin!

21.7 mm inceliğinde

YENİ OYUN STANDARDI
Yeni performans çağına hoş geldiniz. AMD Ryzen 7035HS Serisi, "Zen 3+" hızı ile oyuncular ve içerik oluşturucular için dijital ortamda her türlü oyun veya iş akışının üstesinden gelir. AMD Ryzen 7035HS Serisi işlemciler, 6 çekirdek ve 16 thread ile oyunun kurallarını değiştiren bir performans sunuyor.
Yepyeni 7035 Serisi - Yeni Zen3+ CPU Nesli - 6 çekirdek (max)

GEFORCE RTX 40 SERİSİ LAPTOPLAR HIZLIDAN DA ÖTE
GEFORCE RTX 40 SERİSİ LAPTOPLAR HIZLIDAN DA ÖTE NVIDIA® GeForce RTX™ 40 Serisi Laptop GPU-lar oyuncu ve tasarımcılar için dünyanın en hızlı laptoplarına güç verir. Ultra verimli Ada Lovelace mimarisi ile üretilen bu grafik işlemciler YZ destekli DLSS 3 ile tam Ray Tracing kullanarak performansta bir kuantum sıçraması yaratarak gerçeğinden farksız sanal dünyalar yaratır. Ek olarak Max-Q teknolojileri ile sistem performansını, güç özelliklerini, batarya süresini ve gürültü seviyesini optimize ederek zirve performans sunar.

GEFORCE RTX 40 SERİSİ LAPTOPLAR - OYUNCU VE TASARIMCILAR İÇİN HIZLIDAN DA ÖTE
YZ DESTEKLİ PERFORMANS VE EN GERÇEKÇİ GRAFİKLER*
YZ destekli DLSS 3 ile oyunlar ve tasarım yazılımlarında kuantum sıçramasına tanık olun, tam Ray Tracing ile en gerçekçi sanal dünyalara dalın.
RAY TRACING
HİPER-GERÇEKÇİ. HİPER-HIZLI.
Ada mimarisi, ışığın gerçek dünyadaki davranışın taklit eden ışın izleme hesaplarını tüm ihtişamıyla öne çıkarır. RTX 40 serisinin gücü ve 3.Nesil RT çekirdekleri ile daha önce tanık olmadığınız detaylara sahip sanal dünyaları keşfe çıkacaksınız.
GÜÇ VE PERFORMANS İÇİN OPTİMİZE EDİLDİ.
NVIDIA Max-Q sisteminizi zirve verimlilik için optimize eden YZ destekli gelişmiş bir teknolojiler bütünüdür. Bu sayede ince, sessiz ve inanılmaz batarya süresine sahip, yıldırım hızında laptoplar üretilir.
* Cyberpunk 2077 görüntüsü yeni Ray Tracing: Overdrive Modu açık iken masaüstü bilgisayarda elde edilmiştir. Yalnızca temsil amaçlıdır. Gerçek performans değerleri sistem özelliklerine göre değişir.

NVIDIA Reflex - ZAFERİN BEDELİ BİR MİLİSANİYE OLABİLİR
NVIDIA Reflex en düşük gecikme oranı ve en iyi tepki ile rekabette nihai avantajı sunuyor. Sistem gecikmesini ölçmek ve optimize etmek için üretilen Reflex, rekabet tabanlı oyunlarda daha hızlı hedef belirleme, nişan alma ve tepki süresi sunar.

Sanal Gerçeklik
En yüksek performanslı grafikler ile en akıcı ve en sürükleyici VR deneyimini yaşayın.

Resizable Bar
Resizable BAR, işlemcinizin GPU çerçeve belleğinin tamamına tek seferde erişerek birçok oyunda performans arttırmasını sağlayan gelişmiş bir PCI Express özelliğidir.

AĞIR YÜK ALTINDA BİLE SESSİZ VE SERİN
Yük altında bile farkedilir derecede sessiz ve serin. Her ortama kolayca uyum sağlar.
CPU+GPU burn-in testi sırasında Throttle öncesi test edilmiştir.
* Düşük değerler daha iyidir. Sonuçlar konfigürasyon ve ortam özelliklerine göre değişebilir.

YILDIRIM HIZINDA VE AKICI GÖRÜNTÜ
Gaming laptoplarımız oyuncular için tasarlanmış ve ileri derecede optimize edilmiştir. Ekran yüksek tazeleme oranı ve akıcı görselleri ile gelecek nesil oyun deneyimi yaşamanıza olanak tanır.
• 15.6" İnce Çerçeveli Ekran
• 144Hz Tazeleme oranı
• Matrix Ekran

KAPSAMLI BAĞLANTI ÖZELLİKLERİ
Thin 15 tüm cihazlarınızı kolayca bağlayabileceğiniz kapsamlı bağlantı özellikleri ile gelir.

MÜZİK BÖYLE OLMALI
Üstün kaliteli Hi-Res ses bileşenleri ile kayıpsız bir müzik deneyimi yaşayın.
OLAĞANÜSTÜ KABLOSUZ DENEYİMİ
En yeni Wi-Fi 6E, ağı çok sayıda kullanıcıyla paylaşırken bile çarpıcı bir hız sunarak ağın sorunsuz ve kararlı olmasını sağlar.
COŞKULU SES DENEYİMİ
DTS, oyuncular için doğru ses yerleşimi sunarak rekabet avantajı sağlar.
TÜM ÖZELLİKLER BİR ARADA
Özel MSI Center yazılımı, MSI laptopunuzu istediğiniz şekilde özelleştirmenize yardımcı olur.
KESİNTİSİZ OYUN DENEYİMİ
BlueStacks ile yapılan özel işbirliği ile geliştirilen MSI APP Player, mobil oyunlar ve PC platformu arasında kesintisiz geçiş yapabilmenize olanak tanıyor.', '[{"comment_title":"genel olarak bilgisayar hakkındaki düşüncelerim","user":"(K***** M*****)","content":"Bilgisayarı alalı 1 ay civarı oldu genel olarak tatmin ediyor. Sadece tek fan olduğu için oyunlarda biraz ısınıyor Cs valorant gibi oyunlarda 200-250 arası fps alıyor tam bir fiyat performans ürünü alanlara hayırlı olsun."},{"comment_title":"fiyatina gore fazlasiyla guzel","user":"(r***** .*****)","content":"cs2 benzeri agir oyunlar oynarken isinma problemi kacinilmaz fakat fanlari max duzeye cekince yinede oynanabilir isinma sorunu disinda hicbi problemini gormedim daha 10/8"},{"comment_title":"makul bır performans","user":"(E***** M*****)","content":"bence yeterli seviyede"},{"comment_title":"MSI THIN","user":"(K***** F*****)","content":"Cihaz güzel, laptoptan bekleyeceğiniz her şeyi veriyor ama sadece eksilere değinmek istiyorum: 1) Şarj konusu biraz sıkıntı. Yani 2 saatten fazla şarjsız kullanamazsınız. 2) Ekran kartının RAM''i 6GB olduğu için NVIDIA''nın yapay zekasını desteklemiyor. Minimum 8GB gerektiriyor bilgisayar içi yapay zekası."},{"comment_title":"Laptop","user":"(A***** D*****)","content":"Daha alalı 1 hafta oldu mükemmel bir laptop hem soğutması olsun hem oyun sistemiyle mükemmel bir laptop alınması gereken bir laptop"},{"comment_title":"GÜZEL CİHAZ","user":"(C***** K*****)","content":"Cihaz güzel ancak kargo elime çok geç ulaştı Salı günü sipariş vermiştim Perşembe günü kargoya verildi cuma günü elime ulaştı kapalı kutu laptop sonuçta neden bu kadar geç verildi anlam veremedim onun dışında paketleme güzel, cihazı beğendim. Alınabilir."},{"comment_title":"Gaming laptop","user":"(A***** T*****)","content":"Ürün paketlemesi 10 numara olmuş Bilgisayarım cok iyi ve tamamen fp ürünüdür kaçırmadan alın derim ellerinize sağlık itopya ailesi teşşekürler"},{"comment_title":"HARİKA!","user":"(M***** K*****)","content":"Bu benim aldığım ilk oyuncu laptop''u oldu ve çok memnunum. Cihaz gerçekten iyi ve hızlı, tam bir şimşek. Oyun performansı çok iyi. MSI Center uygulaması ile \\Cooling\\ açınca, ısınma sorunu olmuyor. Oyun dışı kullanımda şarj gayet iyi ve laptop çok sessiz. İnanılmaz bir ürün!"},{"comment_title":"ÇOK İYİ","user":"(Ö***** Ç*****)","content":"HIZLI KARGO GÜZEL ÜRÜN UCUZ FİYAT KALİTE"},{"comment_title":"Harika","user":"(C***** Y*****)","content":"Hiç ses çıkarmıyor maşallah , Usb girişleri sert biraz onun dışında hiçbir sıkıntısı yok , bu fiyata alabileceğiniz en iyi oyuncu bilgisayarı."},{"comment_title":"30k altına alınır kesinlikle","user":"(A***** Y*****)","content":""},{"comment_title":"","user":"","content":""},{"comment_title":"","user":"","content":""},{"comment_title":"","user":"","content":""},{"comment_title":"","user":"","content":""},{"comment_title":"","user":"","content":""}]'),
  ('Lenovo LOQ 15IAX9 i5-12450HX 16GB DDR5 RTX 4050 6GB GDDR6 512GB M.2 SSD 15.6" 144Hz FHD G-SYNC FreeDos Gaming Notebook', '57.834,00 TL', 'https://www.itopya.com/lenovo-loq-15iax9-i5-12450hx-16gb-ddr5-rtx-4050-6gb-gddr6-512gb-m2-ssd-156-144hz-fhd-g-sync-freed_u29078', '{"İşlemci Modeli":"Core i5 12450HX","İşlemci Nesil":"Intel 12.Nesil","GPU Model":"GeForce RTX 4050","Mevcut Ram Bellek":"16GB (8GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"5200 MHz","SSD":"512GB","Ekran Boyutu":"15.6\"","Çözünürlük":"1920 x 1080","İşlemci Çekirdek":"12 Çekirdek","İşlemci Hızı MAX":"4.4 GHz","L3 Önbellek":"12MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 4000 Serisi","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"DisplayPort 1.4 x 1 C Tipi","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"802.11ax Wireless LAN","Bluetooth":"Bluetooth v5.2","WebCam":"Var","Wireless":"Var","Bağlantı Arayüz":"USB 3.2 / C Tipi, RJ45, HDMI 2.1, 3.5mm Jak, USB 3.2","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Dokunmatik Ekran":"Yok","Ağırlık":"2.38 kg"}', 'Lenovo LOQ 15IAX9 i5-12450HX 16GB DDR5 RTX 4050 6GB GDDR6 512GB M.2 SSD 15.6" 144Hz FHD G-SYNC FreeDos Gaming Notebook', '[]'),
  ('Lenovo LOQ 15ARP9 R5 7235HS 24GB DDR5 RTX 3050 6GB GDDR6 512GB M.2 SSD 15.6" FHD 144Hz G-SYNC FreeDos Gaming Notebook', '54.648,00 TL', 'https://www.itopya.com/lenovo-loq-15arp9-r5-7235hs-24gb-ddr5-rtx-3050-6gb-gddr6-512gb-m2-ssd-156-fhd-144hz-g-sync-freedo_u28007', '{"İşlemci Modeli":"Ryzen 5 7235HS","İşlemci Nesil":"Ryzen 5000 Serisi","GPU Model":"GeForce RTX 3050","Mevcut Ram Bellek":"24GB (12GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"1732 MHz","SSD":"512GB","Ekran Boyutu":"15.6\"","Çözünürlük":"1920 x 1080","Desteklenen Max Ram Bellek":"32GB (16GB x 2)","İşlemci Çekirdek":"4 Çekirdek","İşlemci Hızı MAX":"4.2 GHz","L3 Önbellek":"8MB","GPU Üretici":"AMD","GPU Seri":"GeForce 3000 Serisi","USB 3.2":"USB 3.2 x 1, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"Yok","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"802.11ax Wireless LAN","Bluetooth":"Bluetooth v5.2","WebCam":"Var","Wireless":"Var","Bağlantı Arayüz":"HDMI 2.1","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"2.38 kg"}', 'Lenovo LOQ 15ARP9 R5 7235HS 24GB DDR5 RTX 3050 6GB GDDR6 512GB M.2 SSD 15.6" FHD 144Hz G-SYNC FreeDos Gaming Notebook', '[{"comment_title":"olur.","user":"(E***** T*****)","content":"bence fiyatının hakkını veriyor bir çok oyunu oynayabiliyorum örn. bf1 ve diger oyunlar sadece sarja kullandıgınzda fan sesi çıkıyor ama modları oldugu için odak modunda ses tamemen kesiliyor bu ses de oyun bilgisayarı olmasından dolayı kaynaklanıyor hem ders hemde oyun için bütcenize göre en iyi seçim olabilir tek eksik yönü sarjı çok çabuk bitiyor"},{"comment_title":"Tek kelime ile mükemmel","user":"(E***** B*****)","content":"Gayet güzel bir laptop. Tavsiye ederim"},{"comment_title":"Yeni aldım 5","user":"(H***** N*****)","content":"Ve gayet güzel çok beğendim"}]'),
  ('ASUS TUF GAMING F16 FX608JH-RV010 i5-13450HX 16GB DDR5 512 GB SSD RTX 5050 GDDR7 8GB 16" FHD FreeDos Gaming Notebook', '47.999,00 TL', 'https://www.itopya.com/asus-tuf-gaming-f16-fx608jh-rv010-i5-13450hx-16gb-ddr5-512-gb-ssd-rtx-5050-gddr7-8gb-16-fhd-freedos_u29526', '{"İşlemci Modeli":"Core i5 13450HX","İşlemci Nesil":"Intel Core Serisi (1)","GPU Model":"GeForce RTX 5050","Mevcut Ram Bellek":"16GB (16GB x 1)","Ram Tipi":"DDR5","Ram Hızı":"5600 Mhz","SSD":"512GB","Ekran Boyutu":"16\"","Çözünürlük":"1920 x 1200","Desteklenen Max Ram Bellek":"64GB","İşlemci Çekirdek":"10 Çekirdek","İşlemci Hızı MAX":"4.6 GHz","L3 Önbellek":"20MB","GPU Üretici":"NVIDIA","GPU Seri":"Yok","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"DisplayPort 1.4 x 1 C Tipi","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.3","WebCam":"Var","Wireless":"Var","Bağlantı Arayüz":"USB 3.2 / C Tipi, RJ45, HDMI 2.1, USB 3.2","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"2.2 kg"}', 'FX608JH-RV010-Gaming

ASUS TUF Gaming F16

Sağlam performans, yüksek zafer.

Taşınabilir güç merkezi

TUF Gaming ailesinin bir üyesi olarak F16, En iyi oyunlara erişmenizi sağlayan bazı ciddi etkileyici özelliklere sahiptir. Intel® Core™ i5-13450HX ve NVIDIA® GeForce RTX™ 50 serisi kadar Dizüstü Bilgisayar GPU''su içeren F16, en yeni oyunları kolayca oynayabilir veya iş akışınızı programa uygun tutabilir. Yuva başına 16 GB''a kadar DDR5 5600 MHz bellek ve 512 GB''a kadar genişletilebilir PCIe Gen 4 depolama ile eşleştirilen bu küçük makine, kutudan çıkar çıkmaz her şeye hazırdır.



Yeni nesil güç

2025 TUF Gaming F16''mızın içindeki NVIDIA® GeForce RTX™ 50 serisi Dizüstü Bilgisayar GPU''su ile oyunun kurallarını değiştiren performansa hazır olun. Çoklu Kare Oluşturma ve Işın İzleme özellikli DLSS 4 gibi en son teknolojilere sahip olan F16, en yeni ve grafik olarak en yoğun oyunlarda inanılmaz deneyimler sunar.



GeForce RTX''te üst düzey yapay zeka performansı elde edin

RTX AI avantajını keşfedin. Yapay zeka çağı için tasarlanan GeForce RTX™ ve NVIDIA RTX™ GPU''lar, üstün performans ve yeni nesil özellikler sunan özel Yapay Zeka Tensör Çekirdeklerine sahiptir. Gelişmiş yaratıcılık ve ultra verimli üretkenlikten son derece hızlı oyunlara kadar, Windows PC''lerde en üst düzey yapay zeka gücü RTX''te.



Sağlam Performans

TUF Gaming F16 , hem oyun oynarken hem de çoklu görevlerde inanılmaz performans için çekirdeklere sahip Intel™® Belirli içerik oluşturma uygulamalarındaki yerleşik yapay zeka hızlandırma özelliğiyle TUF Gaming F16, oyun makinenizi savaş alanında ve savaş alanı dışında nasıl kullanacağınız konusunda size inanılmaz bir esneklik sunuyor.



Yardım her zaman elinizin altında

Windows 11''deki Copilot, yeteneklerinizi ve yaratıcılığınızı akıllı yardım ve ilgili yanıtlarla tamamlar.



ASKERİ SINIF DAYANIKLILIK

TUF Gaming adını kazanmak için bu dizüstü bilgisayarların zorlu MIL-STD-810H testlerinden başarıyla geçmesi gerekiyor. Test cihazları, güvenilirliği sağlamak için düşmelere, titreşime, neme ve aşırı sıcaklıklara maruz bırakılır. En zorlu koşullarda bile güvenilir olan A16, günlük yaşamın kazara çarpma ve darbelerine dayanabilecek kapasiteden daha fazlasıdır.




2. Nesil Ark Akışlı Fanlar

84 ana kanadın her birinin sonuna, hem motor verimliliğini hem de türbülansı artıran küçük kıvrımlar ekledik. Fanlar artık çift pervaneli bir tasarıma sahip ve içinde bir jet türbinine benzer şekilde her dönüşte daha fazla havanın emilmesine izin veren daha küçük bir 42 fan kanadı seti bulunuyor. Bu fanlar %16 daha az güç tüketirken hava akışını %11 artırarak içerideki yüksek performanslı bileşenlerin en iyi şekilde çalışmasını sağlar.



HİÇBİR ANI KAÇIRMAYIN

FHD+ 16:10 165Hz ekran sayesinde profesyonellere ayak uydurun. NVIDIA G-SYNC, ultra akıcı ve gerçekçi bir oyun deneyimi için gecikmeyi azaltmak, takılmayı en aza indirmek ve görsel yırtılmayı ortadan kaldırmak için ekranın yenileme hızını GPU''nun çıkışıyla senkronize eder. Bu panel, sRGB renk alanının %100''üne ulaşır ve renkleri tam olarak içerik oluşturucunun amaçladığı gibi üretir. 16 inçlik bir dizüstü bilgisayar kasasında bu çözünürlük, inanılmaz bir piksel yoğunluğuna sahiptir ve videolarınızın ve oyunlarınızın taşınabilirlikten ödün vermeden mümkün olduğunca sürükleyici olmasını sağlar.



TEKNİK ÖZELLİKLER:

İşlemci:13th Gen Intel® Core™ i5-13450HX Processor 2.4 GHz (20M Cache, up to 4.6 GHz, 10 cores: 6 P-cores and 4 E-cores)
İşletim Sistemi:Without OS
Bellek:16GB DDR5-5600 SO-DIMM
Ekran Kartı:NVIDIA® GeForce RTX™ 5050 Laptop GPU 8GB DDR7 - 115W (100W+15W)
Depolama:512GB PCIe® 4.0 NVMe™ M.2 SSD
Ekran: 16" FHD+ 16:10 (1920 x 1200, WUXGA) 165Hz, 300 nits, parlama önleyici ekran, IPS-level panel ekran
Video Kamera:1080P FHD IR Camera for Windows Hello
Network:Wi-Fi 6E(802.11ax) (Triple band) 2*2 + Bluetooth® 5.3 Wireless Card (*Bluetooth® version may change with OS version different.)
USB Port:
1x RJ45 LAN port
1x USB 3.2 Gen 2 Type-C with support for DisplayPort™ / G-SYNC (data speed up to 10Gbps)
1x USB 3.2 Gen 2 Type-C with support for DisplayPort™ / power delivery (data speed up to 10Gbps)
3x USB 3.2 Gen 2 Type-A (data speed up to 10Gbps)

1x HDMI 2.1 FRL
Ses:
AI noise-canceling technology

Dolby Atmos

Hi-Res certification (for headphone)

Support Microsoft Cortana near field/far field

Klavye Tipi: Backlit Chiclet Keyboard 1-Zone RGB
Güç Adaptörü:
Rectangle Conn, 280W AC Adapter,
Output: 20V DC, 14A, 280W
Input: 100~240C AC 50/60Hz universal
Batarya:90WHrs, 4S1P, 4-cell Li-ion
Boyutlar:35.4 x 26.9 x 1.79 ~ 2.73 cm
Ağırlık:2.20 Kg
Renk:Jaeger Gray', '[]'),
  ('Lenovo LOQ Essential 15IRX11 i5-13450HX 16GB DDR5 RTX5050 GDDR7 8GB 512GB SSD 15.6" FHD 144Hz FreeDos Notebook', '59.400,00 TL', 'https://www.itopya.com/lenovo-loq-essential-15irx11-i5-13450hx-16gb-ddr5-rtx5050-gddr7-8gb-512gb-ssd-156-fhd-144hz-freedo_u31036', '{"İşlemci Modeli":"Core i5 13450HX","İşlemci Nesil":"Intel 13.Nesil","GPU Model":"GeForce RTX 5050","Mevcut Ram Bellek":"16GB (16GB x 1)","Ram Tipi":"DDR5","Ram Hızı":"4800 MHz","SSD":"512GB","Ekran Boyutu":"15.6\"","İşlemci Çekirdek":"10 Çekirdek","İşlemci Hızı MAX":"4.6 GHz","L3 Önbellek":"20MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 5000 Serisi","USB 3.2":"USB 3.2 x 2, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"Yok","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.2","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos"}', 'Lenovo LOQ Essential 15IRX11 i5-13450HX 16GB DDR5 RTX5050 GDDR7 8GB 512GB SSD 15.6" FHD 144Hz FreeDos Notebook', '[]'),
  ('MSI KATANA 17 HX B14WFK-252XTR i7 14650HX 32GB DDR5 RTX5060 GDDR7 8GB 1TB SSD 17.3" QHD 240Hz FreeDos Notebook', '83.505,16 TL', 'https://www.itopya.com/msi-katana-17-hx-b14wfk-252xtr-i7-14650hx-32gb-ddr5-rtx5060-gddr7-8gb-1tb-ssd-173-qhd-240hz-freed_u31071', '{"İşlemci Modeli":"Core i7 14650HX","İşlemci Nesil":"Intel 14.Nesil","GPU Model":"GeForce RTX 5060","Mevcut Ram Bellek":"32GB (16GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"5600 Mhz","SSD":"1TB","Ekran Boyutu":"17.3\"","İşlemci Çekirdek":"16 Çekirdek","İşlemci Hızı MAX":"5.2 GHz","L3 Önbellek":"30MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 5000 Serisi","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"DisplayPort x 1","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.3","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"2.7 kg"}', 'KATANA 17 HX B14WFK-252XTR

İşlemci: Intel Core i7-14650HX Processor (30MB Cache, up to 5.2 GHz)
İşletim Sistemi: FreeDos
Ekran: 17.3" QHD (2560*1440), 240Hz
Chipset: Intel HM770
Ekran Kartı: RTX 5060, GDDR7 8GB
Ekran Kartı Watt Değeri: 100W+15W (Dynamic Boost ile)
Hafıza: DDR5 32GB (16GB*2, 5600MHz)
Maksimum Hafıza: Max 96GB
Hafıza yuvası: 2 Slot
Depolama Kapasitesi: 1TB NVMe PCIe SSD Gen4x4 w/o DRAM
Depolama Seçenekleri: 1x M.2 SSD slot (NVMe PCIe Gen4)
Ön Kamera: HD type (30fps@720p)
Klavye: 4-Zone RGB Gaming Keyboard with Copilot Key
Pil: 4-Cells, 75Whr
Güç Adaptörü: 240W
Boyutlar: 398 x 275.6 x 27.8 mm
Ağırlık: 2.7 kg
Renk: Siyah
Garanti Süresi: 24 ay
OYUNU KESKİNLEŞTİR
Onurunu koru, rakiplerini dize getir. Ejderhanın mirası ile içinde taşıdığın gücü uyandır. Ejderhanın Kılıcı kadim bir güç ile dövüldü, rünler ile bezendi ve efsanevi Katana 17 HX olarak düşmanları ezip geçmeye hazır!



Oyuncular için Zirve Performans Intel® Core™ i7 14650HX İşlemci
Oyun performansında gücün merkezi ile tanışın. Intel® Core™ i7 14650HX işlemci oyun denyiminizi bir üst seviyeye taşımak için tasarlandı. Yüksek çekirdek sayısı ve yıldırım hızındaki saat frekansları ile bu oyun odaklı işlemci oyuncuların aradığı tepki ve hızı sunuyor.
• 16 Çekirdek 8 P-Core + 8 E-Core - • 5.2 GHz P-core Max Turbo Frekansı

GeForce RTX 50 Serisi Laptoplar Oyunun Kurallarını Değiştiriyor
NVIDIA Blackwell mimarisine sahip GeForce RTX™ 50 serisi GPU’lar oyuncu ve tasarımcılara ezber bozan özellikler sunuyor. İnanılmaz AI gücüne sahip RTX 50 serisi yeni deneyimler için gelecek nesil grafik yeteneklerine sahip. NVIDIA DLSS 4 ile performansınızı katlayın, görüntüleri daha önce görülmemiş bir hızla üretin ve NVIDIA Studio ile yaratıcılığınızı özgür bırakın. Tüm bu özellikler uzun batarya ömrüne sahip incecik RTX laptoplarda, Max-Q ile optimize edilmiş olarak geliyor.

Oyunun Kuralları Değişiyor
GEFORCE RTX 50 SERİSİ LAPTOPLAR
NVIDIA Blackwell ile Üstün Hız, Üstün Görseller
Üstün Hız. Üstün Görseller.
DLSS 4, en popüler oyunlarda görüntü kalitesini ve performansı arttırmak için Yapay Zekanın gücünü kullanır.
Oyun Kazandıran Tepki Hızı
NVIDIA Reflex 2, Frame Warp özelliği ile hedefi daha hızlı belirlemeniz, daha çabuk tepki vermeniz ve daha doğru nişan almanız için sisteminizi optimize eder.
Gerçeğe Sadık Grafikler
Tam Ray Tracing ve çığır açan nöral görüntü oluşturma teknolojileri ile daha önce görülmemiş bir hızda ve sinematik kalitede görsellerin keyfini çıkarın.

Yapay Zeka Sizin İçin Hazır
MSI Gaming laptoplar NVIDIA NIM için hazır olarak gelir. Dil, konuşma, görüş, içerik üretimi gibi kullanımlar için optimize edilmiş AI modellerinden oluşan NVIDIA NIM mikroservislerini çalıştırmak için optimize edilmişlerdir. Bu araçlar sayesinde hem meraklılar hem de geliştiriciler RTX AI PC’ler üzerinde yerel olarak AI asistanlar yazabilir, üretkenlik için eklentiler geliştirebilir veya yenilikçi içerikler oluşturabilirler. Yarının yapay zekası bugün NVIDIA RTX™ ile şekillendirin.

NVIDIA DLSS 4
Üstün Hız. Üstün Görseller. AI ile Güçlendirildi.
NVIDIA DLSS, AI kullanarak FPS değerini arttırmak, gecikmeyi azaltmak ve görüntü kalitesini geliştirmek için yapay sinir ağı tabanlı render özellikleri kullanan bir dizi devrim niteliğinde teknolojiden oluşur. DLSS 4 ile gelen yeni Çoklu Çerçeve Üretimi, geliştirilmiş Işın Yeniden Üretme ve Süper Çözünürlük gibi özellikler GeForce RTX 50 serisi GPU’lar ve 5.Nesil Tensor çekirdekleri ile sağlanır. GeForce RTX üzerinde DLSS oyun oynamanın en iyi yoludur. PC’nizin oyun yetenekleri Buluttaki bir NVIDIA AI süper bilgisayar tarafından sürekli olarak desteklenir.

Tam Ray Tracing ve Nöral Işın İzleme
Ezber Bozan Gerçekçilik
NVIDIA Blackwell mimarisine sahip GeForce RTX 50 serisi GPU’lar, Full Ray Tracing sayesinde oyunun kurallarını değiştiren bir gerçeklik sunar. 5.Nesil Tensor çekirdekleri ile hızlandırılmış çığır açan nöral render teknolojileri ve 4.Nesil RT çekirdekleri ile sinematik görüntü kalitesini deneyimleyin.

Şimdi Daha da Zeki
Copilot ve MSI AI Engine ile kesintisiz multitasking özelliklerini daha akıllı bir üretkenlikle deneyimleyin. Bu gelişmiş AI araçları ihtiyaçlarınıza uyum sağlayarak performansı optimize eder ve iş akışlarınızı zahmetsizce tamamlamanıza yardımcı olur.
Microsoft Copilot ile verimlilik ve yenilikçilik
Copilot
Windows üzerinde AI asistanınız Copilot ile yepyeni fırsatları keşfedin, çekici içerikler üretin, problemleri daha çabuk çözün. Veri güvenliğini, gizliliği ve uyumluluğu geliştirmek için Copilot, çalışanlar Microsoft Entra ID hesapları ile oturum açtıklarında kurumsal veri koruma özelliği sunar.
* Copilot şimdilik yalnızca seçili pazarlarda mevcuttur. Zaman içinde diğer pazarlarda da sunulacaktır.
*Geçerli bir Microsoft 365 lisansı gerektirir.

MSI’ın özel laptop kontrol merkezi ve AI çözümleri ile MSI laptoplar üretkenliğinizi zincirlerden kurtarıyor.
AI Engine
MSI AI Engine kullanım senaryosunu algılayarak sisteminizi en iyi performans için ayarlar. AI ile yapılmış modlar ve kaynaklar sayesinde tasarım, iş ve eğlence gibi farklı önceliklerinize odaklanabilirsiniz.

Eşsiz Görseller
MSI Gaming laptoplar yükse çözünürlük ve tazeleme hızı ile oyuncular için özel olarak üretildi. Oyun dünyanızı her zamankinden daha gerçek ve daha akıcı deneyimleyin.
*Seçime bağlı. Gerçek özellikler konfigürasyona göre değişiklik gösterebilir.
QHD Çözünürlük - 240Hz Tazeleme Hızı - P3 %100 DCI-P3

Oyun Tarzınızı Işıklandırın
Katana serisi 4 bölgeli RGB klavye ve özel olarak ışıklandırılmış WASD tuş kapakları ile gelir. Enerjisi ile ışıl ışıl parıldayan bir oyun deneyimini kendi tarzınızda yaşayın!
4 Bölgeli RGB Gaming klavye - 1.7mm Tuş hareket mesafesi - Oyuncular için ışıklandırmalı WASD tuşları - Numerik tuş takımı

Güçlendirilmiş Soğutma Çözümü
Yeni Shared Pipe özelliği, CPU ve GPU’ya bağlı tek bir heatpipe ile termal yetenekleri geliştirir CPU performansını arttırır. MSI Cooler Boost 5 ile oyuncular karmaşık oyun dünyalarını hiçbir ödün vermeden keşfedebilirler.
CPU & GPU - PAYLAŞIMLI SOĞUTMA BORUSU TASARIMI - 2 Fan - 5 Heat Pipe

Daha hızlı tepki
DDR5 belleğin hızlı okuma/yazma özellikleri sayesinde sisteminizin performansı her seviyede artar.
Sihir gibi yükleme hızları
Uç noktada performans ve 7.88 GB/sn-ye varan bant genişliği ile PCIe Gen 4 arayüzü kullanıcılar her oyunu ve her görevi yıldırım hızında açabilecekler.
MÜZİK BÖYLE OLMALI
Üstün kaliteli Hi-Res ses bileşenleri ile kayıpsız bir müzik deneyimi yaşayın.
TÜM ÖZELLİKLER BİR ARADA
Özel MSI Center yazılımı, MSI laptopunuzu istediğiniz şekilde özelleştirmenize yardımcı olur.
SIRADIŞI KABLOSUZ DENEYİMİ
En yeni Wi-Fi 6E, ağı çok sayıda kullanıcıyla paylaşırken bile ağın sorunsuz ve kararlı olmasını sağlarken çarpıcı bir hız sunar.

PD Şarj özelliği: 100W PD şarj desteği (20V@5A) sistem çalışırken (S0) ve Uyku modunda (Modern Standby düşük güçte bekleme modu), 45W(20V@23.25A) ve üzeri 100W(20V@5A)-a kadar Hazırda bekleme (S4), Kapalı (S5) iken sunulur. Genel sistem performansı şarj akımına uyum sağlamak için değişebilir. Şarj hızı sistem ve batarya durumuna göre değişiklik gösterir. MSI PD Şarj cihazı kullanılması tavsiye edilir.

LAPTOPTA OKUYUCUNUN SEÇİMİ ÖDÜLÜ SAHİBİ -
5 YIL ARKA ARKAYA
“Bu yıl, okuyucularımızın özellikle oyun deneyimi için derecelendirdiği dizüstü bilgisayarlar için her ölçütte başarılı oldu; bu da MSI-ın uzmanlık alanı.”
- PCMag 2025', '[]'),
  ('ASUS TUF GAMING A16 FA607NUG RL125 Ryzen 7 7445HS 16GB DDR5 RTX4050 6GB 512 GB SSD 16" FHD 144Hz FreeDos Gaming Notebook', '53.879,58 TL', 'https://www.itopya.com/asus-tuf-gaming-a16-fa607nug-rl125-ryzen-7-7445hs-16gb-ddr5-rtx4050-6gb-512-gb-ssd-16-fhd-144hz-fre_u31782', '{"İşlemci Modeli":"Ryzen 7 7445HS","İşlemci Nesil":"Ryzen 7000 Serisi","GPU Model":"GeForce RTX 4050","Mevcut Ram Bellek":"16GB","Ram Tipi":"DDR5 SO-DIMM","Ram Hızı":"5600 Mhz","SSD":"512GB","Ekran Boyutu":"16\"","Desteklenen Max Ram Bellek":"64GB","İşlemci Çekirdek":"6 Çekirdek","İşlemci Hızı MAX":"3.2 GHz","L3 Önbellek":"22 MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 4000 Serisi","USB 3.2":"USB 3.2 x 2, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"Yok","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"802.11ax Wireless LAN","Bluetooth":"Bluetooth v5.3","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"2.2 kg"}', 'FA607NUG-RL125-Gaming

ASUS TUF Gaming A16

Geniş Ekran. Mekanize Güç

Oyun deneyiminizi AMD Ryzen™ 7 7445HS işlemci ve NVIDIA® GeForce RTX™ 4050 Laptop GPU’nun gücüyle üst seviyeye taşıyın. 144Hz G-SYNC destekli ekran, Dolby Atmos ve AI gürültü engelleme teknolojisiyle kristal netliğinde iletişim sunarken, 84 kanatlı Arc Flow Fan™, 5 ısı borusu ve 4 egzoz çıkışıyla üstün soğutma sağlıyor. 56Wh batarya, USB-C şarj desteği ve genişletilebilir PCIe Gen 4 depolama ile hem dayanıklı hem de performans odaklı bir kasa sunuyor.


Oyuna hazır

Oyun ve içerik üretimine AMD Ryzen™ 7 7445HS işlemci ve NVIDIA® GeForce RTX™ 4050 Laptop GPU’nun gücüyle dalın. TUF Gaming A16, NVIDIA® Advanced Optimus desteği, yüksek hızlı DDR5 RAM ve kolayca yükseltilebilen çift PCIe Gen 4x4 M.2 SSD yuvaları ile maksimum performans ve genişletilebilirlik sunar.


Oyun deneyiminizi yükseltin!

AMD Ryzen™ 7 7445HS işlemcisiyle oyun oynayın, yayın yapın ve her şeyi inanılmaz hızlarda gerçekleştirin. Bu yüksek performanslı işlemci, özellikle gelişmiş soğutma sistemleriyle desteklendiğinde, üst düzey oyun ve içerik üretimi için tasarlanmıştır.
Yapay Zeka ile Daha İleri, RTX ile Daha Hızlı

GeForce RTX ile yeni nesil yapay zeka performansını keşfedin! AI için özel olarak tasarlanan RTX™ GPU’lar, gelişmiş AI Tensor Çekirdekleri sayesinde devrim niteliğinde performans ve benzersiz yetenekler sunar. Yaratıcılığınızı artırın, üretkenliğinizi maksimuma çıkarın ve ultra hızlı oyun deneyimi yaşayın. Windows PC’lerde yapay zekanın gücü, bugün ve gelecekte RTX ile sizinle!


Sürükleyici Görseller

Gelecek netleşiyor! TUF Gaming A16 144Hz yenileme hızı ve 3ms tepki süresine sahip G-SYNC destekli ekranıyla inanılmaz bir oyun deneyimi sunuyor. İster hızlı tempolu FPS oyunlarını, ister sakin macera oyunlarını tercih edin, 16:10 en-boy oranına sahip ekranı ve %90 ekran-gövde oranına sahip ince çerçeveleriyle sizi aksiyonun tam ortasına çekecek.


Rakiplerini Geride Bırak

TUF Gaming A16, yüksek çekirdek sayısına sahip güçlü bir işlemciyle donatılmış olsa da, 84 kanatlı Arc Flow Fans™ sayesinde ısınma endişesi yaşamazsınız. Değişken kalınlıktaki bu fanlar, basıncı artırırken türbülansı azaltarak ekstra gürültü oluşturmadan üstün soğutma performansı sağlar. 4 egzoz çıkışı ve 5 özel ısı borusuyla birleştiğinde, TUF Gaming A16 en zorlu oyunlarda bile serinliğini korur.


Güç Seninle

İster oyun oynayın ister çalışın, 2024 TUF Gaming A16 sizi yarı yolda bırakmaz. Büyük bataryası sayesinde prizden uzak daha uzun süre kullanım sunarken, USB Type-C şarj desteği ile adaptörünüzü evde unutsanız bile esnek şarj imkanına sahip olursunuz.


Dayanıklılık Test Edildi, Güvenilirlik Kanıtlandı

TUF Gaming A16, MIL-STD-810H askeri dayanıklılık standartlarına uygun olarak titizlikle test edilmiştir. Titreşim ve darbelere karşı dirençli yapısıyla, yüksek irtifa ile aşırı sıcak ve soğuk koşullarda bile en yüksek performansını korur. Nerede olursanız olun, TUF Gaming A16 size her zaman güvenilir bir kullanım sunar.




TEKNİK ÖZELLİKLER:

İşlemci:AMD Ryzen™ 7 7445HS Processor 3.2GHz (22MB Cache, up to 4.7GHz, 6 cores, 12 Threads)
İşletim Sistemi:Without OS
Bellek:8GB DDR5-5600 SO-DIMM x2
Ekran Kartı:NVIDIA® GeForce RTX™ 4050 Laptop GPU 6GB GDDR6 (194 AI TOPs) 2420MHz* at 140W (2370MHz Boost Clock+50MHz OC, 115W+25W Dynamic Boost)
Depolama:512GB PCIe® 4.0 NVMe™ M.2 SSD
Ekran: 16"/FHD+ 16:10 (1920 x 1200, WUXGA) 300 nits, 144Hz, parlama önleyici ekran, Value IPS-level panel
Video Kamera:720P HD Kamera
Network:Wi-Fi 6(802.11ax) (Dual band) 2*2 + Bluetooth® 5.3 Wireless Card
I/O Port:
1x RJ45 LAN port

1x Type-C USB 4 with support for DisplayPort™ / power delivery (data speed up to 40Gbps)

1x USB 3.2 Gen 2 Type-C with support for DisplayPort™ / power delivery / G-SYNC (data speed up to 10Gbps)

2x USB 3.2 Gen 1 Type-A (data speed up to 5Gbps)

1x HDMI 2.1 FRL
Ses:
AI noise-canceling technology

Dolby Atmos

Hi-Res certification (for headphone)

Support Microsoft Cortana near field/far field
Klavye Tipi:Backlit Chiclet Keyboard 1-Zone RGB
Güç Adaptörü:
ø6.0, 240W AC Adapter,
Output: 20V DC, 12A, 240W,
Input: 100~240V AC 50/60Hz universal
Batarya:56WHrs, 4S1P, 4-cell Li-ion
Boyutlar:35.4 x 25.1 x 2.24 ~ 2.67 cm
Ağırlık:2.20 Kg
Renk:Mecha Gray


.cls-1{fill:#001e36;}.cls-2{fill:#31a8ff;}Photoshop Uzantısı Ekle', '[]'),
  ('ASUS TUF GAMING A15 FA506NCG-HN206 Ryzen 7 7445HS 16GB DDR5 RTX 3050 4GB 512 GB SSD 15.6" FHD 144Hz FreeDos Gaming Notebook', '42.930,00 TL', 'https://www.itopya.com/asus-tuf-gaming-a15-fa506ncg-hn206-ryzen-7-7445hs-16gb-ddr5-rtx-3050-4gb-512-gb-ssd-156-fhd-144hz-_u31463', '{"İşlemci Modeli":"Ryzen 7 7445HS","İşlemci Nesil":"Ryzen 7000 Serisi","GPU Model":"GeForce RTX 3050","Mevcut Ram Bellek":"16GB (8GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"5600 Mhz","SSD":"512GB","Ekran Boyutu":"15.6\"","İşlemci Çekirdek":"6 Çekirdek","İşlemci Hızı MAX":"4.7 GHz","L3 Önbellek":"16MB","GPU Üretici":"NVIDIA","GPU Seri":"RTX 3000 Serisi","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"Yok","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.3","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"2.3 kg"}', 'FA506NCG-HN206-Gaming

ASUS TUF Gaming A15


*VİDEODA BELİRTİLEN TEKNİK DONANIM DETAYLARI MODELE VE ÜLKEYE GÖRE DEĞİŞİKLİK GÖSTEREBİLİR.

REKABETİ GERİDE BIRAKIN

Ciddi oyunlar için tasarlanan ve yeni ve şık bir tarza sahip olan TUF Gaming A15, sizi zafere taşıyacak güce sahip, özelliklerle dolu bir dizüstü oyun bilgisayarıdır. Yeni GeForce RTX™ 3050 GPU, %62.5 sRGB ile 144 Hz-ye kadar ekranda akıcı bir oyun deneyimi sunarken, güçlü AMD Ryzen™ 7 7445HS, CPU performansını artıran ve akustiği gizli tutan gelişmiş soğutma ile destekleniyor. Uzun ömürlü 48 Wh pil ve TUF-un askeri düzeydeki dayanıklılığı, her yerde en iyi oyununuzu oynamanızı sağlar.


HER TÜRLÜ ZORLUĞUN ÜSTESİNDEN GELİN

Her zaman aksiyona hazır olan TUF Gaming A15, oyun, yayın ve bu ikisi arasındaki her şeyde mükemmeldir. AMD Ryzen™ 7 7445HS, çoklu görev ve daha fazlasını gerçekleştirmek için iş parçacığını etkinleştirir. Çok sayıda modern oyun için güvenilir bir şekilde yüksek kare hızları sunan en yeni GeForce RTX™ 3050 GPU ile oyun grafikleri akıcıdır. 512 GB-a kadar süper hızlı NVMe PCIe® SSD, yükleme sürelerini hızlandırırken açık SSD yuvası, tüm oyunlarınız için terabaytlarca daha fazla alan eklemenizi kolaylaştırır.



ZAFERE GİDEN HIZ

144Hz-e kadar hızlı, %100 sRGB IPS düzeyindeki panel ile profesyonel hızda oyun oynayın. Adaptive-Sync ile ekranın yenileme hızı, GPU-nun kare hızıyla senkronize edilerek gecikmeyi azaltır, takılmaları en aza indirir ve son derece akıcı ve sürükleyici bir oyun deneyimi için görsel yırtılmayı ortadan kaldırır. G-SYNC ® özellikli ve DisplayPort™ 1.4-ü destekleyen USB 3.2 Gen 2 Type-C™ aracılığıyla ikinci bir monitör bağlayarak çoklu görev becerilerinizi geliştirin. HDMI 2.0b ile 4K Ultra HD filmleri, videoları ve oyunları büyük ekran TV-lerde oynatın.



KRİSTAL NETLİĞİNDE SES

Dört kesimli iki hoparlör yüksek ve güçlü olup, daha derin bir ses deneyimi sağlar. DTS:X™ Ultra, net ve hassas ses için yüksek kaliteli ses sunar. Sanal 7.1 kanallı surround ses, oyun içi mekansal farkındalığı artırarak düşmanları alt etmenize yardımcı olur. Müzik, film ve oyun türleri için 8-e kadar önceden ayarlanmış mod, ayarlarınıza dilediğiniz gibi ince ayar yapmanızı sağlayan yerleşik ekolayzırın yanı sıra deneyiminizi daha da optimize eder.

SOĞUTMA

Kapsamlı soğutma, uzun vadeli sistem güvenilirliğini korur ve makinenizin ömrünü uzatır. Dört ısı borusu ve üç ısı emici, ısıyı donanımınızdan uzaklaştırır ve hızla dağıtarak bileşen sıcaklıklarını optimum seviyelerde tutar. Kendi Kendini Temizleyen Soğutma 2.0 tasarımı, soğutma sisteminizin uzun süre boyunca tam işlevsellik için kalıntılardan arınmış kalmasını sağlar. Ayarlanmış çalışma modları, elinizdeki göreve göre saat hızlarını ve akustiği dengeler ve ihtiyaçlarınıza göre özelleştirilebilir.



KAPSAMLI BAĞLANTI

Çok sayıda G/Ç bağlantı noktası, favori cihazlarınızı bağlamanıza ve istediğiniz yerde çalışmaya başlamanıza olanak tanır. İki adet USB 3.2 Tip-A bağlantı noktası, hızlı veri aktarımına olanak tanır ve ek bir USB 3.2 Tip-A bağlantı noktası, tercih edilen çevre birimleri için toplam üç giriş sağlar. Bluetooth ayrıca daha temiz, kablosuz bir çalışma alanı için fareleri, kulaklıkları ve diğer uyumlu cihazları eşleştirmenize de olanak tanır. İpeksi akıcı oyun deneyimi için süper hızlı bir G-SYNC™ ekranı bağlamak üzere DisplayPort™ 1.4-lü USB 3.2 Gen 2 Type-C™-yi kullanın. Wi-Fi-nin mevcut olduğu her yerde hızlı ve güvenilir bağlantı için 802.11AX (2x2) Wi-Fi ile çevrimiçi olun.



TEKNİK ÖZELLİKLER:

İşlemci:AMD Ryzen™ 7 7445HS Processor 3.2GHz (22MB Cache, up to 4.7GHz, 6 cores, 12 Threads)
İşletim Sistemi:Without OS
Bellek:8GB DDR5-5600 SO-DIMM x2
Ekran Kartı:NVIDIA® GeForce RTX™ 3050 Laptop GPU - Intel® UHD Graphics
Depolama:512GB PCIe® 4.0 NVMe™ M.2 SSD
Ekran: 15.6"/FHD (1920 x 1080) 16:9, 250 nits, 144Hz parlama önleyici ekran, Value IPS-level panel, Adaptive-Sync
Video Kamera:720P HD Kamera
Network:Wi-Fi 6(802.11ax) (Dual band) 2*2 + Bluetooth® 5.3 Wireless Card
I/O Port:
1x RJ45 LAN port

1x USB 3.2 Gen 2 Type-C with support for DisplayPort™ (data speed up to 10Gbps)

3x USB 3.2 Gen 1 Type-A (data speed up to 5Gbps)B69

Display output

1x HDMI 2.1 TMD
Ses:DTS software
Klavye Tipi:Backlit Chiclet Keyboard 1-Zone RGB
Güç Adaptörü:
ø6.0, 180W AC Adapter,
Output: 20V DC, 9A, 180W,
Input: 100~240V AC 50/60Hz universal
Batarya:48WHrs, 3S1P, 3-cell Li-ion
Boyutlar:35.9 x 25.6 x 2.28 ~ 2.45 cm
Ağırlık:2.30 Kg
Renk:Graphite Black', '[{"comment_title":"Başarılı","user":"(C***** D*****)","content":"Ürün gayet güzel ve tam bir fiyat performans canavarı. Bir yıldız kırmamın nedeni ürün için kurulum yapılma seçeneği olmalı ücret dahilinde de olsa Windows yüklenip gönderilse iyi olurdu YouTube videolarına bakarak hallettim Windows etkinleştirmek için de lisans satın aldım biraz uğraştım ama değdi."}]'),
  ('MSI KATANA 17 HX B14WFK-252XTR i7 14650HX 32GB DDR5 RTX5060 GDDR7 8GB 1TB SSD 17.3" QHD 240Hz FreeDos Notebook', '83.505,16 TL', 'https://www.itopya.com/msi-katana-17-hx-b14wfk-252xtr-i7-14650hx-32gb-ddr5-rtx5060-gddr7-8gb-1tb-ssd-173-qhd-240hz-freed_u31071', '{"İşlemci Modeli":"Core i7 14650HX","İşlemci Nesil":"Intel 14.Nesil","GPU Model":"GeForce RTX 5060","Mevcut Ram Bellek":"32GB (16GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"5600 Mhz","SSD":"1TB","Ekran Boyutu":"17.3\"","İşlemci Çekirdek":"16 Çekirdek","İşlemci Hızı MAX":"5.2 GHz","L3 Önbellek":"30MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 5000 Serisi","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 1","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"DisplayPort x 1","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.3","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"FreeDos","Ağırlık":"2.7 kg"}', 'KATANA 17 HX B14WFK-252XTR

İşlemci: Intel Core i7-14650HX Processor (30MB Cache, up to 5.2 GHz)
İşletim Sistemi: FreeDos
Ekran: 17.3" QHD (2560*1440), 240Hz
Chipset: Intel HM770
Ekran Kartı: RTX 5060, GDDR7 8GB
Ekran Kartı Watt Değeri: 100W+15W (Dynamic Boost ile)
Hafıza: DDR5 32GB (16GB*2, 5600MHz)
Maksimum Hafıza: Max 96GB
Hafıza yuvası: 2 Slot
Depolama Kapasitesi: 1TB NVMe PCIe SSD Gen4x4 w/o DRAM
Depolama Seçenekleri: 1x M.2 SSD slot (NVMe PCIe Gen4)
Ön Kamera: HD type (30fps@720p)
Klavye: 4-Zone RGB Gaming Keyboard with Copilot Key
Pil: 4-Cells, 75Whr
Güç Adaptörü: 240W
Boyutlar: 398 x 275.6 x 27.8 mm
Ağırlık: 2.7 kg
Renk: Siyah
Garanti Süresi: 24 ay
OYUNU KESKİNLEŞTİR
Onurunu koru, rakiplerini dize getir. Ejderhanın mirası ile içinde taşıdığın gücü uyandır. Ejderhanın Kılıcı kadim bir güç ile dövüldü, rünler ile bezendi ve efsanevi Katana 17 HX olarak düşmanları ezip geçmeye hazır!



Oyuncular için Zirve Performans Intel® Core™ i7 14650HX İşlemci
Oyun performansında gücün merkezi ile tanışın. Intel® Core™ i7 14650HX işlemci oyun denyiminizi bir üst seviyeye taşımak için tasarlandı. Yüksek çekirdek sayısı ve yıldırım hızındaki saat frekansları ile bu oyun odaklı işlemci oyuncuların aradığı tepki ve hızı sunuyor.
• 16 Çekirdek 8 P-Core + 8 E-Core - • 5.2 GHz P-core Max Turbo Frekansı

GeForce RTX 50 Serisi Laptoplar Oyunun Kurallarını Değiştiriyor
NVIDIA Blackwell mimarisine sahip GeForce RTX™ 50 serisi GPU’lar oyuncu ve tasarımcılara ezber bozan özellikler sunuyor. İnanılmaz AI gücüne sahip RTX 50 serisi yeni deneyimler için gelecek nesil grafik yeteneklerine sahip. NVIDIA DLSS 4 ile performansınızı katlayın, görüntüleri daha önce görülmemiş bir hızla üretin ve NVIDIA Studio ile yaratıcılığınızı özgür bırakın. Tüm bu özellikler uzun batarya ömrüne sahip incecik RTX laptoplarda, Max-Q ile optimize edilmiş olarak geliyor.

Oyunun Kuralları Değişiyor
GEFORCE RTX 50 SERİSİ LAPTOPLAR
NVIDIA Blackwell ile Üstün Hız, Üstün Görseller
Üstün Hız. Üstün Görseller.
DLSS 4, en popüler oyunlarda görüntü kalitesini ve performansı arttırmak için Yapay Zekanın gücünü kullanır.
Oyun Kazandıran Tepki Hızı
NVIDIA Reflex 2, Frame Warp özelliği ile hedefi daha hızlı belirlemeniz, daha çabuk tepki vermeniz ve daha doğru nişan almanız için sisteminizi optimize eder.
Gerçeğe Sadık Grafikler
Tam Ray Tracing ve çığır açan nöral görüntü oluşturma teknolojileri ile daha önce görülmemiş bir hızda ve sinematik kalitede görsellerin keyfini çıkarın.

Yapay Zeka Sizin İçin Hazır
MSI Gaming laptoplar NVIDIA NIM için hazır olarak gelir. Dil, konuşma, görüş, içerik üretimi gibi kullanımlar için optimize edilmiş AI modellerinden oluşan NVIDIA NIM mikroservislerini çalıştırmak için optimize edilmişlerdir. Bu araçlar sayesinde hem meraklılar hem de geliştiriciler RTX AI PC’ler üzerinde yerel olarak AI asistanlar yazabilir, üretkenlik için eklentiler geliştirebilir veya yenilikçi içerikler oluşturabilirler. Yarının yapay zekası bugün NVIDIA RTX™ ile şekillendirin.

NVIDIA DLSS 4
Üstün Hız. Üstün Görseller. AI ile Güçlendirildi.
NVIDIA DLSS, AI kullanarak FPS değerini arttırmak, gecikmeyi azaltmak ve görüntü kalitesini geliştirmek için yapay sinir ağı tabanlı render özellikleri kullanan bir dizi devrim niteliğinde teknolojiden oluşur. DLSS 4 ile gelen yeni Çoklu Çerçeve Üretimi, geliştirilmiş Işın Yeniden Üretme ve Süper Çözünürlük gibi özellikler GeForce RTX 50 serisi GPU’lar ve 5.Nesil Tensor çekirdekleri ile sağlanır. GeForce RTX üzerinde DLSS oyun oynamanın en iyi yoludur. PC’nizin oyun yetenekleri Buluttaki bir NVIDIA AI süper bilgisayar tarafından sürekli olarak desteklenir.

Tam Ray Tracing ve Nöral Işın İzleme
Ezber Bozan Gerçekçilik
NVIDIA Blackwell mimarisine sahip GeForce RTX 50 serisi GPU’lar, Full Ray Tracing sayesinde oyunun kurallarını değiştiren bir gerçeklik sunar. 5.Nesil Tensor çekirdekleri ile hızlandırılmış çığır açan nöral render teknolojileri ve 4.Nesil RT çekirdekleri ile sinematik görüntü kalitesini deneyimleyin.

Şimdi Daha da Zeki
Copilot ve MSI AI Engine ile kesintisiz multitasking özelliklerini daha akıllı bir üretkenlikle deneyimleyin. Bu gelişmiş AI araçları ihtiyaçlarınıza uyum sağlayarak performansı optimize eder ve iş akışlarınızı zahmetsizce tamamlamanıza yardımcı olur.
Microsoft Copilot ile verimlilik ve yenilikçilik
Copilot
Windows üzerinde AI asistanınız Copilot ile yepyeni fırsatları keşfedin, çekici içerikler üretin, problemleri daha çabuk çözün. Veri güvenliğini, gizliliği ve uyumluluğu geliştirmek için Copilot, çalışanlar Microsoft Entra ID hesapları ile oturum açtıklarında kurumsal veri koruma özelliği sunar.
* Copilot şimdilik yalnızca seçili pazarlarda mevcuttur. Zaman içinde diğer pazarlarda da sunulacaktır.
*Geçerli bir Microsoft 365 lisansı gerektirir.

MSI’ın özel laptop kontrol merkezi ve AI çözümleri ile MSI laptoplar üretkenliğinizi zincirlerden kurtarıyor.
AI Engine
MSI AI Engine kullanım senaryosunu algılayarak sisteminizi en iyi performans için ayarlar. AI ile yapılmış modlar ve kaynaklar sayesinde tasarım, iş ve eğlence gibi farklı önceliklerinize odaklanabilirsiniz.

Eşsiz Görseller
MSI Gaming laptoplar yükse çözünürlük ve tazeleme hızı ile oyuncular için özel olarak üretildi. Oyun dünyanızı her zamankinden daha gerçek ve daha akıcı deneyimleyin.
*Seçime bağlı. Gerçek özellikler konfigürasyona göre değişiklik gösterebilir.
QHD Çözünürlük - 240Hz Tazeleme Hızı - P3 %100 DCI-P3

Oyun Tarzınızı Işıklandırın
Katana serisi 4 bölgeli RGB klavye ve özel olarak ışıklandırılmış WASD tuş kapakları ile gelir. Enerjisi ile ışıl ışıl parıldayan bir oyun deneyimini kendi tarzınızda yaşayın!
4 Bölgeli RGB Gaming klavye - 1.7mm Tuş hareket mesafesi - Oyuncular için ışıklandırmalı WASD tuşları - Numerik tuş takımı

Güçlendirilmiş Soğutma Çözümü
Yeni Shared Pipe özelliği, CPU ve GPU’ya bağlı tek bir heatpipe ile termal yetenekleri geliştirir CPU performansını arttırır. MSI Cooler Boost 5 ile oyuncular karmaşık oyun dünyalarını hiçbir ödün vermeden keşfedebilirler.
CPU & GPU - PAYLAŞIMLI SOĞUTMA BORUSU TASARIMI - 2 Fan - 5 Heat Pipe

Daha hızlı tepki
DDR5 belleğin hızlı okuma/yazma özellikleri sayesinde sisteminizin performansı her seviyede artar.
Sihir gibi yükleme hızları
Uç noktada performans ve 7.88 GB/sn-ye varan bant genişliği ile PCIe Gen 4 arayüzü kullanıcılar her oyunu ve her görevi yıldırım hızında açabilecekler.
MÜZİK BÖYLE OLMALI
Üstün kaliteli Hi-Res ses bileşenleri ile kayıpsız bir müzik deneyimi yaşayın.
TÜM ÖZELLİKLER BİR ARADA
Özel MSI Center yazılımı, MSI laptopunuzu istediğiniz şekilde özelleştirmenize yardımcı olur.
SIRADIŞI KABLOSUZ DENEYİMİ
En yeni Wi-Fi 6E, ağı çok sayıda kullanıcıyla paylaşırken bile ağın sorunsuz ve kararlı olmasını sağlarken çarpıcı bir hız sunar.

PD Şarj özelliği: 100W PD şarj desteği (20V@5A) sistem çalışırken (S0) ve Uyku modunda (Modern Standby düşük güçte bekleme modu), 45W(20V@23.25A) ve üzeri 100W(20V@5A)-a kadar Hazırda bekleme (S4), Kapalı (S5) iken sunulur. Genel sistem performansı şarj akımına uyum sağlamak için değişebilir. Şarj hızı sistem ve batarya durumuna göre değişiklik gösterir. MSI PD Şarj cihazı kullanılması tavsiye edilir.

LAPTOPTA OKUYUCUNUN SEÇİMİ ÖDÜLÜ SAHİBİ -
5 YIL ARKA ARKAYA
“Bu yıl, okuyucularımızın özellikle oyun deneyimi için derecelendirdiği dizüstü bilgisayarlar için her ölçütte başarılı oldu; bu da MSI-ın uzmanlık alanı.”
- PCMag 2025', '[]'),
  ('Lenovo Legion 5 15IRX10 i7-13650HX 24GB DDR5 RTX5060 GDDR7 8GB 1TB SSD 15.3" IPS 165Hz W11 Notebook', '79.999,00 TL', 'https://www.itopya.com/lenovo-legion-5-15irx10-i7-13650hx-24gb-ddr5-rtx5060-gddr7-8gb-1tb-ssd-153-ips-165hz-w11-notebook_u32318', '{"İşlemci Modeli":"Core i7 13650HX","İşlemci Nesil":"Intel 13.Nesil","GPU Model":"GeForce RTX 5060","Mevcut Ram Bellek":"24GB (12GB x 2)","Ram Tipi":"DDR5","Ram Hızı":"4800 MHz","SSD":"1TB","Ekran Boyutu":"15\"","Çözünürlük":"1920 x 1200","Desteklenen Max Ram Bellek":"32GB","İşlemci Çekirdek":"14 Çekirdek","İşlemci Hızı MAX":"4.9 GHz","L3 Önbellek":"24MB","GPU Üretici":"NVIDIA","GPU Seri":"GeForce 5000 Serisi","USB 3.2":"USB 3.2 x 3, USB 3.2 C Tipi x 2","USB 3.1":"Yok","USB 3.0":"Yok","USB 2.0":"Yok","HDMI":"HDMI 2.1 x 1","DisplayPort":"DisplayPort 1.4 x 1 C Tipi","Ethernet":"Var","Lan Çıkış Sayısı":"1","Wireless LAN":"WiFi 6E","Bluetooth":"Bluetooth v5.2","WebCam":"Var","Wireless":"Var","Klavye Tuş Dizilimi":"Türkçe Q","İşletim Sistemi":"Windows 11 Home","İşlemci Hızı":"3.6 GHz","Ağırlık":"2.1 kg"}', 'Lenovo Legion 5 15IRX10 i7-13650HX 24GB DDR5 RTX5060 GDDR7 8GB 1TB SSD 15.3" IPS 165Hz W11 Notebook', '[]');

-- Insert embeddings using Gemini API via LiteLLM
UPDATE computers SET embedding =
  ai.litellm_embed(
    model := 'gemini/gemini-embedding-001',
    input_text := description || ' ' || technical_specs || ' ' || comments,
    api_key := ''
  );

SELECT
    product_name,
    price,
    url,
    embedding <=> ai.litellm_embed(
        model := 'gemini/gemini-embedding-001',
        input_text := 'Office Laptops',
        api_key := ''
    ) as distance
FROM computers
ORDER BY distance ASC
LIMIT 3;

Select * from computers;