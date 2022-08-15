# Address Book API
- API server composed from multiple microservices using Express, communicating via HTTP(S)
- Integrated with Firebase for contact data storage
- Users are stored in MongoDB Atlas
  - Local dev environment uses MongoDB Docker image 
- Requires users to register and authenticate using JWT
- Users can then post contacts into the contacts DB in Firebase

## Run locally

- `git clone https://github.com/Tackx/address-book-api`
- `cd address-book-api`
- `git submodule update --recursive --init`
- Allow the start/stop scripts to be executed
  - `chmod +x start.sh`
  - `chmod +x stop.sh`
- Start/stop the app in local Docker development environment mode
  - `./start.sh`
  - `./stop.sh`

## Hosting

- The app is hosted on Heroku, available at https://ab-api.herokuapp.com/

## Docs

Available at https://ab-api.herokuapp.com/api/docs/

## Request Limit

### Auth limit

The user can try logging in and/or registering **100** times per hour before getting timed out.

### Data limit

The user can try posting new data **200** times per 15 minutes before getting timed out.

## DEV Notes

### CI/CD with GitHub Actions

  - `chcon system_u:object_r:usr_t:s0 runsvc.sh` in case Runner service is not starting on SELinux

### Heroku deployment

- `heroku stack:set container -a ${APP_NAME}`
- `heroku ps:scale web=1 -a ${APP_NAME}`