<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AuthController as BaseAuthController;

class AuthController extends BaseAuthController
{
    public function __construct()
    {
        config([
            'admin.name' => trans('admin.website_login_name'),
            'admin.logo' => trans('admin.website_left_tip'),
            'admin.logo-mini' => trans('admin.website_left_tip_mimi')
        ]);
    }
}
