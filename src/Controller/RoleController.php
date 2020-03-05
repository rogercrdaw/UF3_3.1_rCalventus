<?php

namespace App\Controller;

use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class RoleController extends AbstractController
{

    /**
     * @Route("/role", name="role")
     */
    public function switchRoles()
    {
        $roles = $this->getUser()->getRoles();
        $userName = $this->getUser()->getEmail();
        $repository = $this->getDoctrine()->getRepository(User::class);



        if (in_array("ROLE_ADMIN", $roles)) {
            //Si en el array està el role ADMIN -> Mostrar todos
            $users = $repository->findAll();

            return $this->render('role/listRole.html.twig', [
                'controller_name' => $userName,
                'user_role' => 'ADMIN',
                'users_list' => $users,
            ]);

        } else if (in_array("ROLE_SUPER", $roles)) {
            //De lo contrario, si està el SUPER -> Solo mostrar USERS y SUPER

            $users = $repository->findByRole(['ROLE_USER', 'ROLE_SUPER']);

            return $this->render('role/listRole.html.twig', [
                'controller_name' => $userName,
                'user_role' => 'SUPER',
                'users_list' => $users
            ]);

        } else if (in_array("ROLE_USER", $roles)) {
            //Finalmente si està el  USER -> Solo mostrar USER
            $users = $repository->findByRole(['ROLE_USER']);

            return $this->render('role/listRole.html.twig', [
                'controller_name' => $userName,
                'user_role' => 'USUARIO',
                'users_list' => $users
            ]);
        }
    }
}
