function createfigure(X1, YMatrix1)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 23-Apr-2017 12:36:35

% Create figure
figure;

% Create axes
axes1 = axes;
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'LineWidth',3);
set(plot1(1),'DisplayName','Max-R-Backward','LineStyle','--');
set(plot1(2),'DisplayName','Max-R-shadow-pricing');

% Create xlabel
xlabel({'Time Steps'});

% Create ylabel
ylabel({'Total Power Delivered (pu)'});

box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',20,'FontWeight','bold');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Position',[0.3055916825026 0 0.3888166349948 1]);

