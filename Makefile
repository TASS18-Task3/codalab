bundle.zip: competition.yaml overview.html data.html evaluation.html terms.html logo.png score.zip reference_trial.zip sample_trial.zip
	zip bundle.zip competition.yaml overview.html data.html evaluation.html terms.html logo.png score.zip reference_trial.zip

score.zip: ../data/score_test.py ../data/tools.py metadata
	zip -j -r score.zip ../data/score_test.py ../data/tools.py metadata

reference_trial.zip:
	(cd ../data/trial/gold && zip -r - *) > reference_trial.zip

sample_trial.zip:
	(cd ../data/trial/submit && zip -r - *) > sample_trial.zip

.PHONY : clean
clean:
	rm *.zip