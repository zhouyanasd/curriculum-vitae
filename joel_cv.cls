\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{joel_cv}[2015/07/28 CV class by Joel]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage{enumitem}
\usepackage{parskip}
\usepackage{url}
\usepackage[left=0.75in,top=0.6in,right=0.75in,bottom=0.6in]{geometry}
\usepackage{bold-extra}
\usepackage{color,xcolor}                     % define colors
\usepackage{fontawesome}					% Icons for header

\definecolor{deep_blue}{rgb}{0,.2,.5}
\definecolor{dark_blue}{rgb}{0,.1,.3}
\definecolor{myblue}{rgb}{.01,0.21,0.71}
\definecolor{gray}{rgb}{.5, .5, .5}

\newcommand{\highlight}[1]{{\bf \color{myblue} #1}}
\newcommand{\highlightline}[1]{{\bf \color{myblue} \underline{#1}}}

\newcommand{\printName}[1]{{\huge \textsc{\color{deep_blue} #1}}\\\vspace{0.5em}}
\newcommand{\printPhone}[1]{{\faMobilePhone \, \em Phone}: #1\\}
\newcommand{\printEmail}[1]{{\faEnvelope \, \em Email}: #1\\}
\newcommand{\printWebsite}[1]{{\faGlobe \, \em Website}: {\color{myblue} \url{#1}}\\}
\newcommand{\printGithub}[1]{{\faGithub \, \em Github}: {\color{myblue} \url{#1}}\\}
\newcommand{\printAddress}[1]{{\faMapMarker \em Address}: #1\\}
\newcommand{\sectionTitle}[1]{\vspace{1em}\textbf{\Large \textsc{#1}}\vspace{0.5em}\hrule}

\newenvironment{cvHeader}{\begin{center}}{\end{center}}
\newenvironment{sectionItemize}[1]{
	\begin{itemize}
	\renewcommand\labelitemi{#1}
	\itemsep=-0.5em
}{
	\end{itemize}
}

% #1: Title, #2: Interval
\newenvironment{sectionContentSimple}[2]{
	\hspace{1.2em} {\bf\color{dark_blue} #1} \hfill {\em \color{gray} #2} \vspace{-0.5em}
	\begin{itemize}[leftmargin=1.5em]
		\renewcommand\labelitemi{}
		\itemsep=-0.5em
}{
	\end{itemize}
}

% #1: Title, #2: Interval, #3: subtitle
\newenvironment{sectionContentNormal}[3]{
	\hspace{1.2em} {\bf\color{dark_blue} #1} \hfill {\em \color{gray} #2} \vspace{-0.5em}
	\begin{itemize}[leftmargin=1.5em] \item[] {\em #3} \end{itemize} \vspace{-0.5em}
	\begin{itemize}[leftmargin=1.5em]
		\renewcommand\labelitemi{}
		\itemsep=-0.5em
}{
	\end{itemize}
}
