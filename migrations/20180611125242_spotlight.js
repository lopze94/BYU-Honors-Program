
exports.up = function (knex, Promise) {
  return knex.schema.table('spotlight', function (t) {
    t.string('plans');
  });
};

exports.down = function (knex, Promise) {
  return knex.schema.table('spotlight', function (t) {
    t.dropColumn('plans');
  });
};
