
exports.up = function(knex, Promise) {
      return knex.schema.table('spotlight', function (t) {
        t.string('graduation').notNull().defaultTo(0);
      });
};

exports.down = function(knex, Promise) {
  return knex.schema.table('spotlight', function(t){
      t.dropColumn('graduation');
  })
};
