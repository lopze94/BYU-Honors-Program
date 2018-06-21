exports.up = function (knex, Promise) {
  return knex.schema.table('spotlight', function (t) {
    t.dropColumn('plans');
  });
};

exports.down = function (knex, Promise) {
  return knex.schema.table('spotlight', function (t) {
    t.enum('plans').notNull();
  });
};