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

    // #[Route('search/san/pham/ds', name: 'app_products')]
    // public function search_sp(Request $req, EntityManagerInterface $em): Response
    // {
    //     $searchTerm = $req->query->get('search');
    
    //     if ($searchTerm) {
    //         $query = $em->createQuery('SELECT sp FROM App\Entity\SP sp WHERE sp.name LIKE :search');
    //         $query->setParameter('search', '%' . $searchTerm . '%');
    //     } else {
    //         $query = $em->createQuery('SELECT sp FROM App\Entity\SP sp');
    //     }
    
    //     $lSp = $query->getResult();
        
    //     return $this->render('products/list.html.twig', [
    //         'data' => $lSp,
    //     ]);
    // }


// #[Route('arrange_sp', name: 'app_arrange_products')]
// public function arrange(Request $req, EntityManagerInterface $em): Response
// {
//     $sortOption = $req->query->get('sort');

//     $orderBy = 'sp.name ASC'; // Default sorting option

//     if ($sortOption === 'name_desc') {
//         $orderBy = 'sp.name DESC';
//     } elseif ($sortOption === 'price_asc') {
//         $orderBy = 'sp.price ASC';
//     } elseif ($sortOption === 'price_desc') {
//         $orderBy = 'sp.price DESC';
//     }

//     $query = $em->createQuery('SELECT sp FROM App\Entity\SP sp WHERE sp = true ORDER BY ' . $orderBy);
//     $lSp = $query->getResult();
    
//     return $this->render('products/list.html.twig', [
//         'data' => $lSp,
//     ]);
// }




}

    












