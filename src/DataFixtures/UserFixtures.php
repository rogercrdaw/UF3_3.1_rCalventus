<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use App\Entity\User;

class UserFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);
        $user_01 = new User();
        $user_01->setEmail("user01@eso.com")->setPassword("user01")->setRoles(["ROLE_USER"]);        
        $manager->persist($user_01);

        $user_02 = new User();
        $user_02->setEmail("user02@eso.com")->setPassword("user02")->setRoles(["ROLE_USER"]);
        $manager->persist($user_02);

        $user_03 = new User();
        $user_03->setEmail("user03@eso.com")->setPassword("user03")->setRoles(["ROLE_USER","ROLE_ADMIN"]);        
        $manager->persist($user_03);

        $user_04 = new User();
        $user_04->setEmail("user04@eso.com")->setPassword("user04")->setRoles(["ROLE_USER"]);        
        $manager->persist($user_04);

        $user_05 = new User();
        $user_05->setEmail("user05@eso.com")->setPassword("user05")->setRoles(["ROLE_USER", "ROLE_SUPER"]);        
        $manager->persist($user_05);

        $manager->flush();
    }
}
