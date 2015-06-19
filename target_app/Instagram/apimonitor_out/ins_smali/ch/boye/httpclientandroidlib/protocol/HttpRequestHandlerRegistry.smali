.class public Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"
.implements Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
.field private final matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
return-void
.end method
.method public lookup(Ljava/lang/String;)Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;
return-object v0
.end method
.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public register(Ljava/lang/String;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "URI request pattern may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Request handler may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public setHandlers(Ljava/util/Map;)V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->setObjects(Ljava/util/Map;)V
return-void
.end method
.method public unregister(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V
return-void
.end method