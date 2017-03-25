%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a Universidade INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE GOIÁS
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% The Current Maintainer of this work is Daniel Vitor de Lucena, daniel.lucena@ifg.edu.br
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ifg}[2015/03/02 v1.0 Modelo do Instituto Federal de Educação, Ciência e Tecnologia de Goiás baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


% Novos comandos
\newcommand{\titulacao}[1]{\titulacao{#1}}
\newcommand{\curso}[1]{\curso{#1}}
\newcommand{\referenciaautor}[1]{\referenciaautor{#1}}

%
% Comandos de Impressão
%

% Comandos de dados - titulacao
\providecommand{\imprimirtitulacao}{}
\renewcommand{\titulacao}[1]{\renewcommand{\imprimirtitulacao}{#1}}

% Comandos de dados - curso
\providecommand{\imprimircurso}{}
\renewcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Comandos de dados - curso
\providecommand{\imprimirreferenciaautor}{}
\renewcommand{\referenciaautor}[1]{\renewcommand{\imprimirreferenciaautor}{#1}}

% Comandos de dados - referencia autor
\providecommand{\imprimirreferenciaobra}{}
\renewcommand{\imprimirreferenciaobra}{%
    \hspace{.1\textwidth}
    \begin{minipage}{.9\textwidth}
        \imprimirreferenciaautor.
        \bfseries{\imprimirtitulo}.
        \imprimirlocal,
        \imprimirdata.
        \pageref{LastPage}p.
        \imprimirtipotrabalho.
        \imprimirinstituicao
        \vspace*{1cm}
    \end{minipage}%
}%


% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \begin{figure}[t]
        \includegraphics[scale=0.5]{cls/logo-ifg.pdf}
    \end{figure}
    \center
    \ABNTEXchapterfont\large\imprimircurso
    \vfill
    \ABNTEXchapterfont\large\imprimirautor
    \vfill
    \begin{center}
        \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vfill
    \small\imprimirlocal
    \\
    \small\imprimirdata
    \vspace*{1cm}
  \end{capa}
}


% folha de rosto
% ---
% Conteudo padrao da Folha de Rosto
\makeatletter
\renewcommand{\folhaderostocontent}{
  \begin{center}
    {\abntex@ifnotempty{\imprimirinstituicao}{\ABNTEXchapterfont\large\imprimirinstituicao}}
    \\
    \ABNTEXchapterfont\large\imprimircurso
    \vfill
    \ABNTEXchapterfont\large\imprimirautor
    \vfill	
    \vspace*{\fill}\vspace*{\fill}
    \begin{center}
      \ABNTEXchapterfont\bfseries\Large\imprimirtitulo
    \end{center}
    \vspace*{\fill}
	
    \abntex@ifnotempty{\imprimirpreambulo}{%
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
      	\SingleSpacing
         \imprimirpreambulo
       \end{minipage}%
       \vspace*{\fill}
    }%

    {\large\imprimirorientadorRotulo~\imprimirorientador\par}
    \abntex@ifnotempty{\imprimircoorientador}{%
       {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
    }%
    \vspace*{\fill}

    {\small\imprimirlocal}
    \\
    {\small\imprimirdata}
    \vspace*{1cm}

  \end{center}
}
\makeatother

% ---
% Comando \assinatura for signature
   % width of the line and text under the line
\setlength{\ABNTEXsignwidth}{11cm}
