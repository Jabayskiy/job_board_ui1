# Job Board UI — Flutter Starter

Pixel‑perfect верстка по макету (Splash → Job List → Job Details) на **Flutter** с:
- **ScreenUtil** (1:1 по пикселям)
- **GoRouter** (навигация)
- **Google Fonts** (Inter, без кастомных TTF)
- **Адаптация для Desktop (вариант B)**: увеличенные отступы/типографика, контент центрируется (maxWidth 520–600)

## Быстрый старт
```bash
# 1) установить Flutter (stable)
flutter --version

# 2) запустить
flutter pub get
flutter run -d chrome    # или -d macos / -d windows / -d linux / -d ios / -d android
```

> Проект оптимизирован для **Flutter Web** — можно запускать в браузере.

## Навигация
- `/` → SplashPage
- `/list` → JobListPage
- `/details` → JobDetailsPage

## Pixel‑perfect
- Все размеры/шрифты/радиусы вынесены в **design tokens** (`core/constants`, `core/theme`)
- Используем `.w`, `.h`, `.sp` из ScreenUtil
- На desktop ширина контента ограничена `maxWidth`

## Структура
```
lib/
 ├─ core/
 │   ├─ constants/
 │   ├─ theme/
 │   └─ widgets/
 ├─ features/
 │   ├─ splash/
 │   ├─ job_list/
 │   └─ job_details/
 └─ main.dart
```

## GitHub
```bash
git init
git add .
git commit -m "init: job board UI starter"
# затем создайте пустой репозиторий на GitHub и:
git remote add origin https://github.com/<you>/job_board_ui.git
git push -u origin main
```

## Codesandbox/Stackblitz
- Создайте новый **Container/Node** sandbox → загрузите ZIP (или подключите GitHub)
- Выполните `flutter config --enable-web` (если требуется) и `flutter run -d chrome`
- Либо используйте любой Web IDE, который поддерживает Flutter Web
