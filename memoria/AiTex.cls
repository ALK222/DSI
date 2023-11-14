%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Version 0.2 (30/01/2021)
%
% This class was created by: Alejandro Barrachina https://github.com/ALK222
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% License:
% GPL-3.0 License 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------
% Identification
%----------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{AiTeX}[30/12/2020 Template for notes of apps for the FDI UCM]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}} % Pass through any options to the base class
\ProcessOptions\relax % Process the given option

\LoadClass{book} % Loads the base class

%----------------------------------------------------------
% Packages and configurations
%----------------------------------------------------------

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{titlesec}
\usepackage[spanish]{babel}
\usepackage{epigraph}
\usepackage{tabularx}
\usepackage{eurosym}
\usepackage[autostyle=true]{csquotes} % Required to generate language-dependent quotes in the bibliography
\usepackage{hyperref}
\hypersetup{
    unicode=true, % Use non-Latin characters in Acrobat's bookmark
    pdffitwindow=false, % window fit to page when opened
    colorlinks=false, % Gives color to the links
    bookmarks=true,
    linktoc=all
}
\usepackage{nameref}
\usepackage[superscript]{cite}
\usepackage[xindy, nomain, acronym, acronyms, nonumberlist, nopostdot, toc, section=chapter,nogroupskip]{glossaries}
\usepackage{glossary-mcols}
\usepackage[automake]{glossaries-extra}
\usepackage{setspace}
\usepackage[toc,page]{appendix} 
\setabbreviationstyle[acronym]{short-long}
\makeglossaries

\usepackage[a4paper, margin=0.8in, headheight=14pt]{geometry}
\usepackage{graphicx}
\usepackage{listings}
\usepackage{float}
\usepackage[table]{xcolor}
\usepackage{titlesec, blindtext}
\definecolor{gray75}{gray}{0.75}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
\usepackage{ragged2e}
\usepackage{subfigure}
\usepackage{listings}
\usepackage{multicol}
\usepackage[justification=centering]{caption}
\usepackage{chngcntr} % counterwithin
\counterwithin{figure}{section}
\counterwithin{table}{section}
\AtBeginDocument{\counterwithin{lstlisting}{chapter}}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{\app}
\fancyhead[RE,LO]{\grade}
\fancyfoot[LE,RO]{\thepage}
\fancyfoot[RE,LO]{\leftmark}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[LE,RO]{\app}
    \fancyhead[RE,LO]{\grade}
    \fancyfoot[LE,RO]{\thepage}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}
}
\usepackage[parfill]{parskip}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{epigraph}
\usepackage{enumitem}
\usepackage[
    type={CC},
    modifier={by-nc-sa},
    version={4.0},
]{doclicense}
\usepackage{tcolorbox}

%----------------------------------------------------------
% New commands
%----------------------------------------------------------
\newcommand{\AiTeX}
    {A\kern-.110em%
        {\sbox\z@ T%
         \vbox to\ht\z@{\hbox
         {\check@mathfonts
            \fontsize\sf@size\z@
            \math@fontsfalse\selectfont
            I}%
         \vss}%
        }%
        \kern-.10em%
    \TeX}

\newcommand*{\abstractA}[0]{
\newpage
\chapter*{Sobre \AiTeX }
\noindent
\AiTeX
es una plantilla de \LaTeX\phantom{} creada por Alejandro Barrachina Argudo.\\\\
\noindent
Esta plantilla se crea para facilitar el proceso de elaborar apuntes\\\\
\noindent
\vfill
\noindent
\textsc{\textbf{\underline{Contacto}}\\ \textbf{Autor:} Alejandro Barrachina Argudo \\ \textbf{Correo:} \href{mailto:alejba02@gmail.com}{alejba02@gmail.com}\\}
}

