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
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

// class ProductDetailController extends AbstractController
// {
//     #[Route('/product/detail/{id}', name: 'app_product_detail')]
    
//     public function list_sp(EntityManagerInterface $em): Response
//     {
//         $query = $em->createQuery('SELECT sp FROM App\Entity\SP sp');
//         $lSp = $query->getResult();
//         return $this->render('product_detail/index.html.twig', [
//             "data"=>$lSp
//         ]);
//     }

    
// }

class ProductDetailController extends AbstractController
{
    private EntityManagerInterface $entityManager;

    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }
    
    #[Route('/product/detail/{id}', name: 'app_product_detail')]
    public function showProductDetail($id): Response
    {
        $product = $this->entityManager->getRepository(SP::class)->find($id);

        if (!$product) {
            throw new NotFoundHttpException('Product not found');
        }

        return $this->render('product_detail/index.html.twig', [
            'product' => $product,
        ]);
    }
}



