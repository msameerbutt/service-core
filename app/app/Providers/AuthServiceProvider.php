<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        # Laravel Passport Settings
        # This will publish Passport routes
        Passport::routes();
        # This will set the location of oAuth key, The passport needs these keys in order to generate access token
        Passport::loadKeysFrom(storage_path());
        # This will set the Token expiry
        Passport::tokensExpireIn(now()->addDays(15));
        # This will set the expiry of refresh token
        Passport::refreshTokensExpireIn(now()->addDays(30));
        # This will set the personal Token expiry time
        Passport::personalAccessTokensExpireIn(now()->addMonths(6));
        # Passport::hashClientSecrets();
    }
}
