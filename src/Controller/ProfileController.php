<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;


class ProfileController extends AbstractController
{
    public function __construct(private UrlGeneratorInterface $urlGenerator)
        {
        }
    #[Route('/profile', name: 'app_profile')]
    public function index(): Response
    {
        return $this->render('profile/list.html.twig', [
            'controller_name' => 'ProfileController',
        ]);
    }
//     #[Route('/user/{id}/profile', name: 'app_user_profile')]
// public function profile(int $id, EntityManagerInterface $em): Response
// {
//     $user = $em->find(User::class, $id);

//     if (!$user) {
//         throw $this->createNotFoundException('User not found');
//     }

//     return $this->render('user/profile.html.twig', [
//         'user' => $user,
//     ]);
// }



    // #[Route('/profile/{id}', name: 'app_profile')]
    // public function modify(EntityManagerInterface $em, int $id, Request $req): Response
    // {
    //     $user = $em->find(User::class, $id); 
    //     // tìm kiếm khóa chính id
    //     $form = $this->createForm(UserType::class, $user);
    //     $form->handleRequest($req);

    //     if($form->isSubmitted() && $form->isValid()) {
    //         $data = $form->getData();

            
    //         $user->setUsername($data->getUsername())->setFirstName($data->getFirstName())->setLastName($data->getLastName());
    //         $em->flush();
            
    //         return new RedirectResponse($this->urlGenerator->generate('app_profile'));
        
    // }
    // return $this->render('profile/list.html.twig', [
    //     'User_form' => $form->createView(),
    //     ]);
    // }
}






     