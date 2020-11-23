<?php
namespace App\GraphQL\Queries;

use App\Models\Article;
use GraphQL\Type\Definition\ListOfType;
use GraphQL\Type\Definition\Type;
use Rebing\GraphQL\Support\Facades\GraphQL;

class ArticlesQuery extends GraphQLQuery
{
    /** @var array  */
    protected $attributes = [
        'name' => 'articles',
    ];

    /**
     * This function will return list of Article Type
     *
     * @return ListOfType
     */
    public function type(): ListOfType
    {
        return Type::listOf(GraphQL::type('Article'));
    }

    /**
     * This function will resolve the Articles Type
     */
    public function resolve($root, $args)
    {
        return Article::all();
    }
}
