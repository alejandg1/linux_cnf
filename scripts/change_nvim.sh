#!/bin/bash

echo "Selecciona una configuración para Neovim:"
echo "1. propia"
echo "2. Chad"
echo "3. Lazy"

read -p "Ingresa el número de la configuración que deseas utilizar: " option

case $option in
1)
	echo "Usando propia"
	rm -rf ~/.config/nvim/*
  rm -rf ~/.local/share/nvim
	rsync -av --exclude=".git" ~/.config/nvim_propia/ ~/.config/nvim/
	;;
2)
	echo "Usando nvim_chad"
	rm -rf ~/.config/nvim/*
  rm -rf ~/.local/share/nvim
	rsync -av --exclude=".git" ~/.config/nvim_chad/ ~/.config/nvim/
	;;
3)
	echo "Usando lazyvim"
	rm -rf ~/.config/nvim/*
  rm -rf ~/.local/share/nvim
	rsync -av --exclude=".git" ~/.config/nvim_lazy/ ~/.config/nvim/
	;;
*)
	echo "Opción inválida"
	exit 1
	;;
esac
