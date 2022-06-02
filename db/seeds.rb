# #########################################################################
# ######## Creating federation and system of leagues with 2 seasons #######
# #########################################################################
# federation = Federation.create!(name: 'Federation 5x5')
# federation_old = Federation.create!(name: 'Federation Old')
#
# tournament_cup   = federation.tournaments.create!(name: 'Cup')
# tournament_champ = federation.tournaments.create!(name: 'Championship')
# tournament_old = federation_old.tournaments.create!(name: 'Championship Old')
#
# league_cup = tournament_cup.leagues.create!(name: 'Cup')
# league_1   = tournament_champ.leagues.create!(name: 'League 1')
# league_2   = tournament_champ.leagues.create!(name: 'League 2')
# league_old   = tournament_old.leagues.create!(name: 'League Old')
#
# season_cup_1      = league_cup.seasons.create!
# season_first_league_1 = league_1.seasons.create!
# season_first_league_2 = league_1.seasons.create!
# season_second_league_1 = league_2.seasons.create!
# season_second_league_2 = league_2.seasons.create!
# season_old_league_1 = league_old.seasons.create!
#
# puts 'Successfully create federation and system of leagues with 2 seasons'
# #########################################################################
# ############################# Creating Teams ############################
# #########################################################################
# react = Team.create!(name: 'React')
# react.team_photo.attach(io: File.open('1.jpeg'), filename: '1.jpeg')
# react_season_old_1 = react.seasons_squads.create!(season: season_old_league_1)
# react_season_cup_1 = react.seasons_squads.create!(season: season_cup_1)
# react_season_second_league_1 = react.seasons_squads.create!(season: season_second_league_1)
# react_season_second_league_2 = react.seasons_squads.create!(season: season_second_league_2)
#
# lazo = Team.create!(name: 'Lazo')
# lazo.team_photo.attach(io: File.open('1.jpeg'), filename: '2.png')
# lazo_season_old_1 = lazo.seasons_squads.create!(season: season_old_league_1)
# lazo_season_cup_1 = lazo.seasons_squads.create!(season: season_cup_1)
# lazo_season_second_league_1 = lazo.seasons_squads.create!(season: season_second_league_1)
# lazo_season_second_league_2 = lazo.seasons_squads.create!(season: season_second_league_2)
#
# youngs = Team.create!(name: 'Youngs')
# youngs.team_photo.attach(io: File.open('1.jpeg'), filename: '2.png')
# youngs_season_old_1 = youngs.seasons_squads.create!(season: season_old_league_1)
# youngs_season_cup_1 = youngs.seasons_squads.create!(season: season_cup_1)
# youngs_season_second_league_1 = youngs.seasons_squads.create!(season: season_second_league_1)
# youngs_season_second_league_2 = youngs.seasons_squads.create!(season: season_second_league_2)
#
# legion = Team.create!(name: 'Legion')
# legion.team_photo.attach(io: File.open('1.jpeg'), filename: '1.jpeg')
# legion_season_cup_1 = legion.seasons_squads.create!(season: season_cup_1)
# legion_season_second_league_1 = legion.seasons_squads.create!(season: season_second_league_1)
# legion_season_second_league_2 = legion.seasons_squads.create!(season: season_second_league_2)
#
# arbuz = Team.create!(name: 'Arbuz')
# arbuz_season_cup_1 = arbuz.seasons_squads.create!(season: season_cup_1)
# arbuz_season_first_league_1 = arbuz.seasons_squads.create!(season: season_first_league_1)
# arbuz_season_first_league_2 = arbuz.seasons_squads.create!(season: season_first_league_2)
#
# spartak = Team.create!(name: 'Spartak')
# spartak_season_cup_1 = spartak.seasons_squads.create!(season: season_cup_1)
# spartak_season_first_league_1 = spartak.seasons_squads.create!(season: season_first_league_1)
# spartak_season_first_league_2 = spartak.seasons_squads.create!(season: season_first_league_2)
#
# dinamo = Team.create!(name: 'Dinamo')
# dinamo_season_cup_1 = dinamo.seasons_squads.create!(season: season_cup_1)
# dinamo_season_first_league_1 = dinamo.seasons_squads.create!(season: season_first_league_1)
# dinamo_season_first_league_2 = dinamo.seasons_squads.create!(season: season_first_league_2)
#
# zenit = Team.create!(name: 'Zenit')
# zenit_season_cup_1 = zenit.seasons_squads.create!(season: season_cup_1)
# zenit_season_first_league_1 = zenit.seasons_squads.create!(season: season_first_league_1)
# zenit_season_first_league_2 = zenit.seasons_squads.create!(season: season_first_league_2)
#
# puts 'Successfully create teams and season_squads'
# #########################################################################
# ######################### Creating Teams Player #########################
# #########################################################################
# react_user_1 = User.create!(email: 'grigory-zotenko@gmail.com', name: 'grigory-zotenko', first_name: 'grigory', last_name: 'zotenko', password: '12345678')
# react_user_2 = User.create!(email: 'ivan-kuzhelev@gmail.com', name: 'ivan-kuzhelev', first_name: 'ivan', last_name: 'kuzhelev', password: '12345678')
# react_user_3 = User.create!(email: 'anton-klepikov@gmail.com', name: 'anton-klepikov', first_name: 'anton', last_name: 'klepikov', password: '12345678')
# tp_react_user_1 = react.teams_players.create!(user: react_user_1, number: '10')
# tp_react_user_2 = react.teams_players.create!(user: react_user_2, number: '11')
# tp_react_user_3 = react.teams_players.create!(user: react_user_3, number: '20')
#
# lazo_user_1 = User.create!(email: 'alexandr-tarasov@gmail.com', name: 'alexandr-tarasov', first_name: 'alexandr', last_name: 'tarasov', password: '12345678')
# lazo_user_2 = User.create!(email: 'vladimir-shabanov@gmail.com', name: 'vladimir-shabanov', first_name: 'vladimir', last_name: 'shabanov', password: '12345678')
# tp_lazo_user_1 = lazo.teams_players.create!(user: lazo_user_1, number: '30')
# tp_lazo_user_2 = lazo.teams_players.create!(user: lazo_user_2, number: '3')
# tp_lazo_user_3_old = lazo.teams_players.create!(user: react_user_1, status: 'finished', number: '7')
#
# youngs_user_1 = User.create!(email: 'alik-mikhailov@gmail.com', name: 'alik-mikhailov', first_name: 'alik', last_name: 'mikhailov', password: '12345678')
# youngs_user_2 = User.create!(email: 'maxim-gunin@gmail.com', name: 'maxim-gunin', first_name: 'maxim', last_name: 'gunin', password: '12345678')
# tp_youngs_user_1 = youngs.teams_players.create!(user: youngs_user_1, number: '15')
# tp_youngs_user_2 = youngs.teams_players.create!(user: youngs_user_2, number: '10')
#
# legion_user_1 = User.create!(email: 'boris-lyaschenko@gmail.com', name: 'boris-lyaschenko', first_name: 'boris', last_name: 'lyaschenko', password: '12345678')
# legion_user_2 = User.create!(email: 'nikita-shuba@gmail.com', name: 'nikita-shuba', first_name: 'nikita', last_name: 'shuba', password: '12345678')
# tp_legion_user_1 = legion.teams_players.create!(user: legion_user_1, number: '10')
# tp_legion_user_2 = legion.teams_players.create!(user: legion_user_2, number: '55')
#
# puts 'Successfully create user and teams_players'
# #########################################################################
# ##################### Creating Season Squads Players ####################
# #########################################################################
#
# ssp_2_old = react_season_old_1.seasons_squads_players.create!(teams_player: tp_react_user_2)
#
# ssp_4_old = lazo_season_old_1.seasons_squads_players.create!(teams_player: tp_lazo_user_1)
# ssp_6_old = lazo_season_old_1.seasons_squads_players.create!(teams_player: tp_lazo_user_3_old)
#
# ssp_7_old = youngs_season_old_1.seasons_squads_players.create!(teams_player: tp_youngs_user_1)
# ssp_8_old = youngs_season_old_1.seasons_squads_players.create!(teams_player: tp_youngs_user_2)
#
# ssp_1 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_1)
# ssp_2 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_2)
# ssp_3 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_3)
#
# ssp_4 = lazo_season_second_league_1.seasons_squads_players.create!(teams_player: tp_lazo_user_1)
# ssp_5 = lazo_season_second_league_1.seasons_squads_players.create!(teams_player: tp_lazo_user_2)
# ssp_6 = lazo_season_second_league_1.seasons_squads_players.create!(teams_player: tp_lazo_user_3_old)
#
# ssp_7 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: tp_youngs_user_1)
# ssp_8 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: tp_youngs_user_2)
#
# ssp_9 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: tp_legion_user_1)
# ssp_10 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: tp_legion_user_2)
#
# puts 'Successfully create season squads players'
# #########################################################################
# ########################### Creating Games(OLD) #########################
# #########################################################################
# stage_1_old = season_old_league_1.stages.create!(name: '1 tour')
# stage_2_old = season_old_league_1.stages.create!(name: '2 tour')
# stage_3_old = season_old_league_1.stages.create!(name: '3 tour')
# stage_4_old = season_old_league_1.stages.create!(name: '4 tour')
# stage_5_old = season_old_league_1.stages.create!(name: '5 tour')
# stage_6_old = season_old_league_1.stages.create!(name: '6 tour')
# stage_7_old = season_old_league_1.stages.create!(name: '7 tour')
# stage_8_old = season_old_league_1.stages.create!(name: '8 tour')
# stage_9_old = season_old_league_1.stages.create!(name: '9 tour')
#
# game_1_old = stage_1_old.games.create!(status: 'finished', game_day: DateTime.now - 1000.days)
# game_2_old = stage_2_old.games.create!(status: 'finished', game_day: DateTime.now - 999.days)
# game_3_old = stage_3_old.games.create!(status: 'finished', game_day: DateTime.now - 997.days)
# game_4_old = stage_4_old.games.create!(status: 'finished', game_day: DateTime.now - 995.days)
# game_5_old = stage_5_old.games.create!(status: 'finished', game_day: DateTime.now - 993.days)
# game_6_old = stage_6_old.games.create!(status: 'finished', game_day: DateTime.now - 991.days)
# game_7_old = stage_7_old.games.create!(status: 'finished', game_day: DateTime.now - 990.days)
# game_8_old = stage_8_old.games.create!(status: 'finished', game_day: DateTime.now - 989.days)
# game_9_old = stage_9_old.games.create!(status: 'finished', game_day: DateTime.now - 987.days)
#
# lazo_game_1_old = lazo_season_old_1.games_squads.create!(goals: 11, game: game_1_old)
# lazo_game_2_old = lazo_season_old_1.games_squads.create!(goals: 10, game: game_2_old)
# lazo_game_3_old = lazo_season_old_1.games_squads.create!(goals: 11, game: game_3_old)
# lazo_game_4_old = lazo_season_old_1.games_squads.create!(goals: 12, game: game_4_old)
# lazo_game_5_old = lazo_season_old_1.games_squads.create!(goals: 10, game: game_5_old)
# lazo_game_6_old = lazo_season_old_1.games_squads.create!(goals: 10, game: game_6_old)
# lazo_game_7_old = lazo_season_old_1.games_squads.create!(goals: 13, game: game_7_old)
# lazo_game_8_old = lazo_season_old_1.games_squads.create!(goals: 16, game: game_8_old)
# lazo_game_9_old = lazo_season_old_1.games_squads.create!(goals: 18, game: game_9_old)
#
# youngs_game_1_old = youngs_season_old_1.games_squads.create!(goals: 0, status: 'guest', game: game_1_old)
# youngs_game_2_old = youngs_season_old_1.games_squads.create!(goals: 1, status: 'guest', game: game_2_old)
# youngs_game_3_old = youngs_season_old_1.games_squads.create!(goals: 0, status: 'guest', game: game_3_old)
#
# react_game_4_old = react_season_old_1.games_squads.create!(goals: 0, status: 'guest', game: game_4_old)
# react_game_5_old = react_season_old_1.games_squads.create!(goals: 2, status: 'guest', game: game_5_old)
# react_game_6_old = react_season_old_1.games_squads.create!(goals: 0, status: 'guest', game: game_6_old)
# react_game_7_old = react_season_old_1.games_squads.create!(goals: 0, status: 'guest', game: game_7_old)
# react_game_8_old = react_season_old_1.games_squads.create!(goals: 3, status: 'guest', game: game_8_old)
# react_game_9_old = react_season_old_1.games_squads.create!(goals: 2, status: 'guest', game: game_9_old)
#
#
# #########################################################################
# ########################### Creating Games ##############################
# #########################################################################
#
# stage_1 = season_first_league_1.stages.create!(name: '1 tour')
# stage_2 = season_first_league_1.stages.create!(name: '2 tour')
# stage_3 = season_first_league_1.stages.create!(name: '3 tour')
#
# game_1 = stage_1.games.create!(status: 'finished', game_day: DateTime.now - 50.days)
# game_2 = stage_1.games.create!(status: 'finished', game_day: DateTime.now - 50.days)
# game_3 = stage_2.games.create!(status: 'finished', game_day: DateTime.now - 25.days)
# game_4 = stage_2.games.create!(status: 'finished', game_day: DateTime.now - 23.days)
# game_5 = stage_3.games.create!(status: 'scheduled', game_day: DateTime.now + 10.days)
# game_6 = stage_3.games.create!(status: 'scheduled', game_day: DateTime.now + 12.days)
#
# react_game_1 = react_season_second_league_1.games_squads.create!(goals: 1, game: game_1)
# react_game_2 = react_season_second_league_1.games_squads.create!(goals: 10, game: game_3, status: 'guest')
# react_game_3 = react_season_second_league_1.games_squads.create!(game: game_5, status: 'guest')
#
# lazo_game_1 = lazo_season_second_league_1.games_squads.create!(goals: 11, game: game_1, status: 'guest')
# lazo_game_2 = lazo_season_second_league_1.games_squads.create!(goals: 4, game: game_4, status: 'guest')
# lazo_game_3 = lazo_season_second_league_1.games_squads.create!(game: game_6)
#
# youngs_game_1 = youngs_season_second_league_1.games_squads.create!(goals: 4, game: game_2)
# youngs_game_2 = youngs_season_second_league_1.games_squads.create!(goals: 2, game: game_3)
# youngs_game_3 = youngs_season_second_league_1.games_squads.create!(game: game_6, status: 'guest')
#
# legion_game_1 = legion_season_second_league_1.games_squads.create!(goals: 4, game: game_2, status: 'guest')
# legion_game_2 = legion_season_second_league_1.games_squads.create!(goals: 5, game: game_4)
# legion_game_3 = legion_season_second_league_1.games_squads.create!(game: game_5)
#
# puts 'Successfully create games'
# #########################################################################
# ##################### Creating Games Squads Players #####################
# #########################################################################
#
# gsp_6_1_old = lazo_game_1_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_2_old = lazo_game_2_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_3_old = lazo_game_3_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_4_old = lazo_game_4_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_5_old = lazo_game_5_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_6_old = lazo_game_6_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_7_old = lazo_game_7_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_8_old = lazo_game_8_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_6_9_old = lazo_game_9_old.games_squads_player.create!(seasons_squads_player: ssp_6_old)
# gsp_4_6_old = lazo_game_6_old.games_squads_player.create!(seasons_squads_player: ssp_4_old)
#
#
# gsp_2_1 = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_2)
# gsp_3_1 = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_3)
# gsp_2_2 = react_game_2.games_squads_player.create!(seasons_squads_player: ssp_2)
# gsp_3_2 = react_game_2.games_squads_player.create!(seasons_squads_player: ssp_3)
# gsp_1_2 = react_game_2.games_squads_player.create!(seasons_squads_player: ssp_1)
#
#
# gsp_4_1 = lazo_game_1.games_squads_player.create!(seasons_squads_player: ssp_4)
# gsp_5_1 = lazo_game_1.games_squads_player.create!(seasons_squads_player: ssp_5)
# gsp_6_1 = lazo_game_1.games_squads_player.create!(seasons_squads_player: ssp_6)
# gsp_4_2 = lazo_game_2.games_squads_player.create!(seasons_squads_player: ssp_4)
#
# gsp_7_1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_7)
# gsp_8_1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_8)
# gsp_7_2 = youngs_game_2.games_squads_player.create!(seasons_squads_player: ssp_7)
# gsp_8_2 = youngs_game_2.games_squads_player.create!(seasons_squads_player: ssp_8)
#
# gsp_9_1 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_9)
# gsp_10_1 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_10)
# gsp_9_2 = legion_game_2.games_squads_player.create!(seasons_squads_player: ssp_9)
# gsp_10_2 = legion_game_2.games_squads_player.create!(seasons_squads_player: ssp_10)
#
# puts 'Successfully create games squads players'


