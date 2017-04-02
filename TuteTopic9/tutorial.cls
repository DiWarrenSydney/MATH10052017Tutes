%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Tutorial Style Version 0.001 25 July 1995
%%
%%  RW Eyland
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Identification Part
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\ProvidesClass{tutorial}[1995/07/25 SU School of Mathematics and Statistics]
%
\NeedsTeXFormat{LaTeX2e}[1994/12/01]
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Initial Code
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Declaration of Options
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%
\AtBeginDocument{%
  \larger[2]
}%
\AtEndOfClass{%
  \PassOptionsToClass{oneside,final,version,fleqn}{amsart}
  \hoffset-1in\voffset-1in
  \setlength{\paperheight}{297mm}%
  \setlength{\paperwidth}{210mm}%
  \setlength{\textheight}{260mm}%
  \setlength{\textwidth}{170mm}%
  \setlength{\oddsidemargin}{20mm}%
  \setlength{\evensidemargin}{20mm}%
  \setlength{\topmargin}{7.5mm}%
  \tagsleft@false \PassOptionsToPackage{reqno}{amsmath}
}%
%
\DeclareOption{stdtut}{}%
%
\DeclareOption{bigtut}{%
  \AtEndOfClass{%
    \setlength{\textheight}{270mm}%
    \setlength{\textwidth}{180mm}%
    \setlength{\oddsidemargin}{15mm}%
    \setlength{\evensidemargin}{15mm}%
    \setlength{\topmargin}{4mm}%
  }%
  \AtBeginDocument{%
    \larger[-1]
  }%
}%
%
\DeclareOption{hugetut}{%
  \AtEndOfClass{%
    \setlength{\textheight}{270mm}%
    \setlength{\textwidth}{180mm}%
    \setlength{\oddsidemargin}{15mm}%
    \setlength{\evensidemargin}{15mm}%
    \setlength{\topmargin}{4mm}%
  }%
  \AtBeginDocument{%
    \larger[-2]
  }%
}%
%
\DeclareOption{gargantuantut}{%
  \AtEndOfClass{%
    \PassOptionsToClass{oneside,final,reqno,twocolumn}{amsart}
    \setlength{\textheight}{270mm}%
    \setlength{\textwidth}{180mm}%
    \setlength{\oddsidemargin}{15mm}%
    \setlength{\evensidemargin}{15mm}%
    \setlength{\topmargin}{4mm}%
  }%
  \AtBeginDocument{%
    \larger[-3]\twocolumn
  }%
}%
%
%\DeclareOption*{\PassOptionToClass{\CurrentOption}{amsart}}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Execution of Options
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
\ExecuteOptions{stdtut}
\ProcessOptions\relax
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Package Loading
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\LoadClass{amsart}[1995/02/23 v1.2b]
\RequirePackage{version}%
\RequirePackage{fancybox}%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Maketitle
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\makeatletter
%%
\newtoks\mainheading
\newtoks\unit
\newtoks\unitcode
\newtoks\unitname
\newcount\sheetnumber
\newtoks\semester
\newtoks\sheettype
\newtoks\sheetsubtitle
\newtoks\solnhe@d
\newtoks\sheetn@me
\mainheading={The University of Sydney}
\unit={Pure Mathematics}
\unitcode={MATH1001}
\unitname={Pure Mathematics}
\def\nosheetnumber{\sheetnumber=9999}
%
%
\newtoks\rubric\rubric={}%
\newskip\rubricskip\rubricskip 2.5mm

