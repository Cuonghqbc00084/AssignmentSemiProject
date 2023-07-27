<?php

namespace App\Entity;

use App\Repository\CustomerRegisRepository;
use Doctrine\ORM\Mapping as ORM;

use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;

#[ORM\Entity(repositoryClass: CustomerRegisRepository::class)]
class CustomerRegis implements  UserInterface, PasswordAuthenticatedUserInterface
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

    
    #[ORM\Column(type: 'json')]
    private array $roles = [];
    /**
     * The public representation of the user (e.g. a username, an email address, etc.)
     *
     * @see UserInterface
     */
    public function getUserIdentifier(): string
    {
        return (string) $this->Uesrname;
    }

    /**
     * @see UserInterface
     */
    public function getRoles(): array
    {
        $roles = $this->roles;
        // guarantee every user at least has ROLE_USER
        // $roles[] = 'ROLE_USER';

        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

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
    public function eraseCredentials(): void
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }
}
