# AgeValidator

[![Gem Version](https://badge.fury.io/rb/age_validator.svg)](http://badge.fury.io/rb/age_validator)
[![Join the chat at https://gitter.im/rentziass/age_validator](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/rentziass/age_validator?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Custom ActiveRecord Validator, useful if you need to verify an age based on a date (eg: birthdate)

## Usage

Add to your Gemfile:

```ruby
gem 'age_validator'
```

Run:

```
bundle install
```

Then add the following to your model:

```ruby
validates :my_date_attribute, age: true
```

## Optional parameters

The age validator accepts a minimum parameter, and also a custom error message:

```ruby
validates :my_date_attribute, age: {minimum: 14, message: "Your message"}
```

## Validation outside a model

If you need to validate an age outside a model, you can do like this:

```ruby
AgeValidator.valid?(Date.today - 18.years) # boolean
```

## Credit

Based on https://github.com/balexand/email_validator

## Copyright

Copyright (c) 2015 Francesco Renzi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.