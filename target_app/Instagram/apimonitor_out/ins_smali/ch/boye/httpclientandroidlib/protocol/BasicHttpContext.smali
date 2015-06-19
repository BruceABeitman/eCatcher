.class public Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;
.field private map:Ljava/util/Map;
.field private final parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;
return-void
.end method
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Id may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
if-eqz v1, :cond_15
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:cond_15
if-nez v0, :cond_21
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;
if-eqz v1, :cond_21
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_21
return-object v0
.end method
.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Id may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
if-eqz v0, :cond_15
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Id may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
if-nez v0, :cond_15
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
:cond_15
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method