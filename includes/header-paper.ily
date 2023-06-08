\version "2.24.0"

\header {
  title        = "Croquis et Agaceries d'un Gros Bonhomme en Bois"
  composer     = "Erik Satie (1866-1925)"
  style        = "Avant-garde"
  source       = "https://vmirror.imslp.org/files/imglnks/usimg/d/dc/IMSLP08107-'un_Gros_Bonhomme_en_Bois.pdf"

  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 copyright =  \markup { 
    "© 2023 Knute Snortum. This work is licensed under a" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

\paper {
  print-all-headers = ##t
  
  system-system-spacing.padding = #2
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  
  % --- Set these to false after all editing is finished
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
  
  #(set-paper-size "letter")
}

\layout { 
  \context {
    \Score
    \hide BarLine
    \hide SpanBar
    \remove "Bar_number_engraver"
  }
  \context {
    \Staff
    \remove "Time_signature_engraver"
  }
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }
}
