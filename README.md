# abnt_asciidoc

Com esta ferramenta você poderá compilar seu trabalho acadêmico.

Faça um [fork de edusantana/abntex2-modelo-trabalho-academico-asciidoc/fork](https://github.com/edusantana/abntex2-modelo-trabalho-academico-asciidoc/fork).

Utilize esta ferramenta para compilar o seu trabalho. (ainda em construção)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'abnt_asciidoc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install abnt_asciidoc

### Bash Completion

Put this in your .bashrc:

```bash
complete -F get_abnt_asciidoc_targets abnt_asciidoc
function get_abnt_asciidoc_targets()
{
   if [ -z $2 ] ; then
       COMPREPLY=(`abnt_asciidoc help -c`)
   else
       COMPREPLY=(`abnt_asciidoc help -c $2`)
   fi
}
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec abnt_asciidoc` to use the code located in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/abnt_asciidoc/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
