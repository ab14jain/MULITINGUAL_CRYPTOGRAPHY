function varargout = menu1(varargin)
% MENU1 M-file for menu1.fig
%      MENU1, by itself, creates a new MENU1 or raises the existing
%      singleton*.
%
%      H = MENU1 returns the handle to a new MENU1 or the handle to
%      the existing singleton*.
%
%      MENU1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU1.M with the given input arguments.
%
%      MENU1('Property','Value',...) creates a new MENU1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menu1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menu1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menu1

% Last Modified by GUIDE v2.5 11-May-2012 23:38:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menu1_OpeningFcn, ...
                   'gui_OutputFcn',  @menu1_OutputFcn, ...
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


% --- Executes just before menu1 is made visible.
function menu1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menu1 (see VARARGIN)

% Choose default command line output for menu1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menu1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = menu1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function des_Callback(hObject, eventdata, handles)
% hObject    handle to des (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --------------------------------------------------------------------
function rsa_Callback(hObject, eventdata, handles)
% hObject    handle to rsa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function lzw_Callback(hObject, eventdata, handles)
% hObject    handle to lzw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function rle_Callback(hObject, eventdata, handles)
% hObject    handle to rle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function rle_huffman_Callback(hObject, eventdata, handles)
% hObject    handle to rle_huffman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function zip_Callback(hObject, eventdata, handles)
% hObject    handle to zip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function input_label1_Callback(hObject, eventdata, handles)
% hObject    handle to input_label1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_label1 as text
%        str2double(get(hObject,'String')) returns contents of input_label1 as a double


% --- Executes during object creation, after setting all properties.
function input_label1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_label1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function output_label1_Callback(hObject, eventdata, handles)
% hObject    handle to output_label1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of output_label1 as text
%        str2double(get(hObject,'String')) returns contents of output_label1 as a double


% --- Executes during object creation, after setting all properties.
function output_label1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to output_label1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
List = {'Agra','Kalpurush ANSI','Calibri','Kanchan'};
[fn,pn]=uigetfile('*.txt','Choose a file');
 data1=textread([pn,fn],'%s','whitespace','');
 set(handles.input_label1,'String', data1);
set(handles.edit3,'String',fn);
set(handles.popupmenu1,'String',List);

% --------------------------------------------------------------------
function rle_compression_Callback(hObject, eventdata, handles)
% hObject    handle to rle_compression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% delete('rle_comp');
set(handles.op_text,'Visible','on');
col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:5
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end

name=get(handles.edit3,'String');
% set(handles.edit3,'String',name);
path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\SENDER');
% path(path,'..\SENDER');

[res_rle_comp,filesize,filesize1,time,fname]=rle_comp(name);
set(handles.output_label1,'String',res_rle_comp);
set(handles.edit4,'String',filesize);
set(handles.edit5,'String',filesize1);
set(handles.exec_time,'String',time);
set(handles.edit3,'String',fname);
set(handles.op_text,'Visible','off');
msgbox('RLE COMPRESSION COMPLETE!!','MESSAGE','help'); 


% --------------------------------------------------------------------
function rle_decompression_Callback(hObject, eventdata, handles)
% hObject    handle to rle_decompression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%  
% delete('rle_decomp');
set(handles.op_text,'Visible','on');
col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:5
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end
name=get(handles.edit3,'String');
name
% set(handles.edit3,'String',name);
 path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\RECEIVER');
% path(path,'..\RECEIVER');

[res_rle_decomp,time,fname,filesize,filesize1] =rle_decomp(name);
set(handles.text6,'String','Decompressed file size');
set(handles.edit4,'String',filesize);
set(handles.edit5,'String',filesize1);
set(handles.output_label1,'String',res_rle_decomp);
set(handles.exec_time,'String',time);
set(handles.edit3,'String',fname);
set(handles.op_text,'Visible','off');
msgbox('RLE DECOMPRESSION COMPLETE!!','MESSAGE','help'); 





% --------------------------------------------------------------------
function rle_huff_compression_Callback(hObject, eventdata, handles)
% hObject    handle to rle_huff_compression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete('rle_huff_comp');
set(handles.op_text,'Visible','on');
col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:5
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end

name=get(handles.edit3,'String');
name
set(handles.edit3,'String',name);
 path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\SENDER');
% path('..\SENDER',path);

[outpt_rle_huff,enco,dict,filesize,filesize1,time,fname]=rle_huff_comp(name);
set(handles.output_label1,'String',outpt_rle_huff);
set(handles.edit4,'String',filesize);
set(handles.edit5,'String',filesize1);
set(handles.exec_time,'String',time);
set(handles.edit3,'String',fname);
set(handles.op_text,'Visible','off');
msgbox('RLE-HUFFMAN COMPRESSION COMPLETE!!','MESSAGE','help'); 



% --------------------------------------------------------------------
function rle_huff_decompression_Callback(hObject, eventdata, handles)
% hObject    handle to rle_huff_decompression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete('rle_huff_decomp');
set(handles.op_text,'Visible','on');
col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:5
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end

name=get(handles.edit3,'String');
name
set(handles.edit3,'String',name);
path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\RECEIVER');
% path('..\RECEIVER');

% [outpt_rle_huff,enco,dict,filesize,filesize1,time]=rle_huff_comp(name);
% [outpt_rle_huff_decomp,time1]=rle_huff_decomp(enco,dict);
[outpt_rle_huff_decomp,time1,fname,filesize3,filesize1]=rle_huff_decomp(name);
set(handles.text6,'String','Decompressed file size');
set(handles.edit4,'String',filesize3);
set(handles.edit5,'String',filesize1);
set(handles.output_label1,'String',outpt_rle_huff_decomp);
set(handles.exec_time,'String',time1);
set(handles.edit3,'String',fname);
set(handles.op_text,'Visible','off');
msgbox('RLE-HUFFMAN DECOMPRESSION COMPLETE!!','MESSAGE','help'); 

% --------------------------------------------------------------------
function zip_compression_Callback(hObject, eventdata, handles)
% hObject    handle to zip_compression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.op_text,'Visible','on');
col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:5
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end

