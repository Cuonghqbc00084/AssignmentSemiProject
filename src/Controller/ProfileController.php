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

        // #[Route('profile', name: 'app_profile')]
        // public function index(): Response
        // {
        //     return $this->render('profile/index.html.twig', [
        //         'controller_name' => 'ModifyProfileController',
        //     ]);
        // }
        #[Route('/profile', name: 'app_profile')]
        public function profile(): Response
        {
            $user = $this->getUser();
            return $this->render('profile/list.html.twig', [
                'user' => $user,
            ]);
        
        }


    // #[Route('/profile/{id}', name: 'app_edit_profile')]
    // public function edit(EntityManagerInterface $em, int $id, Request $req): Response
    // {
    //     $pf = $em->find(User::class, $id); 
    //     // tìm kiếm khóa chính id
    //     $form = $this->createForm(SanPhamType::class, $pf);
    //     $form->handleRequest($req);

    //     if($form->isSubmitted() && $form->isValid()) {
    //         $data = $form->getData();

            
    //         $pf->setFirstName($data->getFirstName())->setLastName($data->getLastName());
    //         $em->flush();
            
    //         return new RedirectResponse($this->urlGenerator->generate('app_profile'));
        
    // }
    // return $this->render('profile/list.html.twig', [
    //     'profile_form' => $form->createView(),
    //     ]);
    // }
    
    }



    // #[Route('/profile/edit', name: 'app_edit_profile')]
    // public function editProfile(Request $request, UserPasswordHasherInterface $userPasswordHasher): Response
    // {
    //     $user = $this->getUser();
    //     $form = $this->createForm(User::class, $user);
    //     $form->handleRequest($request);

    //     if ($form->isSubmitted() && $form->isValid()) {
    //         $data = $form->getData();

            
    //         $user->setFirstName($data->getFirstName())->setPrice($data->getPrice());
    //         $em->flush();
    





