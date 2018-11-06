clf
clear
x=4:2:40;

ybaer = [0.59423828125, 0.46923828125, 0.41357421875, 0.36962890625, 0.34130859375, 0.31103515625, 0.29833984375, 0.28662109375, 0.27685546875, 0.25732421875, 0.25830078125, 0.24462890625, 0.23388671875, 0.23486328125, 0.22607421875, 0.21533203125, 0.21337890625, 0.21240234375, 0.20849609375];
yerba = [0.58740234375, 0.49853515625, 0.44873046875, 0.41357421875, 0.39697265625, 0.37744140625, 0.36474609375, 0.35205078125, 0.34326171875, 0.33154296875, 0.33056640625, 0.32275390625, 0.31396484375, 0.31201171875, 0.31103515625, 0.30029296875, 0.29541015625, 0.29736328125, 0.29736328125];

ywser = [0.63037109375, 0.54541015625, 0.49853515625, 0.47021484375, 0.44775390625, 0.43798828125, 0.42333984375, 0.41552734375, 0.40576171875, 0.40283203125, 0.39794921875, 0.39501953125, 0.38916015625, 0.38232421875, 0.37451171875, 0.37451171875, 0.37353515625, 0.36669921875, 0.36865234375];
yerws = [0.63134765625, 0.51806640625, 0.45166015625, 0.41357421875, 0.38232421875, 0.36962890625, 0.35498046875, 0.34130859375, 0.32763671875, 0.31982421875, 0.31396484375, 0.31494140625, 0.30712890625, 0.29931640625, 0.29443359375, 0.29052734375, 0.28466796875, 0.29052734375, 0.28271484375];

ybaws = [0.61572265625, 0.48193359375, 0.41455078125, 0.37060546875, 0.33154296875, 0.31005859375, 0.29736328125, 0.27978515625, 0.26513671875, 0.24951171875, 0.25048828125, 0.23193359375, 0.23095703125, 0.21630859375, 0.21630859375, 0.20458984375, 0.20361328125, 0.20166015625, 0.19384765625];
ywsba = [0.61376953125, 0.54541015625, 0.50830078125, 0.48486328125, 0.45263671875, 0.45361328125, 0.43701171875, 0.43115234375, 0.42041015625, 0.42041015625, 0.41064453125, 0.40576171875, 0.39990234375, 0.39990234375, 0.40087890625, 0.39404296875, 0.39111328125, 0.38623046875, 0.38623046875];

ybaerd = [0.60205078125, 0.39013671875, 0.29345703125, 0.23486328125, 0.19580078125, 0.16748046875, 0.14501953125, 0.12939453125, 0.11572265625, 0.10498046875, 0.09716796875, 0.08837890625, 0.08056640625, 0.07666015625, 0.06982421875, 0.06689453125, 0.06298828125, 0.06005859375, 0.05615234375];
ybawsd = [0.61376953125, 0.41357421875, 0.31494140625, 0.24560546875, 0.21044921875, 0.17724609375, 0.15576171875, 0.13330078125, 0.12353515625, 0.10888671875, 0.10400390625, 0.09326171875, 0.08642578125, 0.08154296875, 0.07666015625, 0.06982421875, 0.06884765625, 0.06396484375, 0.05810546875];
ywserd = [0.63623046875, 0.42138671875, 0.32080078125, 0.25439453125, 0.21142578125, 0.18115234375, 0.15869140625, 0.14208984375, 0.12548828125, 0.11474609375, 0.10595703125, 0.09521484375, 0.08837890625, 0.08251953125, 0.07763671875, 0.07275390625, 0.06982421875, 0.06591796875, 0.06201171875];


ybaba = [0.59033203125, 0.48681640625, 0.42236328125, 0.37841796875, 0.35986328125, 0.32666015625, 0.31298828125, 0.29541015625, 0.28076171875, 0.28271484375, 0.27587890625, 0.25927734375, 0.25439453125, 0.24365234375, 0.23193359375, 0.23876953125, 0.21728515625, 0.21826171875, 0.22412109375];
yerer = [0.59326171875, 0.48486328125, 0.43310546875, 0.39794921875, 0.37255859375, 0.35693359375, 0.33837890625, 0.33251953125, 0.31787109375, 0.32080078125, 0.30712890625, 0.30322265625, 0.29833984375, 0.29052734375, 0.29150390625, 0.28564453125, 0.28466796875, 0.28271484375, 0.27880859375];
ywsws = [0.46826171875, 0.41162109375, 0.39599609375, 0.39501953125, 0.38427734375, 0.38037109375, 0.39013671875, 0.38916015625, 0.39208984375, 0.38818359375, 0.38330078125, 0.37646484375, 0.37060546875, 0.37548828125, 0.37158203125, 0.36669921875, 0.36181640625, 0.36474609375, 0.36572265625];

f = fittype('power2')
f1 = fittype('a*x^(-0.79)+c')
fit1 = fit(x',ywser',f1)
fit2 = fit(x',yerws',f1)
% loglog(x, ywser-fit1.c, 's')
% hold on
% loglog(x, yerws-fit2.c,'o')
% hold on
% h = legend('WS-ER', 'ER-WS');
% set(h, 'Fontsize', 10);
% xlabel('x');
% ylabel('\itp_c-��');
% loglog(x, fit1.a*x.^(-0.8), 'b', 'Linewidth', 1.2)
% hold on
% loglog(x, fit2.a*x.^(-0.8), 'r', 'Linewidth', 1.2)

