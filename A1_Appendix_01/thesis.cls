%%
%% This is file `thesis.cls', for use at Rensselaer Polytechnic Institute.
%% It is based on the standard LaTeX report class.
%% Originally written by Harriet Borton (ITS), April 1996.
%% Modified April 11, 1996; minor revisions February, 2001.
%% Modified Oct 5, 2006; better compatibility with hyperref package.
%% Modified Dec 17 2007; change title page for MS degree as requested by OGS.
%% Modified Jan 28 2008; provide abstract title page for MS, incorporate 3-advisers.
%% Modified Jan 6 2009; small change to title page to avoid warning w/hyperref pkg
%% Modified Aug 2018 by Michael Sofka for new graduate school formatting requirment.
%%
%% On RCS, template files for preparing a thesis are in the directory
%% /dept/arc/docs/latex-thesis/
%%
%% This file is part of the LaTeX2e system.
%% ----------------------------------------
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2009/01/06 Rensselaer Polytechnic Institute]
%  Note that the setspace package is built in (code included near the end of
%  this file) to provide "line-and-a half spacing" (1.4 by default) and also
%  the singlespace environment.

\RequirePackage{graphicx}
\RequirePackage{float}

% RPI option chap:
\newif\ifchap  % true for chap option
  \chapfalse   % false by default
\DeclareOption{chap}{\chaptrue} % option to print "Chapter" at each new chapter
\newcommand\docsize{}  % to allow 10pt or 11pt to be specified as option
\DeclareOption{10pt}{\renewcommand\docsize{10pt}}
\DeclareOption{11pt}{\renewcommand\docsize{11pt}}
\DeclareOption{12pt}{\renewcommand\docsize{12pt}}
%  Prepare to load the standard report class (12pt):
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{12pt}         % define 12pt as the default doc size
\ProcessOptions
\LoadClass[\docsize]{report}  % load report.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
