<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="utf-8" indent="yes"/>
    <xsl:template match="/">
        <html lang="zh-CN">
            <head>
                <meta charset="UTF-8"/>
                <title>商品信息展示页面</title>
                <link rel="stylesheet" href="commodity.css"/>
            </head>
            <body>
                <div class="title">
                    <span>XML作业</span>
                    <span>商品信息清单</span>
                    <span>响应式布局</span>
                    <span>制作：刘佳派 朱赋蕊 李卓然 夏清纯</span>
                </div>
                <div class="container">
						<xsl:for-each select="商品清单/商品信息">
						<div class="tile">
                        <div class="shortcut">
                            <img src="{图片}"/>
                        </div>
                        <div class="info">
                            <div class="row">
                                <div class="name">中文名:<xsl:value-of select="名称/中文名"/></div>
                                <div class="name_en">英文名:<xsl:value-of select="名称/英文名"/></div>
                            </div>
                            <div class="row">
                                <div class="brand">品牌:<xsl:value-of select="品牌"/></div>
                                <div class="tel">电话:<xsl:value-of select="生产商/联系电话"/></div>
                            </div>
                            <div class="row">
                                <div class="price">售价:<xsl:value-of select="价格/零售价"/><xsl:value-of select="价格/零售价/@货币单位"/></div>
                                <div class="date">生产日期:<xsl:value-of select="生产日期"/></div>
                            </div>
                            <div class="row">
                                <div class="address">地址:<xsl:value-of select="生产商/地址/省市"/><xsl:value-of select="生产商/地址/区"/><xsl:value-of select="生产商/地址/街道"/></div>
                            </div>
                            <div class="row">
                                <div class="company">公司名称:<xsl:value-of select="生产商/公司名称"/></div>
                            </div>
                        </div>
                    </div>
					</xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
