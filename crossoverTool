function varargout = crossoverTool(varargin)
% CROSSOVERTOOL MATLAB code for crossoverTool.fig
%      CROSSOVERTOOL, by itself, creates a new CROSSOVERTOOL or raises the existing
%      singleton*.
%
%      H = CROSSOVERTOOL returns the handle to a new CROSSOVERTOOL or the handle to
%      the existing singleton*.
%
%      CROSSOVERTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CROSSOVERTOOL.M with the given input arguments.
%
%      CROSSOVERTOOL('Property','Value',...) creates a new CROSSOVERTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before crossoverTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to crossoverTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help crossoverTool

% Last Modified by GUIDE v2.5 08-Apr-2017 13:33:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @crossoverTool_OpeningFcn, ...
                   'gui_OutputFcn',  @crossoverTool_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before crossoverTool is made visible.
function crossoverTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to crossoverTool (see VARARGIN)

% Choose default command line output for crossoverTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

crossoverF(handles)

% UIWAIT makes crossoverTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);



% --- Outputs from this function are returned to the command line.
function varargout = crossoverTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function llowSlide_Callback(hObject, eventdata, handles)
% hObject    handle to asdf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.llowSlide.Value;
handles.llowText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function asdf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to asdf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function clowSlide_Callback(hObject, eventdata, handles)
% hObject    handle to clowSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.clowSlide.Value;
handles.clowText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function clowSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clowSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function lhighSlide_Callback(hObject, eventdata, handles)
% hObject    handle to lhighSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.lhighSlide.Value;
handles.lhighText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function lhighSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lhighSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function chighSlide_Callback(hObject, eventdata, handles)
% hObject    handle to chighSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.chighSlide.Value;
handles.chighText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function chighSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chighSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function llowText_Callback(hObject, eventdata, handles)
% hObject    handle to llowText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of llowText as text
%        str2double(get(hObject,'String')) returns contents of llowText as a double

a = handles.llowText.String;
handles.llowSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function llowText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to llowText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lhighText_Callback(hObject, eventdata, handles)
% hObject    handle to lhighText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lhighText as text
%        str2double(get(hObject,'String')) returns contents of lhighText as a double

a = handles.lhighText.String;
handles.lhighSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function lhighText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lhighText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function clowText_Callback(hObject, eventdata, handles)
% hObject    handle to clowText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of clowText as text
%        str2double(get(hObject,'String')) returns contents of clowText as a double

a = handles.clowText.String;
handles.clowSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function clowText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to clowText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function chighText_Callback(hObject, eventdata, handles)
% hObject    handle to chighText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of chighText as text
%        str2double(get(hObject,'String')) returns contents of chighText as a double

a = handles.chighText.String;
handles.chighSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function chighText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chighText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function l1midSlide_Callback(hObject, eventdata, handles)
% hObject    handle to l1midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.l1midSlide.Value;
handles.l1midText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function l1midSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l1midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function c1midSlide_Callback(hObject, eventdata, handles)
% hObject    handle to c1midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.c1midSlide.Value;
handles.c1midText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function c1midSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function l1midText_Callback(hObject, eventdata, handles)
% hObject    handle to l1midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l1midText as text
%        str2double(get(hObject,'String')) returns contents of l1midText as a double

a = handles.l1midText.String;
handles.l1midSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function l1midText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l1midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c1midText_Callback(hObject, eventdata, handles)
% hObject    handle to c1midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c1midText as text
%        str2double(get(hObject,'String')) returns contents of c1midText as a double
a = handles.c1midText.String;
handles.c1midSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function c1midText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function l2midSlide_Callback(hObject, eventdata, handles)
% hObject    handle to l2midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.l2midSlide.Value;
handles.l2midText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function l2midSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l2midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function c2midSlide_Callback(hObject, eventdata, handles)
% hObject    handle to c2midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

a = handles.c2midSlide.Value;
handles.c2midText.String = num2str(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function c2midSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2midSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function l2midText_Callback(hObject, eventdata, handles)
% hObject    handle to l2midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l2midText as text
%        str2double(get(hObject,'String')) returns contents of l2midText as a double

a = handles.l2midText.String;
handles.l2midSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function l2midText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l2midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c2midText_Callback(hObject, eventdata, handles)
% hObject    handle to c2midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c2midText as text
%        str2double(get(hObject,'String')) returns contents of c2midText as a double

a = handles.c2midText.String;
handles.c2midSlide.Value = str2double(a);
crossoverF(handles)


% --- Executes during object creation, after setting all properties.
function c2midText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2midText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