federation = Federation.create!(name: 'Federation 5x5')
tournament_champ = federation.tournaments.create!(name: 'Championship')
league_1   = tournament_champ.leagues.create!(name: 'League 1')
season_second_league_1 = league_1.seasons.create!

react = Team.create!(name: "React")
react_season_second_league_1 = react.seasons_squads.create!(season: season_second_league_1)

legion = Team.create!(name: "Legion")
legion_season_second_league_1 = legion.seasons_squads.create!(season: season_second_league_1)

youngs = Team.create!(name: 'Youngs')
youngs_season_second_league_1 = youngs.seasons_squads.create!(season: season_second_league_1)

navi = Team.create!(name: 'navi')
navi_season_second_league_1 = navi.seasons_squads.create!(season: season_second_league_1)

react_user_1 = User.create!(email: 'grigory-zotenko@gmail.com', name: 'grigory-zotenko', first_name: 'grigory', last_name: 'zotenko', password: '12345678')
react_user_2 = User.create!(email: 'ivan-kuzhelev@gmail.com', name: 'ivan-kuzhelev', first_name: 'ivan', last_name: 'kuzhelev', password: '12345678')
react_user_3 = User.create!(email: 'alik-mikhaylov@gmail.com', name: 'alik-mikhaylov', first_name: 'Alik', last_name: 'Mikhaylov', password: '12345678')
react_user_4 = User.create!(email: 'alexandr-tarasov@gmail.com', name: 'alexandr-tarasov', first_name: 'alexandr', last_name: 'tarasov', password: '12345678')
react_user_5 = User.create!(email: 'vladimir-shabanov@gmail.com', name: 'vladimir-shabanov', first_name: 'vladimir', last_name: 'shabanov', password: '12345678')


