<?php
namespace App\GraphQL\Types;

use App\Models\User;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Type as GraphQLType;

class AuthorType extends GraphQLType
{
    /** @var array  */
    protected $attributes = [
        'name' => 'Author',
        'description' => 'Details about an Author',
        'model' => User::class
    ];

    /**
     * This function will define the fields for this particular type
     *
     * @return array
     */
    public function fields(): array
    {
        return [
            'id' => [
                'type' => Type::nonNull(Type::int()),
                'description' => 'Id of the Author',
            ],
            'name' => [
                'type' => Type::nonNull(Type::string()),
                'description' => 'The name of the Author',
            ],
            'email' => [
                'type' => Type::nonNull(Type::string()),
                'description' => 'Email of the Author',
                'resolve' => function($root, $args) {
                    // If you want to resolve the field yourself,
                    // it can be done here
                    return strtolower($root->email);
                }
            ],
        ];
    }
}
