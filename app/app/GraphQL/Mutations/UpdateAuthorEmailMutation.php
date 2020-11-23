<?php
namespace App\GraphQL\Mutations;

use App\Models\User;
use Closure;
use GraphQL\Type\Definition\Type;
use GraphQL\Type\Definition\ResolveInfo;
use Rebing\GraphQL\Support\Facades\GraphQL;
use Rebing\GraphQL\Support\Mutation;

class UpdateAuthorEmailMutation extends Mutation
{
    /** @var array  */
    protected $attributes = [
        'name' => 'updateAuthorEmail'
    ];

    /**
     * This function will restrict this mutation on this specific type
     * @return Type
     */
    public function type(): Type
    {
        return GraphQL::type('Author');
    }

    /**
     * This function will return the available fields of type to mutate
     * @return array
     */
    public function args(): array
    {
        return [
            'id' => ['name' => 'id', 'type' => Type::nonNull(Type::int())],
            'email' => ['name' => 'email', 'type' => Type::nonNull(Type::string())]
        ];
    }

    /**
     * This function will provide validation for the Mutation arguments
     */
    protected function rules(array $args = []): array
    {
        return [
            'id' => ['required'],
            'email' => ['required', 'email'],
        ];
    }

    /**
     * This function will return validation error messages
     */
    public function validationErrorMessages(array $args = []): array
    {
        return [
            'id.required' => 'Please enter Author id',
            'email.required' => 'Please enter your email address',
            'email.email' => 'Please enter a valid email address',
            'email.exists' => 'Sorry, this email address is already in use',
        ];
    }

    /**
     * This function will resolve this mutation
     */
    public function resolve($root, $args, $context, ResolveInfo $resolveInfo, Closure $getSelectFields)
    {
        $author = User::find($args['id']);
        if(!$author) {
            return null;
        }

        $author->email = $args['email'];
        $author->save();

        return $author;
    }
}
