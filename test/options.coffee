###
# service, floor 一覧
###

# DMM.com
options = [

  { value: '', text: '全ての商品', children: [
    { value: '', text: '全て' } ] }

  { value: 'lod', text: 'AKB48グループ', children: [
    { value: '',      text: '全て' }
    { value: 'akb48', text: 'AKB48' }
    { value: 'ske48', text: 'SKE48' }
    { value: 'nmb48', text: 'NMB48' }
    { value: 'hkt48', text: 'HKT48' } ] }

  { value: 'digital', text: '動画', children: [
    { value: '',      text: '全て' }
    { value:'bandai', text: 'バンダイチャンネル' }
    { value:'anime',  text: 'アニメ' }
    { value:'video',  text: 'バラエティ' }
    { value:'idol',   text: 'アイドル' }
    { value:'cinema', text: '映画・ドラマ' }
    { value:'fight',  text: '格闘技' } ] }

  { value: 'monthly', text: '月額動画', children: [
    { value: '',         text: '全て' }
    { value: 'toei',     text: '東映' }
    { value: 'animate',  text: 'アニメ' }
    { value: 'idol',     text: 'アイドル' }
    { value: 'cinepara', text: 'シネマパラダイス' }
    { value: 'dgc',      text: 'ギャルコレ' }
    { value: 'fleague',  text: 'Fリーグ' } ] }

  { value: 'digital_book', text: '電子書籍', children: [
    { value: '',         text: '全て' }
    { value: 'comic',    text: 'コミック' }
    { value: 'novel',    text: '小説' }
    { value: 'magazine', text: '雑誌' }
    { value: 'photo',    text: '写真集' }
    { value: 'audio',    text: 'オーディオブック' }
    { value: 'movie',    text: '動画' } ] }

  { value: 'pcsoft', text: 'PCソフト', children: [
    { value: '',         text: '全て' }
    { value:'pcgame',    text: 'PCゲーム' }
    { value:'pcsoft',    text: 'ソフトウェア' } ] }

  { value: 'mono', text: '通販', children: [
    { value: '',          text: '全て' }
    { value: 'dvd',       text: 'DVD' }
    { value: 'cd',        text: 'CD' }
    { value: 'book',      text: '本・コミック' }
    { value: 'game',      text: 'ゲーム' }
    { value: 'hobby',     text: 'ホビー' }
    { value: 'kaden',     text: '家電・パソコン' }
    { value: 'houseware', text: '生活・日用品' }
    { value: 'gourmet',   text: '食品・飲料' } ] }

  { value: 'rental', text: 'DVD/CDレンタル', children: [
    { value: '',           text: '全て' }
    { value: 'rental_dvd', text: '月額DVDレンタル' }
    { value: 'rental_cd',  text: '月額CDレンタル' }
    { value: 'ppr_dvd',    text: '単品DVDレンタル' }
    { value: 'ppr_cd',     text: '単品CDレンタル' }
    { value: 'set_dvd',    text: 'セットレンタル(DVD)' }
    { value: 'set_cd',     text: 'セットレンタル(CD)' }
    { value: 'comic',      text: 'コミック' } ] }

  { value: 'nandemo', text: 'いろいろレンタル', children: [
    { value: '',               text: '全て' }
    { value: 'fashion_ladies', text: 'レディースファッション' }
    { value: 'fashion_mens',   text: 'メンズファッション' }
    { value: 'rental_iroiro',  text: 'いろいろ' } ] }
]

# DMM.R18
options18 = [

  { value: '', text: '全ての商品', children: [
    { value: '', text: '全て' } ] }

  { value: 'digital', text: '動画', children: [
    { value: ''           , text: '全て' }
    { value: 'videoa'     , text: 'ビデオ' }
    { value: 'videoc'     , text: '素人' }
    { value: 'nikkatsu'   , text: '成人映画' }
    { value: 'anime'      , text: 'アニメ' }
    { value: 'photo'      , text: '電子写真集' } ] }

  { value: 'monthly', text: '月額動画', children: [
    { value: ''           , text: '全て' }
    { value: 'shirouto'   , text: '素人ガールズコレクション' }
    { value: 'nikkatsu'   , text: 'ピンク映画' }
    { value: 'paradisetv' , text: 'パラダイステレビ' }
    { value: 'animech'    , text: 'アダルトアニメ' }
    { value: 'dream'      , text: 'ドリーム' }
    { value: 'avstation'  , text: 'AVステーション' }
    { value: 'playgirl'   , text: 'プレイガール' }
    { value: 'alice'      , text: 'アリス' }
    { value: 'crystal'    , text: 'クリスタル' }
    { value: 'hmp'        , text: 'h.m.p' }
    { value: 'waap'       , text: 'Waap' }
    { value: 'momotarobb' , text: '桃太郎BB' }
    { value: 'moodyz'     , text: 'MOODYZ' }
    { value: 'prestige'   , text: 'プレステージ' }
    { value: 'jukujo'     , text: '熟女チャンネル' }
    { value: 'sod'        , text: 'ソフト・オン・デマンド' }
    { value: 'mania'      , text: 'マニア' }
    { value: 's1'         , text: 'エスワン ナンバーワンスタイル' }
    { value: 'kmp'        , text: 'KMP' } ] }

  { value: 'ppm', text: '1円動画', children: [
    { value: '', text: '全て' }
    { value: 'video'      , text: 'ビデオ' }
    { value: 'videoc'     , text: '素人' } ] }

  { value: 'pcgame', text: '美少女ゲーム', children: [
    { value: '', text: '全て' } ] }

  { value: 'doujin',  text: '同人', children: [
    { value: '', text: '全て' } ] }

  { value: 'book', text: '電子コミック', children: [
    { value: '', text: '全て' } ] }

  { value: 'mono', text: '通販', children: [
    { value: ''           , text: '全て' }
    { value: 'dvd'        , text: 'DVD' }
    { value: 'goods'      , text: '大人のおもちゃ' }
    { value: 'anime'      , text: 'アニメ' }
    { value: 'pcgame'     , text: '美少女ゲーム' }
    { value: 'book'       , text: 'ブック' }
    { value: 'doujin'     , text: '同人' } ] }

  { value: 'rental', text: 'DVDレンタル', children: [
    { value: '', text: '全て' }
    { value: 'rental_dvd' , text: '月額レンタル' }
    { value: 'ppr_dvd'    , text: '単品レンタル' }
    { value: 'set_dvd'    , text: 'セットレンタル' } ] }
]

exports.options = options
exports.options18 = options18
