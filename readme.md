# GrazeWP7
GrazeWP7 is a Windows Phone 7 app marketing site generator. It uses the [Graze templating engine](https://github.com/mikoskinen/graze) with [Twitter Bootstrap.](https://github.com/twitter/bootstrap/)

GrazeWP7 uses a simple configuration file to generate a static web site for your application. The generated site is pure HTML / CSS / JavaScript and can be hosted on any web server.

## Quick start

1. Download the [zip-package](https://github.com/downloads/mikoskinen/grazewp7/grazewp7_2.0.zip) *or* clone this repository.
2. Customize the configuration.xml.
3. Run graze.exe.

The static site (index.html) is generated into the output folder. The site can be hosted on any web server.

## Nuget

GrazeWP7 is also available from the NuGet. To get started, first create a new "Empty Project" with Visual Studio and then add the GrazeWP7 using NuGet. Graze.exe and the template-folder are installed into the root of your project.

<pre>
<code>
Install-Package grazewp7
</code>
</pre>

## Example

![Screenshot](http://mikaelkoskinen.net/image.axd?picture=screenshot_small.png)

[Live demo](http://mikoskinen.github.com/grazewp7/)

## Customization

### The template

The GrazeWP7 template uses the Graze templating engine. The template is created using the Razor syntax and is located in template\index.cshtml.

To learn more about modifying the Graze templates, please visit the [Graze's web site.](https://github.com/mikoskinen/graze)

### The configuration file

The GrazeWP7 configuration file contains the data for your web site. The first lines contain the basic information about your app:

      <Title>My App Name</Title>
      <Description>Wonderful application!</Description>
      <ApplicationId></ApplicationId>

Then you have couple taglines to fill:


      <Subtitle>Another tagline goes here!</Subtitle>
      <ReviewsTitle>See what others are saying.</ReviewsTitle>


Next up are the reviews. You can add freely customize the quantity, but don't delete the Reviews-tag:

      <Reviews>
        <Review author="Miquel" rating="5">Wonderful application, love it greatly!</Review>
        <Review author="Miquel" rating="4">Wonderful application, love it greatly!</Review>
        <Review author="Miquel" rating="5">Wonderful application, love it greatly!</Review>
      </Reviews>

The screenshots are defined in the configuration file. These images are shown from the template\assets\shots -folder. Same as with the reviews, the quantity is not fixed:

      <Screenshots>
        <screenshot alt="History view">screenshot1.png</screenshot>
        <screenshot alt="Home view">screenshot2.png</screenshot>
        <screenshot alt="Estimate view">screenshot3.png</screenshot>
        <screenshot alt="Estimate view">screenshot4.png</screenshot>
      </Screenshots>

Last list in the configuration contains the features:

      <Features>
        <Feature Image="assets/img/glyphicons/glyphicons_009_magic.png" Title="Feature 1">This feature is extremely solid, making the the really nice to use. It allows you to make great things. And to do those things fast.</Feature>
        <Feature Image="assets/img/glyphicons/glyphicons_009_magic.png" Title="Feature 2">This feature is extremely solid, making the the really nice to use. It allows you to make great things. And to do those things fast.</Feature>
        <Feature Image="assets/img/glyphicons/glyphicons_009_magic.png" Title="Feature 3">This feature is extremely solid, making the the really nice to use. It allows you to make great things. And to do those things fast.</Feature>
      </Features>

After this there are few more configuration options:

      <Publisher>SoftwareMK</Publisher>
      <PublisherHomeSite>http://softwaremk.org</PublisherHomeSite>
      <WP7Graze Link="https://github.com/mikoskinen/wp7graze">WP7Graze</WP7Graze>
      <Graze Link="https://github.com/mikoskinen/graze">Graze templating engine</Graze>

### Generating the static site

Once the GrazeWP7 configuration file is ready, the static site can be generated running the graze.exe. The static site is outputted to the output-folder.

##Credits

The GrazeWP7 was inspired from the following projects:

[Windows Phone App Site template](http://wp7appsite.codeplex.com/)

[WP7 Jekyll app site templates](https://github.com/aeoth/Wp7JekyllTemplates)

It uses Windows Phone image assets from those projects.

##License

    MIT License
    Copyright (C) 2012 Mikael Koskinen
    
    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
    of the Software, and to permit persons to whom the Software is furnished to do
    so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

###RazorEngine

Graze uses the [RazorEngine.](http://razorengine.codeplex.com/)

RazorEngine is available under MS-PL.