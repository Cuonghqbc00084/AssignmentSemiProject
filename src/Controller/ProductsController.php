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
use App\Form\SearchFormType;
use Doctrine\Persistence\ManagerRegistry;
use App\Service\FileUploader;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Form\Extension\Core\Type\SearchType;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class ProductsController extends AbstractController
{
    // #[Route('/products', name: 'app_products')]
    // public function index(): Response
    // {
    //     return $this->render('products/list.html.twig', [
    //         'controller_name' => 'ProductsController',
    //     ]);
    // }

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

    // #[Route('/search', name: 'app_search')]
    // public function search(Request $request): Response
    // {
    //    $query = $request->query->get('q');

    
    //    $results = [];

    //    return $this->render('products/search.html.twig', [
    //        'query' => $query,
    //        'results' => $results,
    //    ]);
    // }

    // #[Route('/search', name: 'app_search')]
    // public function search(Request $request): Response
    // {
    //     $form = $this->createForm(ProductsType::class);
    //     $form->handleRequest($request);

    //     if ($form->isSubmitted() && $form->isValid()) {
    //         $searchTerm = $form->get('search')->getData();

    //         $entityManager = $doctrine()->getManager();
    //         $productRepository = $entityManager->getRepository(ProductsType::class);

    //         $results = $productRepository->createQueryBuilder('p')
    //             ->where('id')
    //             ->setParameter('searchTerm', '%'.$searchTerm.'%')
    //             ->getQuery()
    //             ->getResult();
    //     } else {
    //         $results = [];
    //     }

    //     return $this->render('products/search.html.twig', [
    //         'form' => $form->createView(),
    //         'results' => $results,
    //     ]);
    // }

    #[Route('/search', name: 'app_search')]
    public function search(EntityManagerInterface $em, int $id, Request $req): Response
        {
            $sp = $em->find(SearchFormType::class, $id); 
            $em->persist($sp);
            $em->flush();
            return new RedirectResponse($this->urlGenerator->generate('app_products'));     
        }

   

}














