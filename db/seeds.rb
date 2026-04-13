Job.find_or_create_by!(title: "【至急・親分直々】縄張り管理システムの開発") do |job|
  job.description = "複数の縄張りをリアルタイムで可視化・管理するWebシステムを開発していただきます。Railsでの実装経験必須。PostgreSQLで地図データを扱った経験があれば尚可。口は堅いこと。"
  job.budget = "150万〜300万円"
  job.category = "Rails"
  job.deadline = "2026年5月末"
end

Job.find_or_create_by!(title: "【フロント界の鉄砲玉求む】React + TypeScript 案件") do |job|
  job.description = "組のフロントエンドを丸ごとリニューアルする大型案件。Reactの経験3年以上。見た目で勝負できる腕っ節の強いエンジニアを求めています。報酬は実力次第で上乗せあり。"
  job.budget = "80万〜200万円"
  job.category = "React"
  job.deadline = "2026年6月末"
end

Job.find_or_create_by!(title: "【特殊詐欺対策AI】異常検知システム構築") do |job|
  job.description = "Pythonを使った機械学習モデルで、怪しい取引パターンを自動検知するシステムを構築。scikit-learnまたはPyTorch経験者優遇。成果報酬型で大きく稼げます。"
  job.budget = "200万〜500万円"
  job.category = "Python"
  job.deadline = "2026年7月末"
end

Job.find_or_create_by!(title: "【Java案件・口喧嘩上等】Spring Bootでバックエンド構築") do |job|
  job.description = "既存のSpring Bootアプリにマイクロサービスアーキテクチャを導入。Javaは型が厳格ゆえ、細かい指定にも文句を言わずに対応できる方のみ応募してください。"
  job.budget = "120万〜250万円"
  job.category = "Java"
  job.deadline = "2026年5月中旬"
end

Job.find_or_create_by!(title: "【Django使い大募集】多種多様な業務システム開発") do |job|
  job.description = "Djangoの自由度と拡張性を活かした業務システム開発。複数プロジェクト同時進行。スピードと柔軟性を重視。REST API設計経験必須。納期は絶対守ること。"
  job.budget = "100万〜180万円"
  job.category = "Django"
  job.deadline = "2026年6月初旬"
end

Job.find_or_create_by!(title: "【緊急】RailsアプリのAWSインフラ移行作業") do |job|
  job.description = "既存のRailsアプリをオンプレからAWS（EC2 + RDS）へ移行。Terraformでインフラをコード化していただきます。秘密保持は絶対条件。完遂報酬あり。"
  job.budget = "50万〜100万円"
  job.category = "インフラ"
  job.deadline = "2026年4月末"
end

puts "シノギ #{Job.count} 件を投入しました。"
