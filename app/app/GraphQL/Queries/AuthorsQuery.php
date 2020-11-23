<?php
namespace App\GraphQL\Queries;

use Closure;
use App\Models\User;
use GraphQL\Type\Definition\ListOfType;
use GraphQL\Type\Definition\ResolveInfo;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;

class AuthorsQuery extends GraphQLQuery
{
    /** @var array  */
    protected $attributes = [
        'name' => 'authors',
    ];

    /**
     * This function will return list of Authors Type
     *
     * @return ListOfType
     */
    public function type(): ListOfType
    {
        return Type::listOf(GraphQL::type('Author'));
    }

    /**
     * input argument to this Query
     */
    public function args(): array
    {
        return [
            'id' => ['name' => 'id', 'type' => Type::string()],
            'email' => ['name' => 'email', 'type' => Type::string()]
        ];
    }

    /**
     * This function will resolve the Authors Type
     */
    public function resolve($root, $args, $context, ResolveInfo $resolveInfo, Closure $getSelectFields)
    {
        if (isset($args['id'])) {
            return User::where('id' , $args['id'])->get();
        }

        if (isset($args['email'])) {
            return User::where('email', $args['email'])->get();
        }

        return User::all();
    }
}
