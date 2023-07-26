<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;
use App\Entity\OrderItem;
use App\Form\InvoiceDetailFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class InvoiceDetailController extends AbstractController
{
    public function __construct(private UrlGeneratorInterface $urlGenerator)
        {
        }
    // #[Route('/invoice/detail', name: 'app_invoice_detail')]
    // public function index(): Response
    // {
    //     $invd = new OrderItem();
    //     $form = $this->createForm(InvoiceDetailFormType::class, $invd);
    //     $form->handleRequest($req);

    //     if($form->isSubmitted() && $form->isValid()) {
    //         $data = $form->getData();

    //         $em->persist($data);
    //         $em->flush();
        
    //     return new RedirectResponse($this->urlGenerator->generate('app_ds_Invoicedetail'));

    //     }

    //     return $this->render('invoice_detail/index.html.twig', [
    //         'invoicedetail_form' => $form->createView(),
    //     ]);
    // }

    #[Route('/invoicedetail', name: 'app_ds_Invoicedetail')]
    public function list_invd(EntityManagerInterface $em): Response
    {
        $query = $em->createQuery('SELECT invd FROM App\Entity\OrderItem invd');
        $lSp = $query->getResult();
        return $this->render('invoice_detail/list.html.twig', [
            "data"=>$lSp
        ]);
    }
}
