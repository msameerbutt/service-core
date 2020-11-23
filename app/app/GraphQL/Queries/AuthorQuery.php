<?php
namespace App\GraphQL\Queries;

use App\Models\User;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;

class AuthorQuery extends GraphQLQuery
{
    /** @var array  */
    protected $attributes = [
        'name' => 'author',
    ];

    /**
     * This function will return the Author type
     *
     * @return Type
     */
    public function type(): Type
    {
        return GraphQL::type('Author');
    }

    /**
     * This function will return the input argument required for this Query
     *
     * @return array
     */
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

    /**
     * This function will resolve the Author query
     */
    public function resolve($root, $args)
    {
        return User::findOrFail($args['id']);
    }
}
