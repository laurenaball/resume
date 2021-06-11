\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2014/08/16 Example LaTeX class]

\LoadClass[10.5pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage[none]{hyphenat}

\pagestyle{empty} % Suppress page numbers
\usepackage{enumitem}

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \printname {
  \begingroup
    \hfil{\MakeUppercase{\Large\bf \name}}\hfil
    \smallskip\break
  \endgroup
}

 \def \printaddressline {
  \begingroup
    \centerline{\phone \hspace{0.2em} $\mid$ \email \hspace{0.2em} $\mid$ \address}
  \endgroup
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSection}[1]{ % 1 input argument - section name
 \vspace{0.5em} %space between each section
  \MakeUppercase{\bf\large #1} % Section title
  \vspace{0.35em}
  \hrule % Horizontal line
   \vspace{0.1em}
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{mainTitle}[4]{
 {\bf#1} $\mid$ {#2} \hfill {\em#3} $\mid$ {\bf#4}} 
 
 \newenvironment{bulletGroup}[1]{
    \vspace{0.3em}%space before group name
    \hspace*{0.2em}
    {\em#1} %print group name
    \begin{list}{$\cdot$}{\leftmargin=0.6em}
       \setlength\itemsep{-0.5em}%item separation
       \vspace{-0.4em}%compress space above bullets
    }
    {\end{list}
    }

\newenvironment{bullets}{
    \begin{list}{$\cdot$}{\leftmargin=0.6em} %dot, bullet indent
        \setlength\itemsep{-0.5em} %item separation
        \vspace{-0.4em} %compress space above bullets
    }
    {\end{list}
 }

%----------------------------------------------------------------------------------------
%	EDUCATION FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{School}[5]{
 {\bf#1} $\mid$ {\em#2} \hfill {\em#3} $\mid$ {\bf#4}
    \newline {#5}
} 


