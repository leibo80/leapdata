# -*- coding: utf-8 -*-
import scrapy


class ExampleSpider(scrapy.Spider):
    name = "example"
    allowed_domains = ["www.baidu.com"]
    start_urls = (
        'http://www.www.baidu.com/',
    )

    def parse(self, response):
       # pass
       filename = response.url.split("/")[-2]
       open(filename, 'wb').write(response.body)
