<?php

namespace App\Http\Controllers\Blog;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateBlogRequest;
use App\Traits\HttpResponse;
use Illuminate\Support\Facades\Auth;
use App\Models\Blog;

class BlogController extends Controller
{
    use HttpResponse;
    public function create(CreateBlogRequest $request) {
        $validated = $request->validated();

        try {
            $blog = Blog::create([
                'title' => $validated['title'],
                'content' => $validated['content'],
                'user_id' => Auth::id()
            ]);

            return $this->success([
                'blog' => $blog,
            ], 'Blog created successfully');
        } catch (\Exeption $e) {
            return $this->error([], $e->getMessage(), 500);
        }

    }
}
