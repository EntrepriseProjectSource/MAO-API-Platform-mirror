<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/")
 */
class DefaultController extends AbstractController
{
    /**
     * @Route("/index", name="default_index")
     */
    public function indexDefault()
    {
        return new JsonResponse(
            [
                'message' => "hello",
                'time' => time()
            ]
        );
    }
}