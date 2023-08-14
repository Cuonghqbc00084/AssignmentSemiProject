<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;
use App\Entity\Order;
use App\Form\InvoiceFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class InvoiceController extends AbstractController
{
    public function __construct(private UrlGeneratorInterface $urlGenerator)
        {
        }
    
       
    #[Route('/invoice/ds', name: 'app_ds_Invoice')]
    public function list_inv(EntityManagerInterface $em): Response
    {
        $query = $em->createQuery('SELECT inv FROM App\Entity\Order inv');
        $lSp = $query->getResult();
        return $this->render('invoice/list.html.twig', [
            "data"=>$lSp
        ]);
    }


    #[Route('user/invoice/ds', name: 'app_ds_user_invoice')]
    public function list_user(EntityManagerInterface $em): Response
    {
        $query = $em->createQuery('SELECT inv FROM App\Entity\Order inv');
        $lSp = $query->getResult();
        return $this->render('orderuser/list.html.twig', [
            "data"=>$lSp
        ]);
    }


}