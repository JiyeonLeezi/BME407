# BME407

BME 407 Homework #2
Complete the following tasks. All responses should be quantitative. Use statistics and
figures as needed. Be thorough but parsimonious in your responses.
1. Develop a regression analysis to compare the three populations of subjects in the absence
of any administered drug (set drug=0 in your simulation). Consider each equation in the
glucose metabolism model as a separate model.
a. Design an appropriate set of inputs (insulin and glucose injection rates) for
estimating your model parameters. Succinctly describe your rationale. Assume
that only a single measurement can be obtained from each subject. Each
measurement corresponds to the model output for the specified inputs.
b. Simulate your data using the designed inputs in MATLAB (see Appendix A). The
data set should contain 60 points, one for each of the 20 subjects in each of the 3
groups.
c. Create the appropriate models in Python using the above simulated data. How
well does each model describe the data for each subject group? Respond at the
level of the whole model -- not individual parameters. Save that for part e.
d. Do your models or the simulated data violate any assumptions of the regression
analysis you have performed? Explain.
e. Which model parameters are significant? Can you justify removing any
parameters from your model? Simply reading off the ANOVA tables is sufficient
for this assignment. (Please be prepared for using regularization on the test
though.)
f. Describe which parameters differ between subject populations. Is this as expected
based on the physiological processes attributed to each parameter?
2. Briefly describe if the linear regression analysis you performed was appropriate for this
problem. Justify your answer, carefully considering the noise in your measurements and
how it influenced your results.
