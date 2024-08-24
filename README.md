■サービス概要
どんなサービスなのかを３行で説明してください。

このサービスではラジオ番組の放送内容（トーク、ゲスト、コーナー、お便り・メールなど）や感想をメモする機能
ユーザーの好きなラジオ番組の情報（放送局、放送時間、パーソナリティなど）をこのサービスに登録でき、その情報を使った検索機能とお気に入り機能
お気に入り機能を用いて、放送時間前に通知を行うリマインダー機能を提供します。

■ このサービスへの思い・作りたい理由
このサービスの題材となるものに関してのエピソードがあれば詳しく教えてください。
このサービスを思いつくにあたって元となる思いがあれば詳しく教えてください。

私の趣味はラジオを聞くことで、勉強中・移動中・寝る前などに聴き、私にとって生活に欠かせない存在です。
しかし、放送内容を忘れてしまったり、聞き逃してしまったりすることが稀にあったので、
これらの課題を解決するため、番組内容をメモしたり、放送時間前に通知を行なってくれるこのサービスを開発したいと思いました。

■ ユーザー層について
決めたユーザー層についてどうしてその層を対象にしたのかそれぞれ理由を教えてください。

ラジオ番組を日常的に楽しんでいる人々をターゲットにしています。
リスナーが必要とする機能（メモ、リマインダー）を提供することで、ラジオ体験を向上させることが狙いです。

■サービスの利用イメージ
ユーザーがこのサービスをどのように利用できて、それによってどんな価値を得られるかを簡単に説明してください。

ユーザーはこのサービスを使って、好きなラジオ番組の放送内容をメモすることで、放送内容を簡単に振り返ることができます。
また、お気に入りの番組をリストに追加し、後から簡単にアクセスすることができ、放送内容を振り返るだけでなく、情報を効率的に整理することができます。
さらに、放送を聴き逃さないよう、放送時間前に通知を行なってくれるリマインダーを設定できます。

■ ユーザーの獲得について
想定したユーザー層に対してそれぞれどのようにサービスを届けるのか現状考えていることがあれば教えてください。

放送内容の記録に関しては、スマホのメモ機能や汎用的なメモアプリを利用して、放送内容を残しているリスナーをSNSで見られるので、
ラジオ番組に特化したサービスは他にないので、そういった方にSNSを通してサービスを届けていきたいと考えます。

■ サービスの差別化ポイント・推しポイント
似たようなサービスが存在する場合、そのサービスとの明確な差別化ポイントとその差別化ポイントのどこが優れているのか教えてください。
独自性の強いサービスの場合、このサービスの推しとなるポイントを教えてください。

このサービスは放送内容のメモ機能とリマインダー機能を組み合わせている点が強みです。
特定の番組を聞き逃さないようにするリマインダー機能と、番組内容を効率的に記録できるメモ機能を提供することで、リスナーがより便利にラジオを楽しめるようにしています。
また、検索機能によって、ユーザーが興味のある番組を簡単に見つけることができます。

■ 機能候補
現状作ろうと思っている機能、案段階の機能をしっかりと固まっていなくても構わないのでMVPリリース時に作っていたいもの、本リリースまでに作っていたいものをそれぞれ分けて教えてください。

MVPリリース
メモ機能:　番組名、放送日時、感想等
番組情報登録: 好きな番組をこのサービスに登録できる。（ユーザーが登録する負担を考慮し、人気番組に関してはある程度自分で登録しておく）

本リリース
お気に入り機能: 好きな番組をリスト化し、管理する機能
検索機能: キーワードやカテゴリで番組を検索できる機能
リマインド機能: お気に入り登録した番組が始まる前に通知する

■ 機能の実装方針予定
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。

メモ機能: ローカルデータベースを利用し、ユーザーが取ったメモを保存。時間とメモを紐づけて記録。
