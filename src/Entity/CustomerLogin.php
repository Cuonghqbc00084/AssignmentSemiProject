<?php

namespace App\Entity;

use App\Repository\CustomerLoginRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CustomerLoginRepository::class)]
class CustomerLogin
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $CustomerName = null;

    #[ORM\Column(length: 255)]
    private ?string $Password = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCustomerName(): ?string
    {
        return $this->CustomerName;
    }

    public function setCustomerName(string $CustomerName): static
    {
        $this->CustomerName = $CustomerName;

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
}
