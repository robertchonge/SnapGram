📸 SnapGram – Mini Photo Sharing App

SnapGram is a minimalist photo sharing app inspired by Instagram.Lets you upload photos,apply stylish filter and share them in a social feed.Built with Ruby on Rails + TailwindCSS + Hotwire.

🚀 Features

User Authentication (Devise)

Upload Photos with Captions (ActiveStorage + Cloudinary)

Real-time Filter Preview (StimulusJS)

Photo Feed with Likes (Hotwire)

User Profiles with Photo Grid

Responsive UI (TailwindCSS)


🧱 Tech Stack

Tool	Purpose

Rails 7	Backend Framework
Devise	Authentication
ActiveStorage	Image Upload
Cloudinary	Image Hosting
TailwindCSS	UI Styling
Hotwire	Real-time Interactions
StimulusJS	Filter Preview Controller


⚙️ Setup Instructions

1. Clone repo



git clone https://github.com/robertchonge/snapgram.git
cd snapgram

2. Install dependencies



bundle install
yarn install

3. Setup DB and storage



rails db:create db:migrate

4. Configure 

5. Run server



rails server


📜 License

MIT

👨‍💻 Author

Robert Chonge 

