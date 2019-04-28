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

\newenvironment{dedication}{

}{}
\def\enddedication{
  \cleardoublepage
}

\newenvironment{acknowledgement}{
  \begin{center}{
    \large \bf Acknowledgement}
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

\renewcommand{\Large}{\fontsize{14}{15}}

\RequirePackage{titlesec}
\RequirePackage{helvet} % Arial-like font

\titleformat{\chapter}[display]
  {\normalfont\sffamily\Large\bfseries}
  {\chaptertitlename\ \thechapter}{1em}{\Large}
\titleformat{\section}
  {\normalfont\sffamily\Large\bfseries}
  {\thesection}{1em}{}