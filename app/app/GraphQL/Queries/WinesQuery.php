<?php
namespace App\GraphQL\Queries;

use App\Models\Wine;
use GraphQL\Type\Definition\ListOfType;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;

class WinesQuery extends GraphQLQuery
{
    /** @var array  */
    protected $attributes = [
        'name' => 'wines',
    ];

    /**
     * This function will return the list of Type Wine
     */
    public function type(): ListOfType
    {
        return Type::listOf(GraphQL::type('Wine'));
    }

    /**
     * This function will resolve the Query Wines
     */
    public function resolve($root, $args)
    {
        return Wine::all();
    }
}
