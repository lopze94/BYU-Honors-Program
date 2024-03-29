exports.up = function (knex, Promise) {
  return Promise.all([
    knex.schema.createTable('spotlight', function (table) {
      table.increments('id').primary();
      table.string('first_name');
      table.string('last_name');
      table.dateTime('created');
      table.string('major');
      table.string('minor');
      table.string('short_text');
      table.string('long_text');
      table.string('image_path');
    }),
  ]);
};

exports.down = function (knex, Promise) {
  return Promise.all([
    knex.schema.dropTable('spotlight'),
  ]);
};