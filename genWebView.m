function genWebView()
% This script is to automate the webview generation of models contained in this project

% List names of all models for which code is being generated
    mdlName = {'discretePI'};

% Get handle to project
    prj = matlab.project.currentProject;

% Generate Webview
    for i = 1:length(mdlName)
        disp(['Generating Webview of ' mdlName{i} '...'])

        load_system(mdlName{i})
        mdl_webView = slwebview(mdlName{i}, ...
            'FollowModelReference','on',...
            'PackageName', ['WebExplore_' mdlName{i}])
        close_system(mdlName{i})
    end

% Cleanup
    disp('WebView generation complete.')