\def\m@k@title{%
  \begin{center}
    {\sc\the\mainheading}\vskip -3.5mm
   % {\sc\the\unit}\vskip 2mm                
    {{\sf\the\unitcode}\ \the\unitname}\\
{\tt \footnotesize Copyright: University of Sydney}  %\vskip 2mm      % EDITED BY MICHAEL STEWART July 2011
  \end{center}
   \hbox to \hsize{\leaders\hrule height .6pt\hfill}\nointerlineskip\vskip 1.0mm
   \hbox to \hsize{\strut\kern2pt\rlap{\the\semester}\hfil{%
      %\bf\the\sheettype\ifnum\sheetnumber=9999\else\ \the\sheetnumber\fi
      Topic9: Test for Proportion
      \if\the\sheetsubtitle!!\else:\ \the\sheetsubtitle\fi}\hfil
      \llap{\number\year}\kern2pt}\nointerlineskip
   \vskip 0.5mm\hbox to \hsize{\leaders\hrule height .6pt\hfill}%
     \expandafter\ifx\the\rubric!!
      \else
        \vskip\rubricskip
        \hbox to\hsize{%
          \setlength{\fboxrule}{0.5pt}%
          \setlength{\fboxsep}{2mm}%
          \hss\fbox{\vbox{\hsize.95\hsize
          \smaller[2]\parindent=0pt\parskip=0.6\baselineskip
          \noindent\the\rubric}}\hss}%
        \vskip\rubricskip
        \global\rubric={}
      \fi
}
%
\def\m@k@littletitle{%
   \hbox to \hsize{\leaders\hrule height .6pt\hfill}\nointerlineskip\vskip 1.0mm
   \hbox to \hsize{\strut\kern2pt\rlap{\the\semester}\hfil{%
      \bf\the\sheettype\ifnum\sheetnumber=9999\else\ \the\sheetnumber\fi
      \if\the\sheetsubtitle!!\else:\ \the\sheetsubtitle\fi}\hfil
      \llap{\number\year}\kern2pt}\nointerlineskip
   \vskip 0.5mm\hbox to \hsize{\leaders\hrule height .6pt\hfill}
     \expandafter\ifx\the\rubric!!
      \else
        \vskip\rubricskip
        \hbox to\hsize{%
          \setlength{\fboxrule}{0.5pt}%
          \setlength{\fboxsep}{2mm}%
          \hss\fbox{\vbox{\hsize.95\hsize
          \smaller[2]\parindent=0pt\parskip=0.6\baselineskip
          \noindent\the\rubric}}\hss}%
        \vskip\rubricskip
        \rubric={}
      \fi
}
%%
%%
\newenvironment{displaybox}[1][c]{%
  \begingroup
    \setlength{\fboxrule}{0.8pt}%
    \setlength{\fboxsep}{4mm}%
    \if#1c
      \setbox0\vbox\bgroup
        \let\\\cr
        \halign\bgroup\hfil##\hfil\\
    \else
      \setbox0\vbox\bgroup
        \let\\\cr
        \halign\bgroup##\hfil\\
    \fi
}{%
      \crcr\egroup
      \egroup
    \begin{center}\fbox{\box0}\end{center}\endgroup
}%
%%
%%
%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%  Questions and parts
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%

%
\def\@greek#1{%
  \ifcase#1\or$\alpha$\or $\beta$\or $\gamma$\or $\delta$\or $\epsilon$\or $\zeta$\or
              $\eta$\or $\theta$\or $\iota$\or $\kappa$\or $\lambda$\or $\mu$\or
              $\nu$\or $xi$\or $o$\or $\pi$\or $\rho$\or $\sigma$\or $\tau$\or
              $\upsilon$\or $\phi$\or $\chi$\or $\psi$\or $omega$\else\@ctrerr\fi}
