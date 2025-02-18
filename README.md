# FiveM QBCore Elevator Script (ox_lib)

![Elevator Preview](https://imgur.com/a/mWhUdmc)

## 📌 Features / Özellikler
✅ Supports multiple floors (Birden fazla kat desteği)  
✅ Smooth animations (Akıcı animasyonlar)  
✅ Easy configuration with `config.lua` (Kolay yapılandırma)  
✅ Uses `ox_lib` for UI & interactions (UI ve etkileşimler için `ox_lib` kullanır)  
✅ Multi-language support with easy Locale file (Kolay Locale dosyası ile çoklu dil desteği)
---

## 📥 Installation / Kurulum

1. **Download & Extract**: Download the script and extract it into your `resources` folder.  
   **İndir & Aç**: Scripti indirip `resources` klasörüne çıkartın.
2. **Ensure the resource**: Add `ensure qb-elevator` to your `server.cfg`.
   **Kaynağı etkinleştir**: `server.cfg` içine `ensure qb-elevator` ekleyin.
3. **Configure**: Edit `config.lua` to set up floors and settings.
   **Yapılandır**: `config.lua` dosyasını düzenleyerek katları ve ayarları belirleyin.

---

## ⚙️ Configuration / Yapılandırma
Modify `config.lua` to adjust floors and other settings.  
**`config.lua` dosyasını düzenleyerek katları ve diğer ayarları değiştirebilirsiniz.**

```lua
Config.Elevators = {
    Config.Elevators = {
    {
        name = "Pillbox Hill", -- Elevator Name
        positions = {
            {label = "Garage Floor", coords = vector3(359.5, -584.93, 28.82)}, -- Floor Coords
            {label = "Roof Floor", coords = vector3(338.53, -583.76, 74.17)}, -- Floor Coords
        },
        targetCoords = vector3(325.57, -598.67, 43.29), -- Elevator Entrance
        targetHeading = 0.0 
    },
}
```

---

## 🎮 Usage / Kullanım
- Press `alt` to open the elevator menu.
- Select a floor and the elevator will take you there.
- **`Alt` tuşuna basarak target ile asansör menüsünü açabilirsiniz.**
- **Bir kat seçin ve asansör sizi oraya götürsün.**

---

## 🛠️ Dependencies / Gereksinimler
- [QBCore Framework](https://github.com/qbcore-framework/qb-core)
- [ox_lib](https://github.com/overextended/ox_lib)

---

## 📜 License / Lisans
This script is open-source under the MIT License.  
**Bu script MIT Lisansı altında açık kaynaktır.**

---

## 📝 Credits / Katkıda Bulunanlar
Developed by **naC**  
Geliştirici : **naC**
