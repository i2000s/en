This repo is used to store my bibliography library file to monitor my readings and citations. Archive.bib is the main bibtex database file.

To preserve the format of the bibtex file, please follow the instructions below:

1. Use JabRef version `4.*` to open the bibtex file.
2. Change the required and optional fields by opening the settings on JabRef through `BibTeX -> Customize entry types`. On the opened window, choose `phdthesis` and delete `institution` from the required fields and add `school` as the replacement put above `year/date`; on the optional fields, add `institution` before `doi`.
3. For other preference settings, please refer to the `Archive_preferences_Windows.xml` and `Archive_preferences_Linux.xml` for Windows and Linux interfaces. I use `[auth][year][veryshorttitle]` as the pattern for generating BibTeX keys, use `UTF-8` as the default encoding style, and sort entry table primarily by `author/editor`.
