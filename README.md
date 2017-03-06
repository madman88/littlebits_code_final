1. Have implemented a basic sinatra app with a postgres backend.
2. Have stored the path to the image in the db and the image itself in the filesystem( This can scale depending on the filesystem that will be used eg: gridfs is a good one)
3. Regarding the ajax call to implement the `tag input` I have used a jquery plugin to implement the UI. I would assume the `lookahead` would require ajax calls if there are a lot of `materials` stored somewhere in the backend to prompt the used.(Definitely a feature I would talk and vet throughly)
The app can be found here https://ancient-springs-24503.herokuapp.com/
