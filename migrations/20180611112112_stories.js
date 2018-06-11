exports.up = function (knex, Promise) {
  return Promise.all([
    knex.schema.createTable('stories', function (table) {
      table.increments('id').primary();
      table.string('title');
      table.string('subtitle');
      table.string('description');
      table.dateTime('created');
      table.string('text');
      table.string('link');
      table.string('image_path')
    }),
  ]);
};

exports.down = function (knex, Promise) {
  return Promise.all([
    knex.schema.dropTable('stories'),
  ]);
};