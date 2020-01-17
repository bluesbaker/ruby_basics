# Magic 8 Ball

greetings = [
    "Привет, друг. Отвечаю на твой вопрос...",
    "Ну раз ты спрашиваешь...",
    "Здравствуйте. Давайте разбираться...",
    "Нужно подумать, хотя...",
    "Отличный вопрос, предполагаю что..."
]

answers = [
    # Положительные ответы
    "Бесспорно",
    "Предрешено",
    "Никаких сомнений",
    "Определенно да",
    "Можешь быть уверен в этом",

    # Нерешительно положительные
    "Мне кажется — «да»",
    "Вероятнее всего",
    "Хорошие перспективы",
    "Знаки говорят — «да»",
    "Да",

    # Нейтральные
    "Пока не ясно, попробуй снова",
    "Спроси позже", 
    "Лучше не рассказывать",
    "Сейчас нельзя предсказать",
    "Сконцентрируйся и спроси опять",

    # Отрицательные
    "Даже не думай",
    "Мой ответ — «нет»",
    "По моим данным — «нет»",
    "Перспективы не очень хорошие",
    "Весьма сомнительно"
]

puts greetings.sample
# Array.sample -- Choose a random element
puts answers.sample