legion_user_1 = User.create!(email: 'boris-lyaschenko@gmail.com', name: 'boris-lyaschenko', first_name: 'boris', last_name: 'lyaschenko', password: '12345678')
legion_user_2 = User.create!(email: 'nikita-shuba@gmail.com', name: 'nikita-shuba', first_name: 'nikita', last_name: 'shuba', password: '12345678')
legion_user_3 = User.create!(email: 'maxim-gunin@gmail.com', name: 'maxim-gunin', first_name: 'maxim', last_name: 'gunin', password: '12345678')
legion_user_4 = User.create!(email: 'anton-klepikov@gmail.com', name: 'anton-klepikov', first_name: 'anton', last_name: 'klepikov', password: '12345678')
legion_user_5 = User.create!(email: 'vladislav-senko@gmail.com', name: 'vladislav-senko', first_name: 'vladislav', last_name: 'senko', password: '12345678')

youngs_user_1 = User.create!(email: Faker::Internet.email, name: Faker::Name.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '12345678')
youngs_user_2 = User.create!(email: Faker::Internet.email, name: Faker::Name.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '12345678')
youngs_user_3 = User.create!(email: Faker::Internet.email, name: Faker::Name.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '12345678')
youngs_user_4 = User.create!(email: Faker::Internet.email, name: Faker::Name.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '12345678')
youngs_user_5 = User.create!(email: Faker::Internet.email, name: Faker::Name.name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: '12345678')

