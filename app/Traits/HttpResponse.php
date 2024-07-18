<?php
namespace App\Traits;
trait HttpResponse {

    public function success($data, $message = null, $statusCode = 200) {
        return response()->json([
            'data' => $data,
            'message' => $message,
            'status' => true,
        ], $statusCode);
    }

    public function error($data, $message = null, $statusCode) {
        return response()->json([
            'data' => $data,
            'message' => $message,
            'status' => false,
        ], $statusCode);
    }
}