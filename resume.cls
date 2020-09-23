\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[Marlon Calvo CV Class]
\LoadClass{article}

\usepackage{lmodern}
\usepackage{titlesec}
\usepackage{multicol}
\usepackage{geometry}
    %\usepackage{showframe} %This line can be used to clearly show the new margins
\newgeometry{vmargin={15mm}, hmargin={12mm,17mm}}   % set the margins

\titlespacing*{\section}
{0pt}{0pt}{0pt}

\pagenumbering{gobble}

\RequirePackage{titlesec}
\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}

\titleformat{\subsection}
    {\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\name}[1]{%
    \centerline{\Huge{#1}}
}

\newcommand\contact[5]{%
    \begin{center}
        #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3 \\
        #4 {\large\textperiodcentered} #5%
    \end{center}
}

\newcommand\fieldheader[5]{%
    #4 - #5  \textbf{#1} \hfill #3\\
    \textbf{\textit{#2}}
}

\usepackage{longtable} % Required for tables that span multiple pages
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{fieldlist}[1]{
    \section{#1}
	\begin{longtable}[H]{l l}
}{
	\end{longtable}
}

\newcommand{\field}[6][Current]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	\parbox[t]{0.2\textwidth}{% 17.5% of the text width of the page
		#2 - #1 % Leftmost entry date(s) text
	}%
	&\parbox[t]{0.825\textwidth}{% 82.5% of the text width of the page
		\textbf{#3}% Entry heading text
		\hfill% Horizontal whitespace
		{\footnotesize #4}\\% Right-aligned entry qualifier text
        \textit{\textbf{#5}} % Entry description text
        \hfill 
        #6
	}\\\\}

\newcommand{\fieldnotitle}[5][Current]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	\parbox[t]{0.2\textwidth}{% 17.5% of the text width of the page
		#2 - #1 % Leftmost entry date(s) text
	}%
	&\parbox[t]{0.825\textwidth}{% 82.5% of the text width of the page
		\textbf{#3}% Entry heading text
		\hfill% Horizontal whitespace
		{\footnotesize #4}% Right-aligned entry qualifier text
        #5
	}\\\\}

% Command to output a separator slash between lists, e.g. '  /  '
\newcommand{\slashsep}{\hspace{3mm}/\hspace{3mm}}