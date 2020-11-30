<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends DuskTestCase implements Context
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     * @param string $name
     * @param array $data
     * @param string $dataName
     */
    public function __construct($name = null, array $data = [], $dataName = '')
    {
        parent::__construct($name, $data, $dataName);
        parent::setUp();
        static::startChromeDriver();
    }

    /**
     * @When I browse following URL :url
     *
     * @param string $url
     * @throws \Exception
     */
    public function iBrowseFollowingUrl(string $url)
    {
        $this->browse(function (Browser $browser) use ($url) {
            $browser->visit($url);
        });
    }

    /**
     * @When I should see this text :word
     *
     * @param string word
     * @throws \Exception
     */
    public function iShouldSeeThisText(string $word)
    {
        $this->browse(function (Browser $browser) use ($word) {
            $browser->assertSee($word);
        });
    }
}
