\ProvidesClass{new_cv}[2023/08/07 v0.1 CV class]
\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse 
\usepackage{multicol}
\usepackage[dvipsnames]{xcolor}
\usepackage[normalem]{ulem}
\pagestyle{empty} % Suppress page numbers
	
% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
	\sectionskip
     {\bf \MakeUppercase{#1 }\xrfill[0pt]{1pt}} % Section title
		\begin{list}{}{ % List for each individual item in the section
				\setlength{\leftmargin}{0.0em} % Margin within the section
			}
			\item[]
		}{
		\end{list}
}

\newenvironment{rSubsection}[2]{ % 4 input arguments - company name, year(s) employed, job title and location
	  {\color{NavyBlue} \bf #1} \hfill{\em #2} \smallskip
	\begin{list}{$\cdot$}{\leftmargin=1em} % \cdot used for bullets
		\itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
	}{
	\end{list}
	\vspace{0.5em} % Some space after the list of bullet points
}
\def\sectionskip{\medskip} % The space after the heading section
%\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