navi_user_1 = User.create!(email: Faker::Internet.email, name: "Dendi", first_name: "Daniil", last_name: "Ishutin", password: '12345678')
navi_user_2 = User.create!(email: Faker::Internet.email, name: "XBOCT", first_name: "Aleksandr", last_name: "Dashkevich", password: '12345678')
navi_user_3 = User.create!(email: Faker::Internet.email, name: "Puppey", first_name: "Klement", last_name: "Ivanov", password: '12345678')
navi_user_4 = User.create!(email: Faker::Internet.email, name: "ArtStyle", first_name: "Ivan", last_name: "Antonov", password: '12345678')
navi_user_5 = User.create!(email: Faker::Internet.email, name: "Kuroky", first_name: "Kuro", last_name: "Salexi Tahakomi", password: '12345678')

team_player_react_user_1 = react.teams_players.create!(user: react_user_1, number: '10')
tp_react_user_2 = react.teams_players.create!(user: react_user_2, number: '7')
tp_react_user_3 = react.teams_players.create!(user: react_user_3, number: '17')
tp_react_user_4 = react.teams_players.create!(user: react_user_4, number: '12')
tp_react_user_5 = react.teams_players.create!(user: react_user_5, number: '90')

team_player_legion_user_1 = legion.teams_players.create!(user: legion_user_1, number: '10')
team_player_legion_user_2 = legion.teams_players.create!(user: legion_user_2, number: '7')
team_player_legion_user_3 = legion.teams_players.create!(user: legion_user_3, number: '17')
team_player_legion_user_4 = legion.teams_players.create!(user: legion_user_4, number: '12')
team_player_legion_user_5 = legion.teams_players.create!(user: legion_user_5, number: '90')

