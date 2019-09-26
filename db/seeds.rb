Comic.create!(
  title: 'ジョジョの奇妙な冒険',
  image: open("#{Rails.root}/db/fixtures/01.jpeg")
)

Comic.create!(
  title: 'キングダム',
  image: open("#{Rails.root}/db/fixtures/02.jpg")
)

Comic.create!(
  title: 'ドラゴンボール',
  image: open("#{Rails.root}/db/fixtures/03.png")
)

Comic.create!(
  title: 'ワンピース',
  image: open("#{Rails.root}/db/fixtures/04.jpg")
)