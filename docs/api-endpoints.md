# API Endpoints

## HTML API

### Root

- `GET /` - loads React web app

## JSON API

### Users

- `POST /api/users`
- `PATCH /api/users`

### Session

- `POST /api/session`
- `DELETE /api/session`

### Guides

- `GET /api/guides`
- `POST /api/guides`
- `GET /api/guides/:id`
- `PATCH /api/guides/:id`
- `DELETE /api/guides/:id`

### Steps

- `POST /api/guides/:guide_id/steps`
- `GET /api/guides/:guide_id/steps/:id`
- `PATCH /api/guides/:guide_id/steps/:id`
- `DELETE /api/guides/:guide_id/steps/:id`

### Comments

- `POST /api/guide/:guide_id/comment`
- `DELETE /api/guide/:guide_id/comment/:id`:
