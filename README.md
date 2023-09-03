Overview
========

This Rails mountable engine allows you to manage your Deposit integration in Kill Bill.

* See [killbill-deposit-plugin](https://github.com/killbill/killbill-deposit-plugin) to get started with the Deposit plugin.
* See [killbill-admin-ui-standalone](https://github.com/killbill/killbill-admin-ui-standalone) to get started with the Kill Bill Admin UI.

Kill Bill compatibility
-----------------------

| Deposit UI version | Kill Bill version |
|-------------------:|------------------:|
|              0.0.y |            0.22.z (Rails 5) |
|              0.1.y |            0.24.z (Rails 6) |
|              1.0.y |            0.24.z (Rails 7) |

Functionality
-------------

This app lets you:

* Record and categorize external payments as Cash, Check, Bank Transfer, etc.
* Apply payments to one or multiple invoices.
* Identify invoice line items that are unpaid (e.g. if the customer is disputing a subset of the invoice).

Getting Started
---------------

You can run this locally by using the test/dummy app provided.

To do so, specify your Kill Bill server url, api key and secret in ```test/dummy/config/initializers/killbill_client.rb```:

```
KillBillClient.url = 'http://127.0.0.1:8080/'
KillBillClient.api_key = 'bob'
KillBillClient.api_secret = 'lazar'
```

Then, simply run:

```
rails s
```

To run tests:

```
rails t
```

This plugin is using [killbill-assets-ui](https://github.com/killbill/killbill-assets-ui) to load the common assets.
If you want to override the assets you can add it to ```app/assets/stylesheet/deposit``` or ```app/assets/javascripts/deposit```

For integrate run with [killbill-admin-ui-standalone](https://github.com/killbill/killbill-admin-ui-standalone), please update the Gemfile to use Deposit locally

```
# gem 'killbill-deposit'
gem 'killbill-deposit', :path => '../killbill-deposit-ui'
```
