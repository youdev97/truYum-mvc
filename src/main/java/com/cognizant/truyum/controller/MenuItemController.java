package com.cognizant.truyum.controller;

import java.util.List;

import javax.transaction.SystemException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.truyum.exception.TruyumNotFoundException;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.service.MenuItemService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MenuItemController {

	@Autowired
	MenuItemService menuItemService;

	// List Items
	@GetMapping(value = "/show-menu-list-admin")
	public String showMenuItemListAdmin(ModelMap model) throws SystemException {
		log.info("Start Show Admin Menu List");
		List<MenuItem> menuItemList = menuItemService.getMenuItemListAdmin();
		model.addAttribute("menuItemList", menuItemList);
		log.info("End Show Admin Menu List");
		return "menu-item-list-admin";
	}

	@GetMapping(value = { "/show-menu-list-customer", "/" })
	public String showMenuItemListCustomer(ModelMap model) throws SystemException {
		log.info("Start Show Customer Menu List");
		List<MenuItem> menuItemList = menuItemService.getMenuItemListCustomer();
		model.addAttribute("menuItemList", menuItemList);
		log.info("End Show Customer Menu List");
		return "menu-item-list-customer";
	}

	// Edit
	@GetMapping(value = "/show-edit-menu-item")
	public String showEditMenuItem(@RequestParam("menuItemId") long menuItemId, ModelMap model)
			throws TruyumNotFoundException {
		log.info("Start GET Show Edit Menu Item");
		MenuItem menuItem = menuItemService.getMenuItem(menuItemId);
		model.addAttribute("menuItemBean", menuItem);
		log.info("End GET Show Edit Menu Item");
		return "edit-menu-item";
	}

	@PostMapping(value = "/edit-menu-item")
	public String editMenuItem(@ModelAttribute("menuItemBean") @Valid MenuItem menuItem, BindingResult bindingResult,
			ModelMap model) {
		log.info("Start POST Edit Menu Item");
		if (bindingResult.hasErrors()) {
			log.info("End POST Edit Menu Item");
			return "edit-menu-item";
		} else {
			menuItemService.saveMenuItem(menuItem);
			model.addAttribute("headline", "Edit Menu Item Status");
			model.addAttribute("msg", "Menu Item details updated successfully");
			log.info("End POST Edit Menu Item");
			return "menu-item-status";
		}
	}

	// Add
	@GetMapping(value = "/add-menu-item")
	public String addMenuItem(ModelMap model) {
		log.info("Start GET Add Menu Item");
		MenuItem menuItemBean = new MenuItem();
		model.addAttribute("menuItemBean", menuItemBean);
		log.info("End GET Add Menu Item");
		return "add-menu-item";
	}

	@PostMapping(value = "/add-menu-item")
	public String addMenuItem(@ModelAttribute("menuItemBean") @Valid MenuItem menuItem, BindingResult bindingResult,
			ModelMap model) {
		log.info("Start POST Add Menu Item");
		if (bindingResult.hasErrors()) {
			log.info("End POST Add Menu Item");
			return "add-menu-item";
		} else {
			menuItemService.saveMenuItem(menuItem);
			model.addAttribute("headline", "Add Menu Item Status");
			model.addAttribute("msg", "New Menu Item saved successfully");
			log.info("End POST Add Menu Item");
			return "menu-item-status";
		}
	}

	// Delete
	@GetMapping(value = "/delete-menu-item")
	public String deleteMenuItem(@RequestParam("menuItemId") long menuItemId, ModelMap model) {
		log.info("Start POST Delete Menu Item");
		menuItemService.delete(menuItemId);
		model.addAttribute("headline", "Delete Menu Item Status");
		model.addAttribute("msg", "Menu Item deleted successfully");
		log.info("End POST Delete Menu Item");
		return "menu-item-status";
	}

}
