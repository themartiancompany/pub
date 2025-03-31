=====
pub
=====

------------------
Ur publishing tool
------------------
:Version: pub |version|
:Manual section: 1

Synopsis
========

pub *[options]* *package*

Description
===========

*pub* is the reference utility to publish packages on the Ur,
the decentralized, distributed, uncensorable, undeletable
user repository and application store of Life and DogeOS.



Contract options
=================
-A fs_address           Address of the EVM file system
                        on the network.
-B ll_address           Address of the Length Lock contract
                        on the network.
-V fs_version           Version of the target EVM file
                        system.
Options
============

-W repo_dir             Repo directory.
-S origin               Repo origin.
-D publishing_platform  Publishing platform.
                        It can be 'ur', 'gur', 'fur'.
-P target_publisher     Target publisher.
                        It's 'themartiancompany' for
                        gur' and 'fur' and user's
                        wallet address for 'ur'.
-M target_price         Target price for the package.
-m measure_unit         Measure unit for the network
                        currency. It can be 'ether'
                        and 'wei'.
-R <y/n>                If set to 'y', it will skip
                        recipe publishing.
-U target_uri           To manually specify the signed
                        package recipe archive evmfs URI
                        and skip upload.
-L y_or_n               Whether to list package
                        for user search. Requires to
                        be a registered Ur publisher.
-H gnupg_home           GNUPG home directory.
-K fingerprint          OpenPG signature key.
-E email_like_id        OpenPG signature email.
-O computing_platform   Life or DogeOS base platform for
                        which the binary package is built
                        ('arch', 'termux').

Contract options
=================

-A ur_address           Address of the 'User Repository'
                        contract on the network.
-B up_address           Address of the 'User Repository
                        Publishers' contract on the
                        network.
-C pp_address           Address of the 'Package Publishers'
                        contract on the network.
-V ur_version           Version of the target 'User Repository
                        Publishers' contract.

LibEVM options
===============

-u                      Whether to retrieve file system
                        address from user directory or custom
                        deployment.
-d deployments_dir      Contracts deployments directory.
-n network              EVM network name (${_networks[*]}).

Credentials options
====================

-N wallet_name>         Wallet name.
-w wallet_path>         Wallet path.
-p wallet_password>     Wallet password.
-s wallet_seed          Wallet seed path.
-k api_key              Etherscan-like service key.

Environment variables
=====================

EVMFS_OPTS: options to pass to evmfs when uploading the recipe.

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* pub -h
* ur

.. include:: variables.rst
