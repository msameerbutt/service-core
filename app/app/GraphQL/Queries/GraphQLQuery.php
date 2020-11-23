<?php
namespace App\GraphQL\Queries;

use Closure;
use GraphQL\Type\Definition\ResolveInfo;
use GraphQL\Type\Definition\Type;
use Illuminate\Support\Facades\Auth;
use Rebing\GraphQL\Support\Query;

abstract class GraphQLQuery extends Query
{
    /**
     * Override this in your queries or mutations
     * to provide custom authorization.
     *
     * @param  mixed  $root
     * @param  array  $args
     * @param  mixed  $ctx
     * @param  ResolveInfo|null  $resolveInfo
     * @param  Closure|null  $getSelectFields
     * @return bool
     */
    public function authorize($root, array $args, $ctx, ResolveInfo $resolveInfo = null, Closure $getSelectFields = null): bool
    {
        return true;
        if (isset($args['id'])) {
            return Auth::id() == $args['id'];
        }

        return true;
    }

    /**
     * This function provide the message for an Un-Authorized Access
     */
    public function getAuthorizationMessage(): string
    {
        return 'You are not authorized to perform this action';
    }

    /**
     * This function will return the Author type
     *
     * @return Type
     */
    abstract public function type(): Type;
}
