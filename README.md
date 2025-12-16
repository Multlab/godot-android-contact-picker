# Godot Android Contact Picker Plugin

[English](#english) | [Русский](#russian)

---

<a name="english"></a>
## 📱 English

### Description

A native Android plugin for Godot 4 that allows users to pick contacts from their device's contact list. The plugin automatically handles runtime permissions and provides a simple API for contact selection.

### Features

- ✅ Native Android contact picker integration
- ✅ Automatic runtime permission handling (READ_CONTACTS)
- ✅ Returns contact name and phone number
- ✅ Simple signal-based API
- ✅ Compatible with Godot 4.2+
- ✅ Tested on Godot 4.5.1

### Requirements

- **Godot Version:** 4.2 or higher (tested on 4.5.1)
- **Platform:** Android (API 21+)
- **Permissions:** READ_CONTACTS (automatically requested)

### Installation

1. **Download the plugin:**
   - Download the `ContactPicker` folder
   - Place it in your project's `addons/` directory

2. **Enable the plugin:**
   - Open your Godot project
   - Go to `Project → Project Settings → Plugins`
   - Enable "ContactPicker"

3. **Configure Android export:**
   - Go to `Project → Export → Android`
   - In the "Permissions" section, ensure `READ_CONTACTS` is enabled
   - In the "Plugins" section, ensure `ContactPicker` is checked

4. **Export your project:**
   - Export as Android APK/AAB
   - Install on device and test

### Usage

#### GDScript Example

```gdscript
extends Control

func _ready():
    # Connect signals
    ContactPicker.contact_picked.connect(_on_contact_picked)
    ContactPicker.contact_pick_error.connect(_on_contact_error)

func _on_import_button_pressed():
    # Open contact picker
    ContactPicker.pick_contact()

func _on_contact_picked(name: String, phone: String):
    print("Contact selected: ", name, " - ", phone)
    # Use the contact data in your app
    $NameLabel.text = name
    $PhoneLabel.text = phone

func _on_contact_error(error: String):
    print("Error picking contact: ", error)
```

### API Reference

#### Methods

- `pick_contact()` - Opens the native Android contact picker

#### Signals

- `contact_picked(name: String, phone: String)` - Emitted when a contact is successfully selected
- `contact_pick_error(error: String)` - Emitted when an error occurs

### Permissions

The plugin automatically requests the `READ_CONTACTS` permission at runtime when the user first tries to pick a contact. No manual permission handling is required.

### Troubleshooting

**Plugin not loading:**
- Ensure the plugin is enabled in Project Settings → Plugins
- Check that `ContactPicker` is enabled in Android export settings
- Verify that `READ_CONTACTS` permission is enabled

**Permission denied:**
- The plugin will automatically request permission on first use
- If denied, the user must manually enable it in device settings

**No contacts returned:**
- Ensure the device has contacts saved
- Check that the contact has a phone number

### License

MIT License - See LICENSE file for details

### Author

MultLab

### Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

---

<a name="russian"></a>
## 📱 Русский

### Описание

Нативный Android плагин для Godot 4, который позволяет пользователям выбирать контакты из списка контактов устройства. Плагин автоматически обрабатывает разрешения и предоставляет простой API для выбора контактов.

### Возможности

- ✅ Интеграция с нативным выбором контактов Android
- ✅ Автоматическая обработка разрешений (READ_CONTACTS)
- ✅ Возвращает имя контакта и номер телефона
- ✅ Простой API на основе сигналов
- ✅ Совместим с Godot 4.2+
- ✅ Протестирован на Godot 4.5.1

### Требования

- **Версия Godot:** 4.2 или выше (протестировано на 4.5.1)
- **Платформа:** Android (API 21+)
- **Разрешения:** READ_CONTACTS (запрашивается автоматически)

### Установка

1. **Скачайте плагин:**
   - Скачайте папку `ContactPicker`
   - Поместите её в директорию `addons/` вашего проекта

2. **Включите плагин:**
   - Откройте ваш проект Godot
   - Перейдите в `Project → Project Settings → Plugins`
   - Включите "ContactPicker"

3. **Настройте экспорт для Android:**
   - Перейдите в `Project → Export → Android`
   - В разделе "Permissions" убедитесь, что `READ_CONTACTS` включен
   - В разделе "Plugins" убедитесь, что `ContactPicker` отмечен

4. **Экспортируйте проект:**
   - Экспортируйте как Android APK/AAB
   - Установите на устройство и протестируйте

### Использование

#### Пример на GDScript

```gdscript
extends Control

func _ready():
    # Подключаем сигналы
    ContactPicker.contact_picked.connect(_on_contact_picked)
    ContactPicker.contact_pick_error.connect(_on_contact_error)

func _on_import_button_pressed():
    # Открываем выбор контакта
    ContactPicker.pick_contact()

func _on_contact_picked(name: String, phone: String):
    print("Выбран контакт: ", name, " - ", phone)
    # Используйте данные контакта в вашем приложении
    $NameLabel.text = name
    $PhoneLabel.text = phone

func _on_contact_error(error: String):
    print("Ошибка выбора контакта: ", error)
```

### Справка по API

#### Методы

- `pick_contact()` - Открывает нативный выбор контактов Android

#### Сигналы

- `contact_picked(name: String, phone: String)` - Испускается при успешном выборе контакта
- `contact_pick_error(error: String)` - Испускается при возникновении ошибки

### Разрешения

Плагин автоматически запрашивает разрешение `READ_CONTACTS` при первой попытке пользователя выбрать контакт. Ручная обработка разрешений не требуется.

### Решение проблем

**Плагин не загружается:**
- Убедитесь, что плагин включен в Project Settings → Plugins
- Проверьте, что `ContactPicker` включен в настройках экспорта Android
- Убедитесь, что разрешение `READ_CONTACTS` включено

**Разрешение отклонено:**
- Плагин автоматически запросит разрешение при первом использовании
- Если отклонено, пользователь должен вручную включить его в настройках устройства

**Контакты не возвращаются:**
- Убедитесь, что на устройстве есть сохраненные контакты
- Проверьте, что у контакта есть номер телефона

### Лицензия

MIT License - См. файл LICENSE для подробностей

### Автор

MultLab

### Вклад в проект

Приветствуются любые вклады! Не стесняйтесь отправлять issues или pull requests.

---

## 📝 Changelog

### Version 1.0.0
- Initial release
- Native Android contact picker
- Automatic permission handling
- Support for Godot 4.2+

## 🔗 Links

- [Godot Engine](https://godotengine.org/)
- [Godot Android Plugins Documentation](https://docs.godotengine.org/en/stable/tutorials/platform/android/android_plugin.html)
