<?php
namespace App\GraphQL\Mutations;

use App\Models\Wine;
use Closure;
use GraphQL\Type\Definition\Type;
use GraphQL\Type\Definition\ResolveInfo;
use Rebing\GraphQL\Support\Facades\GraphQL;
use Rebing\GraphQL\Support\Mutation;

class UpdateWineColorMutation extends Mutation
{
    /** @var array  */
    protected $attributes = [
        'name' => 'updateWineColor'
    ];

    /**
     * This function will restrict this mutation on this specific type
     * @return Type
     */
    public function type(): Type
    {
        return GraphQL::type('Wine');
    }

    /**
     * This function will return the available fields of type to mutate
     * @return array
     */
    public function args(): array
    {
        return [
            'id' => ['name' => 'id', 'type' => Type::nonNull(Type::int())],
            'color' => ['name' => 'color', 'type' => Type::nonNull(Type::string())]
        ];
    }

    /**
     * This function will provide validation for the Mutation arguments
     */
    protected function rules(array $args = []): array
    {
        return [
            'id' => ['required'],
            'color' => ['required'],
        ];
    }

    /**
     * This function will resolve this mutation
     */
    public function resolve($root, $args, $context, ResolveInfo $resolveInfo, Closure $getSelectFields)
    {
        $wine = Wine::find($args['id']);
        if(!$wine) {
            return null;
        }

        $wine->color = $args['color'];
        $wine->save();

        return $wine;
    }
}
