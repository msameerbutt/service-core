<?php
namespace App\GraphQL\Queries;

use App\Models\Wine;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;

class WineQuery extends GraphQLQuery
{
    protected $attributes = [
        'name' => 'wine',
    ];

    public function type(): Type
    {
        return GraphQL::type('Wine');
    }

    public function args(): array
    {
        return [
            'id' => [
                'name' => 'id',
                'type' => Type::int(),
                'rules' => ['required']
            ],
        ];
    }

    public function resolve($root, $args)
    {
        return Wine::findOrFail($args['id']);
    }
}