name=get(handles.edit3,'String');
name
set(handles.edit3,'String',name);
 path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\SENDER');
% path(path,'..\SENDER');

[result,filesize,filesize1,time,fname]= zip_comp(name)
set(handles.output_label1,'String',result);
set(handles.edit5,'String',filesize);
set(handles.edit4,'String',filesize1);
set(handles.exec_time,'String',time);
set(handles.edit3,'String',fname);
set(handles.op_text,'Visible','off');
msgbox('ZIP COMPRESSION COMPLETE!!','MESSAGE','help'); 




% --------------------------------------------------------------------
function zip_decompression_Callback(hObject, eventdata, handles)
% hObject    handle to zip_decompression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.op_text,'Visible','on');
col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:5
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end
name=get(handles.edit3,'String');
set(handles.edit3,'String',name);
path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\RECEIVER');
% path(path,'..\RECEIVER');

[result,time,fname]= zip_decomp(name);
set(handles.output_label1,'String',result);
set(handles.exec_time,'String',time);
set(handles.edit3,'String',fname);
set(handles.op_text,'Visible','off');
msgbox('ZIP DECOMPRESSION COMPLETE!!','MESSAGE','help'); 




% --------------------------------------------------------------------
function lzw_compression_Callback(hObject, eventdata, handles)
% hObject    handle to lzw_compression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function lzw_decompression_Callback(hObject, eventdata, handles)
% hObject    handle to lzw_decompression (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double



% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
val = get(hObject,'Value');
string_list = get(hObject,'String');
selected_string = string_list{val}; % Convert from cell array
                                    % to string
selected_string     

set(handles.input_label1,'FontName',selected_string);
set(handles.output_label1,'FontName',selected_string);



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close



function exec_time_Callback(hObject, eventdata, handles)
% hObject    handle to exec_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of exec_time as text
%        str2double(get(hObject,'String')) returns contents of exec_time as a double


% --- Executes during object creation, after setting all properties.
function exec_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to exec_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data(see GUIDATA)
l=get(handles.edit7,'String');
len=length(l);
if(len<=16)
    msgbox('KEY ACCEPTED','MESSAGE','help');
else
    msgbox('KEY MUST BE LESS THAN OR EQUAL TO 16 BITS','MESSAGE','error');
end    



% --------------------------------------------------------------------
function des_encryption1_Callback(hObject, eventdata, handles)
% hObject    handle to des_encryption1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete('encrypt.txt');
set(handles.op_text,'Visible','on');

col=get(handles.op_text,'backgroundcolor');%foregroundcolor
for n=1:15
set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
col=1-col;
pause(.2);
end
key=get(handles.edit7,'String');
% key
name=get(handles.edit3,'String');
% name
set(handles.edit3,'String',name);
set(handles.key,'Visible','off');
set(handles.text10,'Visible','off');
set(handles.edit7,'Visible','off');
set(handles.pushbutton4,'Visible','off');
path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\SENDER');
[output,filesize1,fname,time]=final_des1(name,key,'1');
% output
set(handles.output_label1,'String',output);
set(handles.edit4,'String',filesize1);
set(handles.exec_time,'String',time);
set(handles.edit5,'Visible','off');
set(handles.text6,'Visible','off');
set(handles.edit3,'String',fname);
set(handles.output_label,'Visible','on');
set(handles.output_label1,'Visible','on');
set(handles.op_text,'Visible','off');
msgbox('DES ENCRYPTION COMPLETE!!','MESSAGE','help'); 




% --------------------------------------------------------------------
function des_decryption1_Callback(hObject, eventdata, handles)
% hObject    handle to des_decryption1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% openfig('menu1.fig');
% c=0;
% if c==0
%       c=c+1;
% else  
    delete('decrypt.txt');
    set(handles.op_text,'Visible','on');
    col=get(handles.op_text,'backgroundcolor');%foregroundcolor
    for n=1:15
    set(handles.op_text,'foregroundcolor',1-col,'backgroundcolor',col);
    col=1-col;
    pause(.2);
    end
    name=get(handles.edit3,'String');
    key=get(handles.edit7,'String');
    set(handles.key,'Visible','off');
    set(handles.edit3,'String',name);
    set(handles.text10,'Visible','off');
    set(handles.edit7,'Visible','off');
    set(handles.pushbutton4,'Visible','off');
    path(path,'D:\MULITINGUAL_CRYPTOGRAPHY\RECEIVER');
    [output,filesize1,fname,time]=final_des2(name,key,'2');
    set(handles.output_label1,'String',output);
    set(handles.edit4,'String',filesize1);
    set(handles.exec_time,'String',time);
    set(handles.edit5,'Visible','off');
    set(handles.text6,'Visible','off');
    set(handles.edit3,'String',fname);
    set(handles.output_label,'Visible','on');
    set(handles.output_label1,'Visible','on');
    set(handles.op_text,'Visible','off');
    msgbox('DES DECRYPTION COMPLETE!!','MESSAGE','help');

% end

% --------------------------------------------------------------------
function key_Callback(hObject, eventdata, handles)
% hObject    handle to key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text10,'Visible','on');
set(handles.edit7,'Visible','on');
set(handles.pushbutton4,'Visible','on');
get(handles.edit7,'String');



function op_text_Callback(hObject, eventdata, handles)
% hObject    handle to op_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of op_text as text
%        str2double(get(hObject,'String')) returns contents of op_text as a double


% --- Executes during object creation, after setting all properties.
function op_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to op_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function userguide_Callback(hObject, eventdata, handles)
% hObject    handle to userguide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open('manual.fig');
msgbox('MAY I HELP U!!','HELP','help');
