<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\ProfileFormType;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use App\Entity\User;
use Symfony\Component\HttpKernel\Profiler\Profile;

class ProfileController extends AbstractController
{
        #[Route('/profile', name: 'app_profile')]
        public function profile(): Response
        {
            $user = $this->getUser();
            return $this->render('profile/list.html.twig', [
                'user' => $user,
            ]);
        }
}
    





