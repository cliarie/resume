#import "style.typ": *
#show: project

#let title_items = (
  link("mailto:cychen6@illinois.edu"),
  link("https://linkedin.com/in/cliarie")[#fab("linkedin") cliarie],
  link("https://github.com/cliarie")[#fab("github-alt") cliarie],
)

// Title row.
#align(center)[
  #block(text(weight: 700, size: 1.5em)[Claire Chen])
  #title_items.join([#h(0.5em)•#h(0.5em)])
]

= Education

#entry[
  == University of Illinois, Urbana Champaign

  Mathematics and Computer Science, B.S. \
][
  *Expected Graduation:* May 2026\
  *Grade:* 4.0/4.0\
]

*Relevant Coursework:* Data Structures · Computer Architecture · Systems Programming · Distributed Systems · Competitive Algorithmic Programming · Graph Theory · Abstract Linear Algebra · Discrete & Fundamental Math · Complex Analysis

= Experience
#entry[
  == CME Group
  _Software Engineer Intern_
][May 2024 - Present]

- Implemented a new feature for the market data simulator NR to allow for realistic market data generation.
- Aggregated CAML-wrapped SBE binary marketdata and encoded/decoded messages with SBE/iLinkBinary protocols to maintain an orderbook and skew marketdata effectively; simulated traders with self prevention ids to place orders in NR.
- Streamed marketdata with *Kafka* and Cloud *Pub/Sub* and handled concurrency with a *ring buffer* to reduce contention.
- Reconciled incoming marketdata by keeping track of TOB orders and variable tick size instruments and increments.
- Utilized Java and Spring Boot for backend development, ran Cucumber and Mockito for integration testing and creating Mock servers and gateway endpoints, and *GKE GCP* for containerization and deployment.

#entry[
  == AMD --- Disruption Lab
  _Software Engineer_
][Jan 2024 - May 2024]

- Optimized AMD Mic performance by efficiently categorizing and removing unwanted noise leveraging DL algorithms.
- Constructed state-of-the-art audio separation model Sepformer in PyTorch on *AWS Sagemaker* to handle sources of different noise scales with reverberation and background noise.
- Ported PyTorch models into *ONNX* to run on AMD hardware.

// #entry[
//   == ACM \@ UIUC
//   _Software Engineer_
// ][Aug 2023 - May 2024]

// - Developed a resume book for companies to filter and network with students in Association for Computing Machinery.
// - Handled login flow and backend, and linked and stored user information in AWS database with Boto3.
// - Designed profile cards for each registered student displaying degree, skills, graduation year, etc.

#entry[
  == A*Star
  _Software Engineer, Machine Learning Engineer_
][Aug 2023 - Jan 2024]

- Allowed operators to use natural language to query unstructured information in a knowledge base of financial information for an AI Fintech startup.
- Enabled efficient context formation in conversations and the ability to recall past conversations with no context loss by constructing novel knowledge graphs; cross tested loss and accuracy by implementing LLMs for the same task.
- Implemented accurate detection of pages with useful tabular data and PDF parsing by leveraging GPT-4 and *Azure*.

#entry[
  == UC Santa Barbara Vision Research Lab
  _Computer Vision Research Engineer_
][Jun 2023 - Aug 2023]

- Conducted biomedical image analysis of distinguishing viral pneumonia COVID-19 from other forms of viral pneumonia through deep learning multi-class image classification.
- Innovated novel two layer stacked ensemble method incorporating transfer learning, hyperparameter tuning, image preprocessing, and ensemble learning that achieved 21.37% improved accuracy to baseline ResNet50.

// #entry[
//   == Lynbrook Mobile App
//   _Lead Developer_
// ][Apr 2022 - Aug 2023]

// - Led mobile app development team and integrated school, student organization, faculty, and sports events onto the app.
// - Liaised between student body, faculty, school board, and development team and handled requests from all clients to keep app prevalent to the student body; app assists 40 school-wide events, 20+ clubs, and serves 1.9k users annually.
// - Worked with React Native and TypeScript, led team of 5 developers, and trained 3 underclassmen.

= Projects
#entry[
  == Exchange Simulator
  _C++ · CMake_
][]

- Built a stock exchange simulator in C++ following NASDAQ ITCH protocol optimizing low latency and high throughput.
- Ensured thread safety and minimized contention by using lock-free SPMC queue and atomic operations.
- Optimized matching engine to constant time order operations with no overhead and near constant best prices order search with good CPU cache locality by using preallocated data structures.

// #entry[
//   == SnackSafe App
//   _React · NextJS · Supabase_
// ][]

// - Developed a lightweight web app that generates suitable restaurants for people with dietary restrictions.
// - Populated restaurant data such as description, hours, distance, initial reviews, etc. in database using Yelp API.
// - Implemented login flow using Supabase's Google OAuth Provider save their allergen preferences.


#entry[
  == Gradient Boosting on Identifying Age-Related Conditions
  _Python · TensorFlow_
][]

- Analyzed a dataset of over fifty anonymized health characteristics linked to three age-related conditions to predict patients’ conditions for the InVitro Cell Research Company.
- Leveraged gradient boosting (CatBoost, LightBoost, XGBM) to build ML model and handled dataset imbalances.

= Technical Skills

#let TeX = style(styles => {
  set text(font: "New Computer Modern")
  let e = measure("E", styles)
  let T = "T"
  let E = text(1em, baseline: e.height * 0.31, "E")
  let X = "X"
  box(T + h(-0.15em) + E + h(-0.125em) + X)
})

#let LaTeX = style(styles => {
  set text(font: "New Computer Modern")
  let a-size = 0.66em
  let l = measure("L", styles)
  let a = measure(text(a-size, "A"), styles)
  let L = "L"
  let A = box(scale(x: 105%, text(a-size, baseline: a.height - l.height, "A")))
  box(L + h(-a.width * 0.67) + A + h(-a.width * 0.25) + TeX)
})

*Languages and Frameworks:* C++ · Java · Python · MIPS Assembly · Go · SQL · Typescript · Verilog · Spring Boot · React

*Development Tools and Platforms:* Git · CMake · Kubernetes · Docker · Kafka · RabbitMQ · Maven · JUnit · Mockito

*Cloud Tools:* GKE/GCP · AWS · Supabase · Firebase · PyTorch · ONNX · Azure · Sagemaker
