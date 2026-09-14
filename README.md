<div align="center">
<a href="https://github.com/Benjakusa/tiba">
    <img src="https://raw.githubusercontent.com/Benjakusa/tiba/develop/healthcare/public/images/healthcare.svg" height="128" alt="Tiba Logo">
  </a>
  <h2>Tiba</h2>
  <p align="center">
    <p>Open source & easy-to-use hospital information system (HIS) for all healthcare organisations.</p>
  </p>

  [Tiba](https://github.com/Benjakusa/tiba)

</div>

### Introduction

Tiba enables the health domain in ERPNext and has various features that will help healthcare practitioners, clinics and hospitals to leverage the power of Frappe and ERPNext. It is built on Frappe, a full-stack, meta-data driven, web framework, and integrates seamlessly with ERPNext, the most agile ERP software. Tiba helps to manage healthcare workflows efficiently and most of the design is based on HL7 FHIR (Fast Health Interoperability Resources).


### Key Features

![Key Features](https://raw.githubusercontent.com/Benjakusa/tiba/develop/key-features.png)

Key feature sets include Patient management, Outpatient / Inpatient management, Clinical Procedures, Rehabilitation and Physiotherapy, Laboratory management etc. and supports configuring multiple Medical Code Standards. It allows mapping any healthcare facility as Service Units and specialities as Medical Departments.

By integrating with ERPNext, features of ERPNext can also be utilized to manage Pharmacy and supplies, Purchases, Human Resources, Accounts and Finance, Asset Management, Quality etc. Along with authentication and role based access permissions, RESTfullness, extensibility, responsiveness and other goodies, the framework also allows setting up Website, payment integration and Patient portal.


### Installation

Using bench, [install ERPNext](https://github.com/frappe/bench#installation) as mentioned here.

Once ERPNext is installed, add tiba app to your bench by running

```sh
$ bench get-app tiba https://github.com/Benjakusa/tiba.git
```

After that, you can install tiba app on required site by running

```sh
$ bench --site demo.com install-app healthcare
```

> Note: the internal app module is still named `healthcare` (renaming it would break all imports); only the branding changed to Tiba.


### Documentation

Documentation for Tiba is available at https://github.com/Benjakusa/tiba


### License

GNU GPL V3. See [license.txt](https://github.com/Benjakusa/tiba/blob/develop/license.txt) for more information.
