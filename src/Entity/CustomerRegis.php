<?php

namespace App\Entity;

use App\Repository\CustomerRegisRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CustomerRegisRepository::class)]
class CustomerRegis
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $Uesrname = null;

    #[ORM\Column(length: 255)]
    private ?string $Password = null;

    #[ORM\Column(length: 255)]
    private ?string $Customer_firstname = null;

    #[ORM\Column(length: 255)]
    private ?string $Customer_lastname = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUesrname(): ?string
    {
        return $this->Uesrname;
    }

    public function setUesrname(string $Uesrname): static
    {
        $this->Uesrname = $Uesrname;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->Password;
    }

    public function setPassword(string $Password): static
    {
        $this->Password = $Password;

        return $this;
    }

    public function getCustomerFirstname(): ?string
    {
        return $this->Customer_firstname;
    }

    public function setCustomerFirstname(string $Customer_firstname): static
    {
        $this->Customer_firstname = $Customer_firstname;

        return $this;
    }

    public function getCustomerLastname(): ?string
    {
        return $this->Customer_lastname;
    }

    public function setCustomerLastname(string $Customer_lastname): static
    {
        $this->Customer_lastname = $Customer_lastname;

        return $this;
    }
}
