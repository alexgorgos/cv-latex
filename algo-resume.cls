
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} 
\usepackage{hyperref} 


%	COLORS
%------------------

\usepackage[usenames,dvipsnames]{xcolor} 

\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A} 
\definecolor{subheadings}{HTML}{333333} 
\definecolor{date}{HTML}{666666} 

%	FONTS
%-------------------

\usepackage{fontspec}

\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} 

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} 



%	MAIN 
%----------------------

\newcommand{\namesection}[3]{
\centering{ 
\fontsize{40pt}{60pt} 
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
} \\[5pt] 
\centering{ 
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3} 
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} 
\vspace{-5pt} 
}


%	TITLE STYLING AND SPACING
%---------------------------

\usepackage{titlesec} 

\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt} 
\newcommand{\sectionspace}{\vspace{8pt}} 

\titleformat{\section}{ 
\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

\titleformat{\subsection}{ 
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{11pt}\selectfont\bfseries\normalfont}{}{0em}{}

\newcommand{\runsubsection}[1]{ 
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{ 
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{ 
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}


%	TITLE STYLING AND SPACING
%------------------------------

\newenvironment{tightitemize}
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}