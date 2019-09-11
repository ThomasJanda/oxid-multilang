<?php

$sMetadataVersion = '2.0';

$aModule = array(
    'id'               => 'rs-multilang',
    'title'            => '*RS Multi lang',
    'description'      => 'Disable products and categories separate for each language',
    'thumbnail'        => '',
    'version'          => '1.0.0',
    'author'           => '',
    'url'              => '',
    'email'            => '',
    'extend'           => array(
        \OxidEsales\Eshop\Application\Model\Article::class => rs\multilang\Application\Model\Article::class,
        \OxidEsales\Eshop\Application\Model\Category::class => rs\multilang\Application\Model\Category::class,
        \OxidEsales\Eshop\Application\Model\CategoryList::class => rs\multilang\Application\Model\CategoryList::class,
    ),
    'blocks' => array(
        array(
            'template' => 'article_main.tpl',
            'block'=>'admin_article_main_extended',
            'file'=>'/views/admin/blocks/article_main__admin_article_main_extended.tpl'
        ),
        array(
            'template' => 'include/category_main_form.tpl',
            'block'=>'admin_category_main_assign_articles',
            'file'=>'/views/admin/blocks/include/category_main_form__admin_category_main_assign_articles.tpl'
        ),
        array(
            'template' => 'category_list.tpl',
            'block'=>'admin_category_list_item',
            'file'=>'/views/admin/blocks/category_list__admin_category_list_item.tpl'
        ),
        array(
            'template' => 'article_list.tpl',
            'block'=>'admin_article_list_item',
            'file'=>'/views/admin/blocks/article_list__admin_article_list_item.tpl'
        ),
    ),
);
