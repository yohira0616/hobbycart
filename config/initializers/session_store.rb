Hobbycart::Application.config.session_store :redis_store, {
  servers: [
    {
      host: "redis",
      port: 6379,
      db: 0,
      namespace: "session"
    },
  ],
  key: "_#{Rails.application.class.parent_name.downcase}_session"
}