% \datos{facultad}{universidad}{grado}{asignatura}{subtitulo}{autor}{curso}
\newcommand*{\datos}[7]{ % Datos para los apuntes
\newcommand*{\facultad}{Facultad de #1}
\newcommand*{\universidad}{#2}
\newcommand*{\grade}{Grado en #3}
\newcommand*{\app}{#4}
\newcommand*{\subtitulo}{#5}
\newcommand*{\autor}{#6}
\newcommand*{\curso}{#7}
}{}

\newcommand*{\portadaApuntes}[0]{ % Portada
\begin{titlepage} % Suppresses headers and footers on the title page
    \pagestyle{empty}
    \centering % Centre everything on the title page
	
	\scshape % Use small caps for all text on the title page
	
	\vspace*{\baselineskip} % White space at the top of the page
	
	%------------------------------------------------
	%	Title
	%------------------------------------------------
	
	\rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} % Thick horizontal rule
	\rule{\textwidth}{0.4pt} % Thin horizontal rule
	
	\vspace{0.75\baselineskip} % Whitespace above the title
	
	{\LARGE \app} % Title
	
	\vspace{0.75\baselineskip} % Whitespace below the title
	
	\rule{\textwidth}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt} % Thin horizontal rule
	\rule{\textwidth}{1.6pt} % Thick horizontal rule
	
	\vspace{2\baselineskip} % Whitespace after the title block
	
	%------------------------------------------------
	%	Subtitle
	%------------------------------------------------
	
	\subtitulo% Subtitle or further description
	
	\vspace*{3\baselineskip} % Whitespace under the subtitle
	
	%------------------------------------------------
	%	Editor(s)
	%------------------------------------------------
	
	
	\vspace{0.5\baselineskip} % Whitespace before the editors
	
	{\scshape\Large\autor\\} % Editor list
	
	\vspace{0.5\baselineskip} % Whitespace below the editor list
	
	\textit{\grade}\\ % Editor affiliation
	\textit{\facultad}\\
	\textit{\universidad}\\
	
	\vfill % Whitespace between editor names and publisher logo

    \begin{figure}[H]
        \centering 
        \includegraphics[width=0.4\textwidth]{./logoComplutense.png}
    \end{figure}
	
	\vspace{0.3\baselineskip} % Whitespace under the publisher logo
	
    \curso % Publication year
\end{titlepage}
}

\newcommand*{\biblio}[1]{ % Bibliografia
\newpage
\addcontentsline{toc}{chapter}{\protect\numberline{#1}Bibliografía y enlaces de referencia}%0
\nocite{*}
\bibliographystyle{ieeetr}
\bibliography{biblio.bib}
}

% CHAPTER FORMAT


\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\Huge\bfseries}
\titlespacing*{\chapter}{0pt}{-30pt}{0pt}

\newcommand{\chapterA}[1]{
    \chapter{#1}
    \vspace{-0.5ex}%
    \noindent \rule{\textwidth}{0.3pt}
}

\newcommand{\chapterANonNumber}[1]{
    \chapter*{#1}
    \vspace{-0.5ex}%
    \noindent \rule{\textwidth}{0.3pt}
    \addcontentsline{toc}{chapter}{#1}
}

\makeatletter
     \renewcommand*\l@figure{\@dottedtocline{1}{1em}{3.2em}}
\makeatother

\renewcommand{\listfigurename}{Lista de figuras}
\renewcommand{\listtablename}{Lista de tablas}

% CODE FORMATS

% C++
\lstdefinestyle{customc++}{
  backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    xleftmargin=\parindent,
    language=C++,
    morekeywords={fun, Tupla, Marca}
}

% OTHER FORMATS

% COLORED BOX
\newcommand{\greybox}[1]{\fcolorbox{black}{lightgray!70!white}{#1}}
\newcommand{\formbox}[1]{\greybox{\parbox{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{#1}}}


\newtcolorbox{escenario}{
  colback=lightgray!20,
  colframe=lightgray!20,
  title={\centering\textbf{\color{black}\underline{\textbf{Escenario}}}},
  arc=6pt
}

\newtcolorbox{solucion}{
  colback=white,
  colframe=white,
  fonttitle=\bfseries,
  title={\centering\textbf{\color{black}\textbf{Solución}}},
  arc=6pt,
  width=0.85\textwidth,
  halign=center
}

\newtcolorbox{problema}{
  colback=lightgray!20,
  colframe=lightgray!20,
  title={\centering\textbf{\color{black}\underline{\textbf{Problema}}}},
  arc=6pt
}

\newtcolorbox{vision}{
  colback=white,
  colframe=white,
  fonttitle=\bfseries,
  title={\centering\textbf{\color{black}\textbf{Visión}}},
  arc=6pt,
  width=0.85\textwidth,
  halign=center
}
