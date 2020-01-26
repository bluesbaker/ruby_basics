# Женский тест на ревнивость
# https://syntone.ru/psytesty/revnivy-li-vy-test-dlya-zhenshhin/ -- ссылка теста

argument = ARGV[0]

# для Windows -- преобразование входных аргументов в utf-8
# TODO -- надо разобраться подробнее
#if (Gem.win_platform? && ARGV[0])
#  argument = argument.dup
#    .force_encoding("IBM866")
#    .encode("IBM866", "cp1251")
#    .encode("UTF-8")
#end

#if !ARGV[0]
#    abort "Нет аргументов!"
#end

questions = [
    "Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ему скандал прямо на улице?",
    "Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?",
    "Вы расспрашиваете его о работе, о коллегах?",
    "Вы считаете, что каждую свободную минуту должны проводить вместе?",
    "Он для вас — свет в окошке?",
    "Случается ли вам проверять его корреспонденцию и рыться в его вещах?",
    "Чем чаще он говорит о своих чувствах, тем меньше вы верите?",
    "Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?",
    "Вы всегда спрашиваете у него, куда он ходит и с кем встречается?",
    "Если вы на него обижены, то молчите по нескольку дней?",
    "Вас мучают мысли о его бывшей возлюбленной?",
    "Он утверждает, что не ревнует вас, потому что доверяет. Для вас это означает, что любовь прошла?"
]

results = [
    # 10 и более ответов «да»
    "Вы болезненно ревнивы. Не думайте, что если избранник вас любит, " +
    "то он автоматически становится вашей собственностью. Вы считаете себя непривлекательной " +
    "и боитесь, что он бросит вас ради какой нибудь красавицы. Вы ни в чем не уверены, особенно " +
    "в нем. Задумайтесь над этим, потому что нельзя быть настолько ревнивой и агрессивной, это " +
    "может привести к конфликтам и даже к разрыву отношений.",
  
    # 5–9 ответов «да»
    "Ваша ревность действует на вас мобилизующе, но не она одна управляет вашим поведением. " +
    "В минуту слабости случается и вам устраивать скандалы.Но, успокоившись, вы понимаете, " +
    "что для вашей ревности не было никаких оснований.",
  
    # Менее 5 ответов «да»
    "Вам совершенно незнакомо чувство ревности. Но тревога и беспокойство могут накапливаться " +
    "со временем.Вы должны решать волнующие вас проблемы со своим партнером."
  ]

  puts "Тест на ревнивость <ответы \"yes\" или \"no\">";

  yes_answers = 0;
  for quest in questions do
      puts quest

      choice = nil
      while choice != "yes" and choice != "no" do
          choice = STDIN.gets.chomp.downcase
      end
      if choice == "yes"
        yes_answers += 1
      end
  end

  puts "Результат <#{yes_answers.to_s} ответов \"да\">:"

 

