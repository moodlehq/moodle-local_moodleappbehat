# Moodle App Behat plugin

> [!NOTE]  
> This repository is auto-generated, you can find the original source code in the [Moodle App](https://github.com/moodlehq/moodleapp) repository. In particular, this is generated using the `npx gulp behat` command and brought here in the [Update Behat plugin](https://github.com/moodlehq/moodleapp/blob/integration/.github/workflows/update_behat_plugin.yml) workflow.

This plugin can be installed in a Moodle site running Behat tests in order to run Moodle App tests. Depending on your use-case, you may want to use a different branch from this repository:

| Branch name | Core app tests         | Description |
| ----------- | ------------------ | ----------- |
| `main`      | :x:                | This branch mirrors the code from the development version of the app. You'll want to use this if you're developing Behat tests that depend on new app features which haven't been released yet. |
| `latest`    | :x:                | This branch mirrors the code from the stable version of the app. You'll want to use this if you're developing Behat tests against the latest release the app, which is what most users will have installed. |
| `ci`        | :white_check_mark: | This branch mirrors the code from the stable version of the app, and it also includes `.feature` files. This is used in the integration workflow of the tracker, to ensure that changes in the LMS don't break app compatibility. You'll want to use this if you're getting an error in the tracker and you want to reproduce it in you local environment. |

You can learn more about using this plugin and app tests in the documentation: [Acceptance testing for the Moodle App](https://moodledev.io/general/app/development/testing/acceptance-testing).
