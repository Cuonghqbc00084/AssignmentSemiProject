<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class CustomerLoginController extends AbstractController
{
    #[Route('/customer/login', name: 'app_customer_login')]
    public function index(AuthenticationUtils $authenticationUtils): Response
    {
        $error = $authenticationUtils->getLastAuthenticationError();
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('customer_login/index.html.twig', ['last_username' => $lastUsername, 'error' => $error
        ]);  
    }
    // #[Route('/customer/login', name: 'app_customer_login')]
    // public function login(AuthenticationUtils $authenticationUtils): Response
    // {
    //     return $this->render('index/index.html.twig', [
    //         'controller_name' => 'IndexController',
    //     ]);
    // }
}
