function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 16-Jun-2023 10:24:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
ah = axes ('unit','normalized','position',[0 0 1 1]);
bg = imread('Logo43.jpg'); imagesc(bg);
set(ah,'handlevisibility','off','visible','off');



% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Pilihan_popupmenu.
function Pilihan_popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to Pilihan_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Pilihan_popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Pilihan_popupmenu



Pilihan = get(handles.Pilihan_popupmenu,'value');
axes(handles.axes1);
switch Pilihan
    case 2
       Gambar = imread('foto.jpg');
       imshow(Gambar);
       set(handles.Keterangan_text,'string',{'Nama : Muhammad Ilham Misbakhul Anwar';...
           '';
           'NPM : 202143501747';});
    case 3
       Gambar = imread('foto.jpg');
       imshow(Gambar);
       set(handles.Keterangan_text,'string',{'Nama : Salefi Laoli';...
          '';
       'NPM : 202143501755';});
    case 4
        Gambar = imread('foto.jpg');
        imshow(Gambar);
       set(handles.Keterangan_text,'string',{'Nama : Syarifah Geubrina Alayda';...
          '';
       'NPM : 202143501758';});
    case 5
       Gambar = imread('foto.jpg');
       imshow(Gambar);
       set(handles.Keterangan_text,'string',{'Nama : Luhfiar Harlifah';...
          ''; 
       'NPM : 202143501768';});
    case 6
        Gambar = imread('foto.jpg');
        imshow(Gambar);
       set(handles.Keterangan_text,'string',{'Nama : Muhammad Reihan Mansiz';...
          '';
       'NPM : 202143501767';});
end

% --- Executes during object creation, after setting all properties.
function Pilihan_popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pilihan_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Keterangan_text,'string','');
cla(handles.axes1);
% --------------------------------------------------------------------
function Home_Callback(hObject, eventdata, handles)
% hObject    handle to Home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
eval('MainMenu');


% --------------------------------------------------------------------
function kalkulator_Callback(hObject, eventdata, handles)
% hObject    handle to kalkulator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
eval('Kelompok2');


% --------------------------------------------------------------------
function Keluar_Callback(hObject, eventdata, handles)
% hObject    handle to Keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --------------------------------------------------------------------
function Profile_Kelompok_Callback(hObject, eventdata, handles)
% hObject    handle to Profile_Kelompok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Take_Kamera_Callback(hObject, eventdata, handles)
% hObject    handle to Take_Kamera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Link_Excel_n_Internet_Callback(hObject, eventdata, handles)
% hObject    handle to Link_Excel_n_Internet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Beranda_Callback(hObject, eventdata, handles)
% hObject    handle to Beranda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open('MainMenu.fig');


% --------------------------------------------------------------------
function Menu_Centang_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Centang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Menu_Option_Callback(hObject, eventdata, handles)
% hObject    handle to Menu_Option (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open('Kelompok2.fig');
eval('Kelompok2');


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
