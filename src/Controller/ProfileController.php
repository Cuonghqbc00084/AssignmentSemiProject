<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\User;
use App\Form\UserType;
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
    public function index(EntityManagerInterface $em, Request $req): Response
    {
        $pf = new User();
        $form = $this->createForm(UserType::class, $pf);
        $form->handleRequest($req);

        if($form->isSubmitted() && $form->isValid()) {
            $data = $form->getData();

            $em->persist($data);
            $em->flush();
        
        return new RedirectResponse($this->urlGenerator->generate('app_profile'));

        }

        return $this->render('profile/list.html.twig', [
            'profile_form' => $form->createView(),
        ]);
    }

    #[Route('/profile/ds', name: 'app_ds_profile')]
    public function list_pf(EntityManagerInterface $em): Response
    {
        $query = $em->createQuery('SELECT user FROM App\Entity\User user');
        $lSp = $query->getResult();
        return $this->render('profile/list.html.twig', [
            "data"=>$lSp
        ]);
    }
}