%
%
\def\greek#1{\@greek{\csname c@#1\endcsname}}
%%
\def\@nihil#1{\hfil}
\def\nihil#1{\@nihil{\csname c@#1\endcsname}}
%
\newcount\@p@rtdepth \@p@rtdepth = 0
%
%
\def\letterparts{%
  \expandafter\def\csname thep@rt\romannumeral\the\@p@rtdepth\endcsname{%
    \expandafter\@alph\csname c@p@rt\romannumeral\the\@p@rtdepth\endcsname
  }%
}%
%
%
\def\romanparts{%
  \expandafter\def\csname thep@rt\romannumeral\the\@p@rtdepth\endcsname{%
    \expandafter\@romannumeral\csname c@p@rt\romannumeral\the\@p@rtdepth\endcsname
  }%
}%
%
%
\def\greekparts{%
  \expandafter\def\csname thep@rt\romannumeral\the\@p@rtdepth\endcsname{%
    \expandafter\@greek\csname c@p@rt\romannumeral\the\@p@rtdepth\endcsname
  }%
}%
%
%
\def\Letterparts{%
  \expandafter\def\csname thep@rt\romannumeral\the\@p@rtdepth\endcsname{%
    \expandafter\@Alpha\csname c@p@rt\romannumeral\the\@p@rtdepth\endcsname
  }%
}%
%
%
\def\numberparts{%
  \expandafter\def\csname thep@rt\romannumeral\the\@p@rtdepth\endcsname{%
    \expandafter\@arabic\csname c@p@rt\romannumeral\the\@p@rtdepth\endcsname
  }%
  \expandafter\def\csname thep@rt\romannumeral\the\@p@rtdepth\endcsname{%
    \expandafter\@arabic\csname c@p@rt\romannumeral\the\@p@rtdepth\endcsname
  }%
  \def\labelp@rtii{(\thep@rtii)}
}%
\def\blankparts{%
  \def\labelp@rti{}%
}%
%
\def\resetpart#1{\edef\XXX{{p@rt\romannumeral\the\@p@rtdepth}}\expandafter\setcounter\XXX{#1}\expandafter\addtocounter\XXX{-1}}%
%
\@definecounter{p@rti}
\@definecounter{p@rtii}
\@definecounter{p@rtiii}
\@definecounter{p@rtiv}
\@definecounter{p@rtv}
%
\newskip\questionskip\skip\questionskip 7.5mm plus 2.5mm minus 1mm
%
\def\p@rtvertspacingi{%
  \setlength{\itemsep}{\skip\questionskip}%
  \setlength{\topsep}{2mm}%
  \setlength{\partopsep}{2mm}%
  \setlength{\parsep}{0.8\baselineskip}%
  \parskip=0pt
}%
%
%
\def\p@rtvertspacingii{%
  \setlength{\itemsep}{2mm plus 0mm minus 0.5mm}%
  \setlength{\topsep}{2mm plus 0mm minus 0.5mm}%
  \setlength{\partopsep}{2mm}%
  \setlength{\parsep}{2mm}%
}%
%
%
\def\p@rtvertspacingiii{%
  \setlength{\itemsep}{1mm plus 0mm minus 0.5mm}%
  \setlength{\topsep}{2mm plus 0mm minus 0.5mm}%
  \setlength{\partopsep}{2mm}%
  \setlength{\parsep}{2mm}%
}%
%
%
\def\p@rtvertspacingiv{%
  \setlength{\itemsep}{1mm plus 0mm minus 0.5mm}%
  \setlength{\topsep}{1mm plus 0mm minus 0.5mm}%
  \setlength{\partopsep}{2mm}%
  \setlength{\parsep}{2mm}%
}%
%
%
\def\p@rtvertspacingv{%
  \setlength{\itemsep}{1mm plus 0mm minus 0.5mm}%
  \setlength{\topsep}{1mm plus 0mm minus 0.5mm}%
  \setlength{\partopsep}{2mm}%
  \setlength{\parsep}{2mm}%
}%
%
%
\def\lettersfirst{%
  \let\p@rtstylei\questionlist
  \let\p@rtstyleii\alphalist
  \let\p@rtstyleiii\romanlist
  \let\p@rtstyleiv\greeklist
  \let\p@rtstylev\Alphalist
  %%
  \def\labelp@rti{{\bfseries\thep@rti.}}
  \def\thep@rti{\@arabic\c@p@rti}
  %%
  \def\labelp@rtii{(\thep@rtii)}
  \def\thep@rtii{\@alph\c@p@rtii}
  \def\p@p@rtii{\thep@rti(\thep@rti)}
  %%
  \def\labelp@rtiii{(\textit\thep@rtiii)}
  \def\thep@rtiii{\@roman\c@p@rtiii}
  \def\p@p@rtiii{\thep@rtii}
  %%
  \def\labelp@rtiv{(\thep@rtiv)}
  \def\thep@rtiv{\@greek\c@p@rtiv}
  \def\p@p@rtiv{\p@p@rtiii\thep@rtiii}
  %%
  \def\labelp@rtv{(\thep@rtv)}
  \def\thep@rtv{\@Alph\c@p@rtv}
  \def\p@p@rtv{\p@p@rtiv\thep@rtiv}
}%
%%
\def\romanfirst{%
  \let\p@rtstylei\questionlist
  \let\p@rtstyleii\romanlist
  \let\p@rtstyleiii\alphalist
  \let\p@rtstyleiv\numberlist
  \let\p@rtstylev\Alphalist
  %%
  \def\labelp@rti{{\bfseries\thep@rti.}}
  \def\thep@rti{\@arabic\c@p@rti}
  %%
  \def\labelp@rtii{(\textit\thep@rtii)}
  \def\thep@rtii{\@roman\c@p@rtii}
  \def\p@p@rtii{\thep@rti}
  %%
  \def\labelp@rtiii{(\thep@rtiii)}
  \def\thep@rtiii{\@alph\c@p@rtiii}
  \def\p@p@rtiii{\thep@rti(\thep@rtii)}
  %%
  \def\labelp@rtiv{(\thep@rtiv)}
  \def\thep@rtiv{\@arabic\c@p@rtiv}
  \def\p@p@rtiv{\p@p@rtiii\thep@rtiii}
  %%
  \def\labelp@rtv{(\thep@rtv)}
  \def\thep@rtv{\@Alph\c@p@rtv}
  \def\p@p@rtv{\p@p@rtiv\thep@rtiv}
}%
%
\AtBeginDocument{\romanfirst\everymath{\displaystyle}}
%
%
\def\questionlist{%
  \edef\@p@rtctr{p@rt\romannumeral\the\@p@rtdepth}%
  \list{\csname label\@p@rtctr\endcsname}
    {\usecounter{\@p@rtctr}\def\makelabel##1{\llap{\upshape##1}\hss}%
    \setlength{\itemindent}{0pt}%
    \setlength{\listparindent}{0pt}%
    \setlength{\leftmargin}{23pt}%
    \setlength{\labelsep}{5pt}%
    \setlength{\labelwidth}{0pt}%
  }%
}%
%
%
\def\alphalist{%
  \edef\@p@rtctr{p@rt\romannumeral\the\@p@rtdepth}%
  \list{\csname label\@p@rtctr\endcsname}
    {\usecounter{\@p@rtctr}\def\makelabel##1{\rlap{\upshape##1}\hss}%
      \setlength{\itemindent}{0pt}%
      \setlength{\listparindent}{0pt}%
      \setlength{\leftmargin}{20pt}%
      \setlength{\labelsep}{1pt}%
      \setlength{\labelwidth}{18pt}%
  }%
}%
%
%
\def\numberlist{%
  \edef\@p@rtctr{p@rt\romannumeral\the\@p@rtdepth}%
  \list{\csname label\@p@rtctr\endcsname}
    {\usecounter{\@p@rtctr}\def\makelabel##1{\rlap{\upshape##1}\hss}%
      \setlength{\itemindent}{0pt}%
      \setlength{\listparindent}{0pt}%
      \setlength{\leftmargin}{20pt}%
      \setlength{\labelsep}{1pt}%
      \setlength{\labelwidth}{18pt}%
  }%
}%
%
%
\def\romanlist{%
  \edef\@p@rtctr{p@rt\romannumeral\the\@p@rtdepth}%
  \list{\csname label\@p@rtctr\endcsname}
    {\usecounter{\@p@rtctr}\def\makelabel##1{\rlap{\upshape##1}\hss}%
      \setlength{\itemindent}{0pt}%
      \setlength{\listparindent}{0pt}%
      \setlength{\leftmargin}{31pt}%
      \setlength{\labelsep}{1pt}%
      \setlength{\labelwidth}{29pt}%
  }%
}%
%
%
\def\greeklist{%
  \edef\@p@rtctr{p@rt\romannumeral\the\@p@rtdepth}%
  \list{\csname label\@p@rtctr\endcsname}
    {\usecounter{\@p@rtctr}\def\makelabel##1{\rlap{\upshape##1}\hss}%
      \setlength{\itemindent}{0pt}%
      \setlength{\listparindent}{0pt}%
      \setlength{\leftmargin}{21pt}%
      \setlength{\labelsep}{1pt}%
      \setlength{\labelwidth}{19pt}%
  }%
}%
%
%
\def\Alphalist{%
  \edef\@p@rtctr{p@rt\romannumeral\the\@p@rtdepth}%
  \list{\csname label\@p@rtctr\endcsname}
    {\usecounter{\@p@rtctr}\def\makelabel##1{\rlap{\upshape##1}\hss}%
      \setlength{\itemindent}{0pt}%
      \setlength{\listparindent}{0pt}%
      \setlength{\leftmargin}{21pt}%
      \setlength{\labelsep}{1pt}%
      \setlength{\labelwidth}{19pt}%
  }%
}%
%
%
\newcount\@p@rtdepth\@p@rtdepth=0
\def\p@rts{%
  \ifnum\@p@rtdepth >4
    \@toodeep
  \else
    \advance\@p@rtdepth\@ne
    \edef\@TEMP{p@rtstyle\romannumeral\the\@p@rtdepth}%
    \csname\@TEMP\endcsname
    \edef\@TEMP{p@rtvertspacing\romannumeral\the\@p@rtdepth}%
    \csname\@TEMP\endcsname
  \fi
}%
%
\let\endp@rts=\endlist
%
\def\qu@stions{%
  \advance\@p@rtdepth\@ne
  \edef\@TEMP{p@rtstyle\romannumeral\the\@p@rtdepth}%
  \csname\@TEMP\endcsname
  \edef\@TEMP{p@rtvertspacing\romannumeral\the\@p@rtdepth}%
  \csname\@TEMP\endcsname
}%
%
\let\endqu@stions =\endlist
%
\let\part\item
%
\parindent=0pt
\parskip=\baselineskip
%
%
\newcount\acr@ss\acr@ss=1
\newcount\ACR@SS
\newcount\Acr@ss
\newdimen\HSIZE
\newdimen\padjustamount
\def\padjust#1{\global\padjustamount=#1}
\global\let\realp@rt\item
%
\let\exercise\item
\let\question\item
%%
\newif\ifacross\acrossfalse
%%
\def\p@@rt{%
  \global\let\part\p@@@rt\let\item\p@@@rt
  \realp@rt\indent\vtop\bgroup
    \topskip=0pt\hsize=\HSIZE\leftmargin=0pt\bgroup
}%
%
\def\p@@@rt{%
  \egroup\egroup
  \ifnum\acr@ss=\ACR@SS
    \global\acr@ss=0
    \vadjust{\kern\padjustamount}\padjustamount=0pt
    \par\indent
  \fi
  \global\advance\acr@ss by 1
  \vbox\bgroup\realp@rt\vtop\bgroup\topskip=0pt\hsize=\HSIZE\leftmargin=0pt
}%
%
%
\def\p@rtsacross#1{%
  \ifnum#1<2
    \global\ACR@SS=1
  \else
    \global\ACR@SS=#1
  \fi
  \global\acr@ss=1
  \HSIZE=\linewidth\global\divide\HSIZE by #1\global\HSIZE\HSIZE
