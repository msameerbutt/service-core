<?php
namespace App\GraphQL\Queries;

use App\Models\Article;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;

class ArticleQuery extends GraphQLQuery
{
    /** @var array  */
    protected $attributes = [
        'name' => 'article',
    ];

    /**
     * This function will return the Article type
     *
     * @return Type
     */
    public function type(): Type
    {
        return GraphQL::type('Article');
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
     * This function will resolve the Article query
     */
    public function resolve($root, $args)
    {
        return Article::findOrFail($args['id']);
    }
}