team_player_youngs_user_1 = youngs.teams_players.create!(user: youngs_user_1, number: '99')
team_player_youngs_user_2 = youngs.teams_players.create!(user: youngs_user_2, number: '12')
team_player_youngs_user_3 = youngs.teams_players.create!(user: youngs_user_3, number: '15')
team_player_youngs_user_4 = youngs.teams_players.create!(user: youngs_user_4, number: '2')
team_player_youngs_user_5 = youngs.teams_players.create!(user: youngs_user_5, number: '9')

team_player_navi_user_1 = navi.teams_players.create!(user: navi_user_1, number: '10')
team_player_navi_user_2 = navi.teams_players.create!(user: navi_user_2, number: '1')
team_player_navi_user_3 = navi.teams_players.create!(user: navi_user_3, number: '25')
team_player_navi_user_4 = navi.teams_players.create!(user: navi_user_4, number: '29')
team_player_navi_user_5 = navi.teams_players.create!(user: navi_user_5, number: '91')

ssp_1 = react_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_react_user_1)
ssp_2 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_2)
ssp_3 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_3)
ssp_4 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_4)
ssp_5 = react_season_second_league_1.seasons_squads_players.create!(teams_player: tp_react_user_5)

ssp_11 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_legion_user_1)
ssp_22 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_legion_user_2)
ssp_33 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_legion_user_3)
ssp_44 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_legion_user_4)
ssp_55 = legion_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_legion_user_5)

