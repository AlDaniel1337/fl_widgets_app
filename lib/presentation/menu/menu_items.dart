import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/menu/menu_item.dart';
import 'package:widgets_app/presentation/pages/pages.dart';

const appMenuItems = <MenuItems>[

  MenuItems(
    title: "Botones", 
    subTitle: "Varios botones en Flutter", 
    link: ButtonsPage.route, 
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: "Tarjetas", 
    subTitle: "Un contenedor estilizado", 
    link: CardsPage.route, 
    icon: Icons.credit_card
  ),

  MenuItems(
    title: "Indicador de progreso", 
    subTitle: "Generales y controlados", 
    link: ProgressPage.route, 
    icon: Icons.refresh_rounded
  ),

  MenuItems(
    title: "Snackbars y diálogos", 
    subTitle: "Generales y controlados", 
    link: SnackbarPage.route, 
    icon: Icons.info_outline
  ),

  MenuItems(
    title: "Contenedor animado", 
    subTitle: "Widget animado", 
    link: AnimatedPage.route, 
    icon: Icons.check_box_outline_blank
  ),

  MenuItems(
    title: "Controles UI + Tile", 
    subTitle: "Una serie de controles de Flutter", 
    link: UiControlsPage.route, 
    icon: Icons.car_rental_outlined
  ),

  MenuItems(
    title: "Introducción a la aplicación", 
    subTitle: "Ejemplo de un pequeño tutorial", 
    link: AppTutorialPage.route, 
    icon: Icons.accessible_rounded
  ),

  MenuItems(
    title: "InfiniteScroll y Pull", 
    subTitle: "Listas infinites y Pull para refrescar", 
    link: InfiniteScrollPage.route, 
    icon: Icons.list_alt_rounded
  ),

];