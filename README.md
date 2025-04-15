# Time Series Modeling of Political Violence Fatalities

This study was conducted in partial fulfillment of the course MATH 62.2: Time Series and Forecasting. The repository contains the details of our time series analysis of political violence fatalities in the Philippines from January 2016 to May 2024.

## Why should you care? 🤔
Despite being a democratic country, the Philippines continues to face significant challenges with political violence, including:

- Extrajudicial killings (EJKs)
- Election-related violence
- Ongoing insurgent conflicts

Our analysis provides insights into these patterns to inform policy decision-making and intervention strategies.

## The Dataset 📊
We used a dataset from the [Humanitarian Data Exchange](https://data.humdata.org/dataset/philippines-acled-conflict-data), which tracks political violence events and fatalities in the Philippines. It is a **weekly dataset** providing the total number of reported political violence events and fatalities, broken down by month.

> Political violence events include ACLED’s *battles*, *violence against civilians*, *explosions/remote violence* event types, as well as the *mob violence* sub-event type of the *riots* event type.

## The Math Model 🧮
After extensive analysis and testing 11 different models, we determined that **ARMA(6,1)** provides the best fit for the data:

![ARMA Equation](https://latex.codecogs.com/png.image?\dpi{110}&space;Y_t=-0.0320&plus;0.1985Y_{t-1}-0.0027Y_{t-2}&plus;0.0338Y_{t-3}-0.1066Y_{t-4}-0.1463Y_{t-5}-0.3384Y_{t-6}&plus;Z_t-0.6863Z_{t-1})

## Our Findings 🔍
Our model suggests the following:
- The trajectory leading to high spikes in fatalities typically involves gradual increases from dips or very small spikes.
- Several consecutive months of increasing changes should raise alarm bells 🚨
- The system shows some self-correcting tendencies, indicated by the large negative coefficient of ( Z_{t-1} ).

## Contributors 👥
- Daniel Dave Cruz
- Pamela Gloria
- Andrea Nicole Senson