ssp_111 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_youngs_user_1)
ssp_222 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_youngs_user_2)
ssp_333 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_youngs_user_3)
ssp_444 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_youngs_user_4)
ssp_555 = youngs_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_youngs_user_5)

ssp_1111 = navi_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_navi_user_1)
ssp_2222 = navi_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_navi_user_2)
ssp_3333 = navi_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_navi_user_3)
ssp_4444 = navi_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_navi_user_4)
ssp_5555 = navi_season_second_league_1.seasons_squads_players.create!(teams_player: team_player_navi_user_5)

stage_1 = season_second_league_1.stages.create!(name: '1 tour')
game_1 = stage_1.games.create!(status: 'finished', game_day: DateTime.now - 50.days)
game_2 = stage_1.games.create!(status: 'finished', game_day: DateTime.now - 50.days)

react_game_1 = react_season_second_league_1.games_squads.create!(goals: 9, game: game_1)
legion_game_1 = legion_season_second_league_1.games_squads.create!(goals: 4, game: game_1, status: 'guest')

youngs_game_1 = youngs_season_second_league_1.games_squads.create!(goals: 0, game: game_2)
navi_game_1 = navi_season_second_league_1.games_squads.create!(goals: 20, game: game_2, status: 'guest')

gsp = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_1)
gsp = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_2)
gsp = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_3)
gsp = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_4)
gsp = react_game_1.games_squads_player.create!(seasons_squads_player: ssp_5)

gsp0 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_11)
gsp0 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_22)
gsp0 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_33)
gsp0 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_44)
gsp0 = legion_game_1.games_squads_player.create!(seasons_squads_player: ssp_55)


gsp1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_111)
gsp1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_222)
gsp1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_333)
gsp1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_444)
gsp1 = youngs_game_1.games_squads_player.create!(seasons_squads_player: ssp_555)

gsp2 = navi_game_1.games_squads_player.create!(seasons_squads_player: ssp_1111)
gsp2 = navi_game_1.games_squads_player.create!(seasons_squads_player: ssp_2222)
gsp2 = navi_game_1.games_squads_player.create!(seasons_squads_player: ssp_3333)
gsp2 = navi_game_1.games_squads_player.create!(seasons_squads_player: ssp_4444)
gsp2 = navi_game_1.games_squads_player.create!(seasons_squads_player: ssp_5555)

