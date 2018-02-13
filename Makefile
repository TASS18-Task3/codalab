bundle.zip: competition.yaml overview.html data.html evaluation.html terms.html logo.png score.zip reference_trial.zip sample_trial.zip
	zip bundle.zip competition.yaml overview.html data.html evaluation.html terms.html logo.png score.zip reference.zip

score.zip: ../data/score.py ../data/tools.py metadata
	zip -j -r score.zip ../data/score.py ../data/tools.py metadata

reference_trial.zip:
	(cd ../data/gold && zip -r - *) > reference_trial.zip

sample_trial.zip:
	(cd ../data/submit && zip -r - *) > sample_trial.zip

.PHONY : clean
clean:
	rm *.zip