figure
plot(x, ywser, 's')
hold on
plot(x, yerws, 'o')
hold on
h = legend('WS-ER', 'ER-WS');
set(h, 'Fontsize', 10);
y=fit1.a*x.^(-0.8)+fit1.c;
plot(x, y, 'b', 'Linewidth', 1.2)
hold on
y=fit2.a*x.^(-0.8)+fit2.c;
plot(x, y, 'r', 'Linewidth', 1.2)
xlabel('x')
ylabel('\itp_c')
xlim([0, 45])
ylim([0.1, 0.7])

% figure
% fit1 = fit(x',ybaer',f)
% fit2 = fit(x',yerba',f)
% loglog(x, ybaer-fit1.c, 's')
% hold on
% loglog(x, yerba-fit2.c,'o')
% hold on
% h = legend('BA-ER', 'ER-BA');
% set(h, 'Fontsize', 10);
% xlabel('x')
% ylabel('\itp_c-��')
% loglog(x, fit1.a*x.^fit1.b, 'b', 'Linewidth', 1.2)
% hold on
% loglog(x, fit2.a*x.^fit2.b, 'r', 'Linewidth', 1.2)
% 
% figure
% plot(x, ybaer, 's')
% hold on
% plot(x, yerba, 'o')
% hold on
% h = legend('BA-ER', 'ER-BA');
% set(h, 'Fontsize', 10);
% y=fit1.a*x.^fit1.b+fit1.c;
% plot(x, y, 'b', 'Linewidth', 1.2)
% hold on
% y=fit2.a*x.^fit2.b+fit2.c;
% plot(x, y, 'r', 'Linewidth', 1.2)
% xlabel('x')
% ylabel('\itp_c')
% xlim([0, 45])
% ylim([0.1, 0.7])
% 
% figure
% fit1 = fit(x',ybaws',f)
% fit2 = fit(x',ywsba',f)
% loglog(x, ybaws-fit1.c, 's')
% hold on
% loglog(x, ywsba-fit2.c,'o')
% hold on
% h = legend('BA-WS', 'WS-BA');
% set(h, 'Fontsize', 10);
% xlabel('x')
% ylabel('\itp_c-��')
% loglog(x, fit1.a*x.^fit1.b, 'b', 'Linewidth', 1.2)
% hold on
% loglog(x, fit2.a*x.^fit2.b, 'r', 'Linewidth', 1.2)
% 
% figure
% plot(x, ybaws, 's')
% hold on
% plot(x, ywsba, 'o')
% hold on
% h = legend('BA-WS', 'WS-BA');
% set(h, 'Fontsize', 10);
% y=fit1.a*x.^fit1.b+fit1.c;
% plot(x, y, 'b', 'Linewidth', 1.2)
% hold on
% y=fit2.a*x.^fit2.b+fit2.c;
% plot(x, y, 'r', 'Linewidth', 1.2)
% xlabel('x')
% ylabel('\itp_c')
% xlim([0, 45])
% ylim([0.1, 0.7])


% fit1 = fit(x',ybawsd',f)
% loglog(x, ybawsd-fit1.c, 'gs')
% hold on
% fit2 = fit(x',ybaerd',f)
% loglog(x, ybaerd-fit2.c, 'bo')
% hold on
% fit3 = fit(x',ywserd',f)
% loglog(x, ywserd-fit3.c, 'r^')
% hold on
% h = legend('BA-WS', 'BA-ER', 'WS-ER');
% set(h, 'Fontsize', 10);
% loglog(x, fit1.a*x.^fit1.b, 'g', 'Linewidth', 1.2)
% hold on
% loglog(x, fit2.a*x.^fit2.b, 'b', 'Linewidth', 1.2)
% hold on
% loglog(x, fit3.a*x.^fit3.b, 'r', 'Linewidth', 1.2)
% hold on
% xlabel('x');
% ylabel('\itp_c');
% xlim([1, 80]);
% ylim([0.05, 0.75]);
% ax = gca;
% ax.XTick = [1,5,10, 20, 30, 40 ,50 ,60, 70, 80];
% ax.YTick = [0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7];

% figure
% fit1 = fit(x',ybaba',f)
% loglog(x, ybaba-fit1.c, 's')
% hold on
% loglog(x, fit1.a*x.^fit1.b, 'k')
% hold on
% title('ba ba')
% fit1.a*10000.^fit1.b+fit1.c
% fit1 = fit(x',yerer',f)
% loglog(x, yerer-fit1.c, 's')
% hold on
% loglog(x, fit1.a*x.^fit1.b, 'k')
% hold on
% fit1.a*10000.^fit1.b+fit1.c
% fit1 = fit(x',ywsws',f)
% loglog(x, ywsws-fit1.c, 's')
% hold on
% loglog(x, fit1.a*x.^fit1.b, 'k')
% hold on
% fit1.a*10000.^fit1.b+fit1.c