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

class ProductDetailController extends AbstractController
{
    public function __construct(private UrlGeneratorInterface $urlGenerator)
        {
        }
    #[Route('/productdetail/{id}', name: 'app_product_detail')]
    public function list_detail(EntityManagerInterface $em, int $id, Request $req): Response
    {
        
        $detail = $em->find(SP::class, $id); 
        return $this->render('product_detail/list.html.twig', [
            "data"=>$detail
        ]);

        
    }
    }
    
    // public function detail_sp(EntityManagerInterface $em): Response
    // {
    //     $query = $em->createQuery('SELECT sp FROM App\Entity\SP sp');
    //     $lSp = $query->getResult();
    //     return $this->render('product_detail/index.html.twig', [
    //         "data"=>$lSp
    //     ]);
    // }

