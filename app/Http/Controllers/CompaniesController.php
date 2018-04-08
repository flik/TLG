<?php

namespace App\Http\Controllers;

use App\Company;
use App\User;
use App\Role;
use App\Permission;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CompaniesController extends Controller
{
    public function index(Request $request)
    {
		return Company::all();
        
    }
    
    public function test(Request $request)
    {
		  
		$user = User::findOrFail(1);
 		$detail = [];
		
		if($user->hasRole('admin')) {
			$detail[] = '-- User is admin -- ';
		}else {
			$detail[] = '-- User is not admin --';
		}
 
		
		if($user->can('edit-user')) {
			$detail[] = '-- You can edit --';
		}else {
			$detail[] = ' -- You can not edit --';
		}
  
		return $detail;

		 
        
    }
    
    public function show($id)
    {
        return Company::findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $company = Company::findOrFail($id);
        $company->update($request->all());

        return $company;
    }

    public function store(Request $request)
    {
        $company = Company::create($request->all());
        return $company;
    }

    public function destroy($id)
    {
        $company = Company::findOrFail($id);
        $company->delete();
        return '';
    }
}
