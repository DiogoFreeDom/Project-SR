% único seriallink, a variável é hp6
mdl_motomanHP6
% As 4 posições pelo qual o robot passa
qDefault = [0,0,0,0,-pi/2,0];
q0rotated = q0 + [pi/2, 0, 0, 0, 0, 0];
qFinal = q0rotated + [0, pi/2, 0, 0, 0, 0];
% hp6.plot(qDefault)
% qt = jtraj(qDefault, q0, 5);
% hp6.plot(qt)
% qt = jtraj(q0, q0rotated, 5);
% hp6.plot(qt)
% qt = jtraj(q0rotated, qFinal, 5);
% hp6.plot(qt)
% qt = jtraj(qFinal, q0rotated, 5);
% hp6.plot(qt)
% qt = jtraj(q0rotated, q0, 5);
% hp6.plot(qt)
% qt = jtraj(q0, qDefault, 5);
% hp6.plot(qt)
hp6.plot(qDefault)
pause(2);
segments = [q0; q0rotated; qFinal; q0rotated; q0; qDefault];
tseg = [1, 1, 1];
tseg = [tseg, tseg];
traj = mstraj(segments, [], tseg, qDefault, 0.1, 0.1);
hp6.plot(traj)

