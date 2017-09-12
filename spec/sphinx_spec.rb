require('rspec')
require('pry')
require('sphinx')

 describe('Game#sphinx') do
   game = Game.new()
   it('checks for correct answer to riddle') do
     expect(game.test_riddle('footsteps')).to(eq('correct'))
   end
 end
