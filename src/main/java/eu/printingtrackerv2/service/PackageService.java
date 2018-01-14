package eu.printingtrackerv2.service;

import eu.printingtrackerv2.model.bindingModels.PackageBindingModel.AddPackageBindingModel;
import eu.printingtrackerv2.model.viewModels.packageViewModel.PackageViewModel;

import java.util.Set;

public interface PackageService {

    void save(AddPackageBindingModel addPackageBindingModel);

    Set<PackageViewModel> findAllPackages();
}
