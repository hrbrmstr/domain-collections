# Categorized Internet Domain Lists

Listings, GH submodules and/or directories+processing scripts that hold domain lists (official or crowdsourced). 

## Purpose

First up: this is not a "useless IoC" domain list dumping ground. There are plenty of other internet sharing platforms for tossing around lists of "bad domains".

The intent of this resource is to have a curated set of domain lists internet/cybersecurity researchers can use when analyzing attributes associated with internet resources. That means the domain list must have some "meaning". Two of the lists used to bootstrap the repository are moderately good examples of this. One is a curated & maintained list of _university_ domains; the other is a U.S. GSA maintained set of _U.S. government_ domains.

The intent, however, is not to "duplicate the wheel".

Contributors are welcome and encouraged to maintain curated domain lists here.

However:

- If a an approved domain list is being maintained on GitHub, a _submodule_ should be added for it, not the _contents_ of the repository.
- If an approved resource exists on the internet and is small enough to include, then the code to retrieve that list should be present and be able to run from a daily job.
- If an approved resource exists on the internet and is not small enough to include, retrieval code should still be proivded.

The goal is also not to define a "unified schema" for domains. That, as a "nice to have", might come later or may be built by others around this project. There are free and useful domain lists currently all over the place or able to be created pretty quickly and adding friction to the curation & inclusion by forcing a schema would likely provide enough inertia to make this effort fizzle out. For now, just enough metadata is being required to enable researchers to work with the included resources.

## Contributing

Make sure you can [sign your commits](https://help.github.com/articles/signing-commits-using-gpg/) before doing anything.

### Helping Manage The Collection

If you're willing to help vet new resources file an issue to be added as a collaborator. There will eventually be reviewer guidelines but you have the opportunity to help define those by jumping on board now!

### Submitting New Resources

Create an [Issue](https://github.com/hrbrmstr/domain-collections/issues) before submitting any _new_ resource. New resources need to be vetted to maintain the efficacy, utility and integrity of this resource. There are Issue and Pull Request (PR) templates. Please read them and adhere to them before submitting.

For contributions maintained _within_ this repository:

    - well-named-directory/         # A directory name that will give some idea of the resource type
        - README.md                 # Textual description of the resource (for humans)
        - metadata.json             # JSON structured resource metadata
        - data/                     # The data file(s) associated with this curated list


For [Submodules](https://blog.github.com/2016-02-01-working-with-submodules/) the basic workflow is to end up with a new sub-directory structured like this:

    - well-named-directory/         # A directory name that will give some idea of the resource type
        - README.md                 # Textual description of the resource (for humans)
        - metadata.json             # JSON structured resource metadata
        - reponame @ commit/        # Added via `git submodule add https://github.com/<user>/reponame reponame`

For resources imported from existing (non-GitHub) internet sites:

    - well-named-directory/         # A directory name that will give some idea of the resource type
        - README.md                 # Textual description of the resource (for humans)
        - metadata.json             # JSON structured resource metadata
        - data/                     # The data file(s) associated with resource
        - update.[sh|py|rb|r|...]   # A _single file_ updater that will be run automatically & daily

## Copyrights & Ethical Behaviour

Certain domain lists have copyrights. For example, you _cannot_ include _any_ Amazon Alexa "Top" lists here since they are an Amazon product/service and cannot be shared.

No updater script may scrape domain lists from sites that have ToS/T&C or `robots.txt` that prohibit scraping.

Yes, it does seem a bit daft that a list of domains would have some type of legal protection like this but imagine all the the lawyers who would become hobos if they didn't invent new ways to keep themselves employed?

## License

The repo and all resources curated _within_ the repository are MIT licensed.

Submodules maintain the license under their repository and resources updated from the internet maintain their licenses as well.

There is a `license` field in the `metadata.json` file that identifies the license for each resouce.

**TO ALL CYBERSECURITY STARTUPS AND FORTUNE 5000 FIRMS**: Don't be a jerk. You regularly use resources like this and the vast majority of you _never_ give back to the community. You're free to use this resource in the spirit & legal terms of the MIT license but you should seriously consider at least open sourcing your research findings from using it or the tooling that makes use of it or contributing to it yourself. Using the MIT license was a hard decision for this resource but it's the best way to enable ethical, community-minded researchers.

## Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.