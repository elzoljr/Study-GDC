# Study-GDC

O Grand Central Dispatch é um framework que possibilita a execução de tarefas de maneira assíncrona ou síncrona em aplicativos desenvolvidos em Swift e Objective-C. No contexto do GCD, são utilizadas filas para organizar e distribuir tarefas, oferecendo um controle preciso sobre a concorrência.

Destacam-se duas categorias principais de filas: a fila principal, responsável pela atualização da interface do aplicativo, e as filas globais, que apresentam diferentes tipos, tais como background, default, userInitiated e userInteractive.

A fila principal desempenha um papel crucial no tratamento de operações relacionadas à interface do usuário, como atualizações de elementos gráficos, animações e eventos do usuário. Por sua vez, as filas globais oferecem uma variedade de tipos que indicam a prioridade das tarefas a serem executadas em segundo plano, sendo úteis para operações de longa duração, processamentos padrão, tarefas iniciadas pelo usuário e aquelas críticas para uma resposta imediata à interação do usuário.

Dessa forma, o GCD proporciona uma abordagem flexível e eficiente para a execução de tarefas de forma concorrente, contribuindo para a otimização do desempenho em aplicativos desenvolvidos para o ecossistema da Apple.
