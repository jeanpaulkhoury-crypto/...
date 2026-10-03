// JetsonDB integration boundary.
// Replace the implementation below with the real Jetson database SDK/API
// when its exact package/endpoint is supplied by the project owner.

export class JetsonDB {
  constructor(config = {}) {
    this.config = config;
  }

  async connect() {
    // Production: establish authenticated connection.
    return { connected: true, driver: "jetson-adapter" };
  }

  async query(sql, params = []) {
    throw new Error(
      "JetsonDB driver is not configured. Provide the exact Jetson package/API."
    );
  }

  async close() {}
}
