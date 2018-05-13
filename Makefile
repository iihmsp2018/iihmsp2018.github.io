GEN=tclsh combhtml.tcl
COMMON_FLAG=-file HEADER header.ht -file MENU menu.ht
COMMON_SOURCE=header.ht menu.ht template.ht

all: index.html committee.html cfp.html program.html registration.html dates.html venue.html

index.html: $(COMMON_SOURCE) index_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE Main -file MAIN index_main.ht template.ht > index.html
committee.html: $(COMMON_SOURCE) committee_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE "Organizing Committee" -file MAIN committee_main.ht template.ht > committee.html
cfp.html: $(COMMON_SOURCE) cfp_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE "Call for Paper" -file MAIN cfp_main.ht template.ht > cfp.html
program.html: $(COMMON_SOURCE) program_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE "Program" -file MAIN program_main.ht template.ht > program.html
registration.html: $(COMMON_SOURCE) registration_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE "Registration" -file MAIN registration_main.ht template.ht > registration.html
dates.html: $(COMMON_SOURCE) dates_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE "Important Dates" -file MAIN dates_main.ht template.ht > dates.html
venue.html: $(COMMON_SOURCE) venue_main.ht
	$(GEN) $(COMMON_FLAG) -set TITLE "Conference Venue and Local Information" -file MAIN venue_main.ht template.ht > venue.html
