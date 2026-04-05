# 📱 Flutter Assignment: User Directory App

ဒီ Project ကတော့ **Clean Architecture** နဲ့ **BLoC Pattern** ကို အသုံးပြုပြီး ရေးသားထားတဲ့ Flutter Mobile Application ဖြစ်ပါတယ်။ API ကနေ User အချက်အလက်တွေကို ခေါ်ယူပြသပေးမှာဖြစ်ပြီး စနစ်တကျ Testing တွေလည်း ထည့်သွင်းထားပါတယ်။

---

## ✨ Features
- **Splash Screen:** App စတင်ဖွင့်ချင်း ပြသမည့် Animation Screen။
- **Onboarding:** App ရဲ့ လုပ်ဆောင်ချက်များကို လမ်းညွှန်ပေးသည့် PageView Slide များ။
- **Login:** Bloc State Management သုံးပြီး Username/Password ဖြင့် ဝင်ရောက်နိုင်ခြင်း။
- **Dashboard:** User list များကို Card view ဖြင့် ကြည့်ရှုနိုင်ခြင်း။
- **User Details:** ရွေးချယ်လိုက်သော User ၏ အသေးစိတ်အချက်အလက်များကို ပြသခြင်း။

---

## 🏗 Architecture & Tech Stack
ဒီ App ကို ပြင်ဆင်ထိန်းသိမ်းရ လွယ်ကူစေဖို့အတွက် အောက်ပါ Architecture နဲ့ Library တွေကို သုံးထားပါတယ်။

* **Architecture:** Clean Architecture (Data, Domain, Presentation Layers)
* **State Management:** BLoC / Cubit
* **Dependency Injection:** `get_it`
* **Models & Serialization:** `freezed` & `json_serializable`
* **Testing:** `bloc_test`, `mocktail` & `integration_test`



---

## 📂 Project Structure
```text
lib/
├── core/             # Utils, Constants, App Theme
├── data/             # Models, Repositories Implementation, Data Sources
├── domain/           # Entities, Use Cases, Repository Interfaces
├── presentation/     # Cubits, Screens, Widgets (UI)
└── injection.dart    # Dependency Injection Setup
