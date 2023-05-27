\version "2.24.0"

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

octaveUp = {
  \ottava #1
  \set Staff.ottavation = #"8"
}
octaveOff = \ottava #0