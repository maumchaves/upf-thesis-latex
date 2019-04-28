% More about how to edit this file:
% https://www.overleaf.com/learn/latex/Writing_your_own_class

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{upfthesis}[2019/04/28 UPF Thesis LaTeX class]

\LoadClass[11pt, b5paper, twoside]{report}

% Space between paragraphs
\setlength{\parskip}{\medskipamount}

% No indentation
\setlength{\parindent}{0pt}

% Line space
\renewcommand{\baselinestretch}{1.5}

% Avoid strecth the content
\raggedbottom

\renewcommand{\Large}{\fontsize{14}{15}}

% TL;DR: Times-New-Roman-like font for Latex
% https://ctan.org/pkg/mathptmx
\RequirePackage{mathptmx}

\RequirePackage{helvet} % Arial-like font

\RequirePackage{titlesec}

\titleformat{\chapter}[display]
  {\sffamily\Large\bfseries}
  {\chaptertitlename\ \thechapter}{1em}{\Large}
\titleformat{\section}
  {\sffamily\Large\bfseries}
  {\thesection}{1em}{}

\def\subtitle#1{\gdef\@subtitle{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\department#1{\gdef\@department{#1}}

% TITLE
\def\maketitle{%
  \null
  \vskip 8mm%
  {\sffamily\Large\sffamily \@title \par}%
  \vskip 8mm%
  {\sffamily\large \@subtitle \par}%
  \vskip 12mm%
  {\huge \@author}\\[-3mm]
  \rule{.7\linewidth}{1mm} \par%
  TESI DOCTORAL UPF / \@date \par
  \vskip 1.5cm%
  \textbf{Supervisor}\\
  \@supervisor\\[-2mm]
  \@department
  \begin{figure}[b]
    \centering
    \includegraphics[width=6cm]{logo-upf}
  \end{figure}
}

% PREFACE
\newenvironment{dedication}{

}{}
\def\enddedication{
  \cleardoublepage
}

\newenvironment{acknowledgement}{
  \begin{center}{
    \large\bf Acknowledgement}
  \end{center}
}{}
\def\endacknowledgement{
  \cleardoublepage
}

\def\abstract{
  \begin{center}{
    \large\bf Abstract}
  \end{center}
}
\def\endabstract{
  \cleardoublepage
}