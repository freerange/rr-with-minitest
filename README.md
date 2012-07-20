## Demo of RR/MiniTest integration

### How it works

- Re-open `MiniTest::Unit::TestCase` and `include RR::Adapters::MiniTest`.
- This includes `RR::Adapters::RRMethods` c.f. `Mocha::API`
- And does an `alias_method_chain` style manoeuvre on `MiniTest::Unit::TestCase#setup` and `MiniTest::Unit::TestCase#teardown` in order to add calls to `RR.reset` and `RR.verify`.
- There is no warning in the documentation that if you define your own `#setup` or `#teardown` methods then you should make sure you call `#super` otherwise RR will not work correctly.