% \ifacross
%   \global\let\part\p@@@rt\let\item\p@@@rt
%   \bgroup\bgroup
% \else
    \global\acrosstrue
    \global\let\part\p@@rt\global\let\item\p@@rt
    \padjustamount=0pt
    \parskip = 0pt
% \fi
}%
%
\newcommand{\across}[1][2]{%
  \ifnum#1<2
    \global\ACR@SS=1
  \else
    \global\ACR@SS=#1
  \fi
  \global\acrossfalse
  \global\acr@ss=\ACR@SS
  \HSIZE=\linewidth\global\divide\HSIZE by #1\global\HSIZE\HSIZE
}%
%
\def\endp@rtsacross{%
  \egroup\egroup\global\acrossfalse
  \vadjust{\kern\padjustamount}\padjustamount=0pt\par
  \global\let\part\realp@rt\global\let\item\realp@rt
}%
%%
%
\newenvironment{parts}[1][1]{\p@rts\ifnum#1<2\global\acrossfalse\else\p@rtsacross{#1}\fi}{\ifacross\endp@rtsacross\fi\endp@rts}%
\newenvironment{questions}{\qu@stions}{\endqu@stions}%
\newenvironment{partsacross}[1][2]{\p@rtsacross{#1}}{\endp@rtsacross}%
%
%
\pagenumbering{nihil}
%%
%%
\newif\ifsolutions\solutionsfalse

\def\withsolutions{%
  \solutionstrue
  \includeversion{solutionsonly}%
  \excludeversion{questionsonly}%
  \renewenvironment{solution}{%
    \begingroup
      \addtocounter{p@rti}{-1}%
      \def\labelp@rti{}%
      \par\noindent\kern -12.5pt\vspace{-0.5\skip\questionskip}
      \lower0.6\skip\questionskip\hbox{\fontshape{sl}\fontseries{bx}\selectfont Solution}%
      \question
    \endgroup}{}%
}%

\def\questionsonly{%
  \includeversion{questionsonly}%
  \excludeversion{solutionsonly}%
  \excludeversion{solution}%
}%
%%

\def\@mainsize{12}
\newif\ifcarryon\carryonfalse
\newcommand{\continue}{\carryontrue}
\newenvironment{set}{%
  \ifcarryon\m@k@littletitle\global\carryonfalse\else\par\newpage\m@k@title\fi}{\relax}%
\newenvironment{tutorial}{%
  \ifsolutions\sheettype{Tutorial Solutions}\global\carryonfalse\else\sheettype{Tutorial}\fi \ifcarryon\m@k@littletitle\global\carryonfalse\else\par\newpage\m@k@title\fi}{\relax}%
\newenvironment{problem}{%
  \ifsolutions\sheettype{Problem Sheet Solutions Week}\global\carryonfalse\else\sheettype{Problem Sheet Week}\fi
  \ifcarryon\m@k@littletitle\global\carryonfalse\else\par\newpage\m@k@title\fi}{\relax}%
\newenvironment{computertutorial}{%
  \ifsolutions\sheettype{Computer Tutorial Solutions Week}\global\carryonfalse\else\sheettype{Computer Tutorial Week}\fi \ifcarryon\m@k@littletitle\global\carryonfalse\else\par\newpage\m@k@title\fi}{\relax}%

\def\ps@plain{\ps@empty
  \def\@oddfoot{\normalfont \hfil\thepage\hfil}%
  \let\@evenfoot\@oddfoot}
\pagestyle{plain}

\questionsonly
\makeatother
