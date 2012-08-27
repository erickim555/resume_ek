\ProvidesClass{resume}

\PassOptionsToClass{11pt,12pt,13pt,14pt}{article}
\LoadClassWithOptions{article}

\setlength{\parindent}{0in} % remove indentation
\newcommand{\tab}{\hspace*{2em}}
\newcommand{\indentlevel}{0.1in}

% margins
\usepackage[left=1in,top=0.5in,right=1in,bottom=0.5in,nohead,nofoot]{geometry}

% fields
\makeatletter
\newcommand{\name}[1]{\def \@name {#1}}
\newcommand{\addressone}[1]{\def \@addressone {#1}}
\newcommand{\addresstwo}[1]{\def \@addresstwo {#1}}
\newcommand{\addressthree}[1]{\def \@addressthree {#1}}
\newcommand{\phone}[1]{\def \@phone {#1}}
\newcommand{\email}[1]{\def \@email {#1}}
\newcommand{\website}[1]{\def \@website {#1}}
\name{}
\addressone{}
\addresstwo{}
\addressthree{}
\phone{}
\website{}
\makeatother

% title
\makeatletter
\def \@maketitle{
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}l c r}
    %% {\Huge\bf \@name} && {\scriptsize \today}\\
    {\Huge\bf \@name} && {\small\texttt{\@website}}\\
    {\small \@addressone}
    {\small\textbullet\ \@addresstwo}
    {\small\textbullet\ \@addressthree} &
    {\small\@phone} &
    {\small\texttt{\@email}}
  \end{tabular*}
  \hrule
  \vspace{2em}
}
\makeatother

% position
% arg: job title, dates, company, team
\makeatletter
\newenvironment{position}[4]{
  \textbf{#1} \hfill #2\\
  \textit{#3 \hfill #4}\\
}{\vspace{1em}}
\makeatother

% component
% arg: component name
\makeatletter
\newenvironment{component}[1]{
  {\large\textsc{#1}}\par  
  \addtolength{\leftskip}{\indentlevel}
}{\par\vspace{1em}}
\makeatother

% tabularfw
% arg: column format
\makeatletter
\newenvironment{tabularfw}[1]{
  \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}#1}
}{\end{tabular*}}
\makeatother

% education
\makeatletter
\newcommand{\school}[4]{#1 \hfill #2, #3 (#4)}
\makeatother
