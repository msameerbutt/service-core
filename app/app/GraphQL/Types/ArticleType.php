<?php
namespace App\GraphQL\Types;

use App\Models\Article;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;
use Rebing\GraphQL\Support\Type as GraphQLType;

class ArticleType extends GraphQLType
{
    /** @var array  */
    protected $attributes = [
        'name' => 'Article',
        'description' => 'Details about an Article',
        'model' => Article::class
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
                'description' => 'Id of the Article',
            ],
            'user' => [
                'type' => GraphQL::type('Author'),
                'description' => 'Author of the Article',
            ],
            'title' => [
                'type' => Type::nonNull(Type::string()),
                'description' => 'The title of the Article',
            ],
            'content' => [
                'type' => Type::nonNull(Type::string()),
                'description' => 'Content of the Article',
            ],
        ];
    }
}
