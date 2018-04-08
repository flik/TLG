<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class JsonTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testJsonResponse()
    {
        $this->assertTrue(true);
        $isJson = json_decode(file_get_contents('http://api.local/api/v1/test'), true);;

		if ($isJson instanceof \stdClass || is_array($isJson)) {
		   //"it's JSON confirmed" 
		   $this->assertTrue(true);
		} else {
		   $this->assertTrue(false);
		}
    }
    
    

}
