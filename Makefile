LATEXMK = latexmk
OUTDIR  = output
FLAGS   = -lualatex -outdir=$(OUTDIR) -interaction=nonstopmode

CVS = cv-analyst-es cv-analyst-en cv-engineer-es cv-engineer-en cv-jefferson-ortiz cv-developer-en

.PHONY: all clean $(CVS)

all: $(OUTDIR) $(CVS)

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(CVS): $(OUTDIR)
	$(LATEXMK) $(FLAGS) $@.tex

clean:
	rm -rf $(OUTDIR)
