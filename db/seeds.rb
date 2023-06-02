

require 'open-uri'

puts "Cleaning database..."

User.destroy_all
Plant.destroy_all

user = User.create!(email: 'tesfet2@teldst2.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
5.times do
  file = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
end
plant.save





user = User.create!(email: 'tesfet3@teldst3.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
file = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
plant.save

puts "Plants Created"

5.times do
  plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
  5.times do
    file = URI.open('https://www.gardeningexpress.co.uk/media/product/6e8/echinocactus-grusonii-golden-barrel-cactus-or-mother-in-laws-seat-c3f.jpg')
    plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
  end
  plant.save
end


user = User.create!(email: 'tesfet4@teldst4.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Monstera Deliciosa", price: 50, description: "A stunning Monstera Deliciosa with large, fenestrated leaves.", user_id: user.id)
file = URI.open('https://i.etsystatic.com/20333091/r/il/042895/3016558222/il_1588xN.3016558222_ju7e.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20333091/r/il/a5ecfc/3016558034/il_1588xN.3016558034_32g2.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20333091/r/il/aed8fa/3016557888/il_1588xN.3016557888_ehdg.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20333091/r/il/87c237/3064266571/il_1588xN.3064266571_fmk6.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20333091/r/il/161a69/4925017031/il_1588xN.4925017031_1nzg.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet5@teldst5.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Snake Plant", price: 30, description: "A hardy Snake Plant that adds a touch of elegance to any space.", user_id: user.id)
file = URI.open('https://i.etsystatic.com/22537153/r/il/e0c0b4/4852606013/il_1588xN.4852606013_kagm.jpg')
plant.photos.attach(io: file, filename: "snake_plant.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/22537153/r/il/679f29/4684507388/il_1588xN.4684507388_rqm0.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/22537153/r/il/752334/4684518924/il_1588xN.4684518924_5g9f.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/22537153/r/il/3acf17/4732746887/il_1588xN.4732746887_65hh.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/22537153/r/il/fd8030/4732748631/il_1588xN.4732748631_69cc.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet6@teldst6.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Fiddle Leaf Fig", price: 100, description: "A majestic Fiddle Leaf Fig with large, glossy leaves.", user_id: user.id)
file = URI.open('https://i.etsystatic.com/20155904/r/il/62b1bc/3012235759/il_1588xN.3012235759_3ptt.jpg')
plant.photos.attach(io: file, filename: "fiddle_leaf_fig.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20155904/r/il/31f7e2/2964523742/il_1588xN.2964523742_9x4v.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20155904/r/il/c70234/3012229797/il_1588xN.3012229797_4zvb.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/15627095/r/il/8259bf/4904108406/il_1588xN.4904108406_l4dm.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/15627095/r/il/02c3dc/4904108566/il_1588xN.4904108566_t2bi.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet7@teldst7.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Pothos", price: 25, description: "A trailing Pothos plant that adds beauty and freshness to any room.", user_id: user.id)
file = URI.open('https://i.etsystatic.com/28685593/r/il/dd504c/3708206443/il_1588xN.3708206443_geks.jpg')
plant.photos.attach(io: file, filename: "pothos.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/28685593/r/il/7e82e1/3756278641/il_1588xN.3756278641_fhtv.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/28685593/r/il/f37017/3368553478/il_1588xN.3368553478_kt4h.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/28685593/r/il/91c858/3496157997/il_1588xN.3496157997_4u2r.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/28685593/r/il/2e5d2e/3737302527/il_1588xN.3737302527_km7x.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet8@teldst8.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Pitcher Plant", price: 40, description: "A low-maintenance Pitcher Plant that thrives in various light conditions.", user_id: user.id)
file = URI.open('https://i.etsystatic.com/25720706/r/il/552c78/3750447427/il_1588xN.3750447427_e0ux.jpg')
plant.photos.attach(io: file, filename: "zz_plant.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/22244764/r/il/efac5c/4955820964/il_1588xN.4955820964_9c0d.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/22244764/r/il/5edcad/4955819590/il_1588xN.4955819590_pmkl.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/27968264/r/il/c34318/4798514711/il_1588xN.4798514711_dv81.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/42981236/r/il/6a7d8f/4916221617/il_1588xN.4916221617_8z84.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet9@teldst9.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Grandidier's Baobab", price: 100, description: "Beautiful Grandidier's Baobab with vibrant colors", user_id: user.id)
file = URI.open('https://i.etsystatic.com/20845839/r/il/42d0d4/2619506626/il_1588xN.2619506626_79aw.jpg')
plant.photos.attach(io: file, filename: "plant1.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/20853122/r/il/2ab04a/2996121584/il_1588xN.2996121584_byjq.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20853122/r/il/66f671/3043836099/il_1588xN.3043836099_rd3r.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20845839/r/il/42d0d4/2619506626/il_1588xN.2619506626_79aw.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/23669282/r/il/167f7b/4866674008/il_1588xN.4866674008_bj3b.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet10@teldst10.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Cattleya orchid", price: 200, description: "Exquisite Cattleya orchid that adds elegance to any space", user_id: user.id)
file = URI.open('https://i.etsystatic.com/42417468/r/il/bef832/4781259898/il_1588xN.4781259898_2km7.jpg')
plant.photos.attach(io: file, filename: "plant2.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/42417468/r/il/117225/4987227043/il_1588xN.4987227043_4xh7.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/42417468/r/il/9ead70/4987232861/il_1588xN.4987232861_q9ud.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/26773143/r/il/d4965a/4046083457/il_1588xN.4046083457_1ytn.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/42417468/r/il/da6c0f/4820906990/il_1588xN.4820906990_ih58.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet11@teldst11.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Dragon Arum", price: 150, description: "Charming Dragon Arum with a touch of whimsy", user_id: user.id)
file = URI.open('https://i.etsystatic.com/23803544/r/il/119a4d/4754411420/il_1588xN.4754411420_18y2.jpg')
plant.photos.attach(io: file, filename: "plant3.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/23803544/r/il/9684ac/4754467576/il_1588xN.4754467576_6g4l.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/9745001/r/il/ed4b34/905889316/il_1588xN.905889316_v8bl.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/9745001/r/il/eff35a/905889596/il_1588xN.905889596_s5gj.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/9745001/r/il/998a88/905647359/il_1588xN.905647359_i6rh.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet12@teldst12.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Chinese Evergreen", price: 120, description: "Energizing plant that brings life to any room", user_id: user.id)
file = URI.open('https://i.etsystatic.com/17977607/r/il/62857a/4410203789/il_1588xN.4410203789_5vj5.jpg')
plant.photos.attach(io: file, filename: "plant4.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/17977607/r/il/b91240/4362815324/il_1588xN.4362815324_ewx2.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/17977607/r/il/8b1827/4362815404/il_1588xN.4362815404_t0r3.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/24182695/r/il/4d658f/4727442071/il_1588xN.4727442071_9w38.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/24182695/r/il/32f910/4727442143/il_1588xN.4727442143_8d3j.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet13@teldst13.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Lady Palm", price: 180, description: "Captivating Lady Palm that captivates hearts", user_id: user.id)
file = URI.open('https://i.etsystatic.com/24182695/r/il/87b434/4865514294/il_1588xN.4865514294_5zak.jpg')
plant.photos.attach(io: file, filename: "plant5.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/24182695/r/il/2f53b9/4865514416/il_1588xN.4865514416_i9cp.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/24182695/r/il/f5b8ef/4913773551/il_1588xN.4913773551_daf2.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/28685593/r/il/87ca39/3479677349/il_1588xN.3479677349_oz67.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/33937022/r/il/d7013a/4417924448/il_1588xN.4417924448_83lq.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet14@teldst14.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "String of Hearts", price: 250, description: "Enchanting plant that brings a sense of wonder", user_id: user.id)
file = URI.open('https://i.etsystatic.com/23478581/r/il/418a9d/4095317273/il_1588xN.4095317273_jrqq.jpg')
plant.photos.attach(io: file, filename: "plant6.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/23478581/r/il/6f19be/4924647714/il_1588xN.4924647714_cmkq.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/23478581/r/il/ac979b/4972917499/il_1588xN.4972917499_mko3.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/23478581/r/il/8dd53b/4472830520/il_1588xN.4472830520_bzu0.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/35009822/r/il/3b8b1f/4926860447/il_1588xN.4926860447_ko4p.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet15@teldst15.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Passionfruit Vine", price: 130, description: "Delightful Passionfruit Vine that radiates happiness", user_id: user.id)
file = URI.open('https://i.etsystatic.com/27243003/r/il/375e85/3053936698/il_1588xN.3053936698_fppy.jpg')
plant.photos.attach(io: file, filename: "plant7.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/34633718/r/il/bda912/4224974408/il_1588xN.4224974408_e6i1.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/18558664/r/il/7f4dc3/3280613741/il_1588xN.3280613741_4dgb.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/39398346/r/il/8ca399/4536757589/il_1588xN.4536757589_3r2l.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/20853122/r/il/9da59f/2022401811/il_1588xN.2022401811_ea0d.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet17@teldst17.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Mistletoe Cactus", price: 100, description: "Beautiful Mistletoe Cactus for your home", user_id: user.id)
file = URI.open('https://i.etsystatic.com/21232703/r/il/37b8af/3747629627/il_1588xN.3747629627_2l3z.jpg')
plant.photos.attach(io: file, filename: "plant_a.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/21232703/r/il/a20873/3244851270/il_1588xN.3244851270_9bsw.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/6236964/r/il/f99dea/2873855555/il_1588xN.2873855555_6k0d.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/6236964/r/il/9d1975/2826191094/il_1588xN.2826191094_95mp.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/6236964/r/il/2867c5/2826195270/il_1588xN.2826195270_g5n5.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet18@teldst18.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Corpse Flower", price: 200, description: "Corpse Flower that is sure to bring joy and elegance to your home", user_id: user.id)
file = URI.open('https://i.etsystatic.com/18133912/r/il/ec581f/3624129422/il_1588xN.3624129422_1xrm.jpg')
plant.photos.attach(io: file, filename: "plant_b.jpg", content_type: 'image/jpeg')
file = URI.open('https://i.etsystatic.com/18133912/r/il/774752/3671697691/il_1588xN.3671697691_928z.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/18133912/r/il/93cfbf/3671698079/il_1588xN.3671698079_srvm.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/18133912/r/il/fc3fa9/3671698447/il_1588xN.3671698447_mj7e.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/18218593/r/il/3be90e/3678752892/il_1588xN.3678752892_olnu.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

# user = User.create!(email: 'tesfet19@teldst19.com', password: '123123', password_confirmation: '123123')
# plant = Plant.create!(species: "Baseball Plant", price: 150, description: "Breathtaking Baseball Plant", user_id: user.id)
# file = URI.open('https://example.com/plant-c.jpg')
# plant.photos.attach(io: file, filename: "plant_c.jpg", content_type: 'image/jpeg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# plant.save

# user = User.create!(email: 'tesfet20@teldst20.com', password: '123123', password_confirmation: '123123')
# plant = Plant.create!(species: "Shell Ginger", price: 150, description: "This is a charming Shell Ginger.", user_id: user.id)
# file = URI.open('https://example.com/image1.jpg')
# plant.photos.attach(io: file, filename: "plant_a.jpg", content_type: 'image/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# plant.save

# user = User.create!(email: 'tesfet21@teldst21.com', password: '123123', password_confirmation: '123123')
# plant = Plant.create!(species: "Maidenhair Fern", price: 200, description: "Check out this lovely Maidenhair Fern!", user_id: user.id)
# file = URI.open('https://example.com/image2.jpg')
# plant.photos.attach(io: file, filename: "plant_b.jpg", content_type: 'image/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# plant.save

# user = User.create!(email: 'tesfet22@teldst22.com', password: '123123', password_confirmation: '123123')
# plant = Plant.create!(species: "Living Stones", price: 120, description: "Introducing Living Stones; has been grown with love and care.", user_id: user.id)
# file = URI.open('https://example.com/image3.jpg')
# plant.photos.attach(io: file, filename: "plant_c.jpg", content_type: 'image/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# plant.save

# user = User.create!(email: 'tesfet23@teldst23.com', password: '123123', password_confirmation: '123123')
# plant = Plant.create!(species: "Giant Taro", price: 180, description: "This unique Giant Taro will captivate you with its charm.", user_id: user.id)
# file = URI.open('https://example.com/image4.jpg')
# plant.photos.attach(io: file, filename: "plant_d.jpg", content_type: 'image/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# plant.save

# user = User.create!(email: 'tesfet24@teldst24.com', password: '123123', password_confirmation: '123123')
# plant = Plant.create!(species: "Rose Grape", price: 160, description: "Indulge in the beauty of Rose Grape, an exquisite choice.", user_id: user.id)
# file = URI.open('https://example.com/image5.jpg')
# plant.photos.attach(io: file, filename: "plant_e.jpg", content_type: 'image/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# file = URI.open('https://example.com/monstera.jpg')
# plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
# plant.save

user = User.create!(email: 'tesfet25@teldst25.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Bromeliads", price: 100, description: "Beautiful Bromeliads for your garden", user_id: user.id)
file = URI.open('https://i.etsystatic.com/29667421/r/il/120844/4685514652/il_1588xN.4685514652_lrv7.jpg')
plant.photos.attach(io: file, filename: "plant-a.jpg", content_type: 'image/jpg')
file = URI.open('https://i.etsystatic.com/22589523/r/il/c4d947/2244800752/il_1588xN.2244800752_rlfs.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/19676553/r/il/75ff3b/2741871694/il_1588xN.2741871694_sapr.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/19676553/r/il/8dff3e/2741871796/il_1588xN.2741871796_3plx.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/19676553/r/il/17906a/2741871912/il_1588xN.2741871912_h4tn.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet27@teldst27.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Tree Aeonium", price: 150, description: "Charming Tree Aeonium to brighten up any room", user_id: user.id)
file = URI.open('https://i.etsystatic.com/30011566/r/il/853519/3838285358/il_1588xN.3838285358_pcap.jpg')
plant.photos.attach(io: file, filename: "plant-c.jpg", content_type: 'image/jpg')
file = URI.open('https://i.etsystatic.com/18133912/r/il/6ba1e4/4594993556/il_1588xN.4594993556_4cad.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/18133912/r/il/05a596/4594994390/il_1588xN.4594994390_8lke.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/32398558/r/il/7c3d25/4928591954/il_1588xN.4928591954_2678.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/32398558/r/il/b9b207/4976852067/il_1588xN.4976852067_dasu.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet28@teldst28.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Mexican Snowball", price: 180, description: "Lovely Mexican Snowball with vibrant foliage", user_id: user.id)
file = URI.open('https://i.etsystatic.com/12511020/r/il/3f95c0/3337930309/il_1588xN.3337930309_emz4.jpg')
plant.photos.attach(io: file, filename: "plant-d.jpg", content_type: 'image/jpg')
file = URI.open('https://i.etsystatic.com/41533098/r/il/0a8941/4856448126/il_1588xN.4856448126_jv56.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/41533098/r/il/8213fd/4904722481/il_1588xN.4904722481_q8z4.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/16895778/r/il/e7f443/1657441109/il_1588xN.1657441109_77gu.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/8657432/r/il/254a8f/3446212691/il_1588xN.3446212691_52as.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet29@teldst29.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Ornamental Banana", price: 120, description: "Adorable Ornamental Banana, a perfect centre-piece for any occasion", user_id: user.id)
file = URI.open('https://i.etsystatic.com/20845839/r/il/789c93/3565456810/il_1588xN.3565456810_f9j8.jpg')
plant.photos.attach(io: file, filename: "plant-e.jpg", content_type: 'image/jpg')
file = URI.open('https://i.etsystatic.com/9537828/r/il/35f36b/1827473100/il_1588xN.1827473100_3fc3.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/9537828/r/il/69519a/2471782978/il_1588xN.2471782978_n96p.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/9537828/r/il/b7fb14/1827475506/il_1588xN.1827475506_jv4m.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/23071225/r/il/477e71/4234345861/il_1588xN.4234345861_1eec.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save

user = User.create!(email: 'tesfet30@teldst30.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Chinese Money Plant", price: 250, description: "Elegant Chinese Money Plant, a statement piece for your garden", user_id: user.id)
file = URI.open('https://i.etsystatic.com/28613129/r/il/ab4f60/3893591364/il_1588xN.3893591364_1p73.jpg')
plant.photos.attach(io: file, filename: "plant-f.jpg", content_type: 'image/jpg')
file = URI.open('https://i.etsystatic.com/28613129/r/il/db471f/3893591370/il_1588xN.3893591370_2nah.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/19750945/r/il/559b3c/3252595913/il_1588xN.3252595913_gqcn.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/19750945/r/il/9ddb32/4051091338/il_1588xN.4051091338_fvra.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
file = URI.open('https://i.etsystatic.com/19750945/r/il/56492d/4051095186/il_1588xN.4051095186_fxqx.jpg')
plant.photos.attach(io: file, filename: "monstera.jpg", content_type: 'images/jpg')
plant.save
