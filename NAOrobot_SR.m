mdl_nao
zero4 = [0,0,0,0];
zero = [0 0 0 0 0 0];
% desenha os membros do robot
zlim([-350 350])
ylim([-350 350])
hold on
rightleg.plot(zero)
leftleg.plot(zero)
leftarm.plot(zero4)
rightarm.plot(zero4)
% desenha o corpo do robot
patch([0 0 0 0], [100 50 -50 -100], [100 -100 -100 100], 'r')
% desenha a cabeça do robot
patch([0 0 0 0 0 0 0 0], [-25 -50 -50 -25 25 50 50 25], [100 133 166 200 200 166 133 100], 'r')
hold off
crouch = [0 0 (-120*pi)/180 (135*pi)/180 0 0];
segments = [crouch; zero];
tseg = [1, 1];
traj = mstraj(segments, [], tseg, zero, 0.1, 0.1);
leftleg.plot(traj)
rightleg.plot(traj)
bracoNoOmbro = [(20*pi)/180 (45*pi)/180 0 (70*pi)/180];
restingArm = [pi/2 0 0 0];
segments = [bracoNoOmbro; restingArm];
curvaBraco = mstraj(segments, [], [1 1], zero4, 0.1, 0.1);
rightarm.plot(curvaBraco)
% inverte o movimento para um simétrico devido à mudança de lado
bracoNoOmbro(4) = -bracoNoOmbro(4);
bracoNoOmbro(2) = -bracoNoOmbro(2);
segments = [bracoNoOmbro; restingArm];
curvaBraco = mstraj(segments, [], [1 1], zero4, 0.1, 0.1);
leftarm.plot(curvaBraco)