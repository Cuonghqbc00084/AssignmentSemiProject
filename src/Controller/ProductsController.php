<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\SP;
use App\Entity\Category;
use App\Form\ProductsType;
use App\Form\SanPhamType;
use Doctrine\Persistence\ManagerRegistry;
use App\Service\FileUploader;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class ProductsController extends AbstractController
{

    public function __construct(private UrlGeneratorInterface $urlGenerator)
        {
        }
    #[Route('/products', name: 'app_products')]
    public function list_sp(EntityManagerInterface $em): Response
    {
        $query = $em->createQuery('SELECT sp FROM App\Entity\SP sp');
        $lSp = $query->getResult();
        return $this->render('products/list.html.twig', [
            "data"=>$lSp
        ]);
    }



}

    












