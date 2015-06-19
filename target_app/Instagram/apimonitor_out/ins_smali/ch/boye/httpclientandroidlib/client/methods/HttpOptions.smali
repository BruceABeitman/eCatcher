.class public Lch/boye/httpclientandroidlib/client/methods/HttpOptions;
.super Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.source "HttpOptions.java"
.field public static final METHOD_NAME:Ljava/lang/String; = "OPTIONS"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V
invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public constructor <init>(Ljava/net/URI;)V
.registers 2
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpOptions;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public getAllowedMethods(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/util/Set;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP response may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "Allow"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
move-result-object v1
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
:cond_15
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
:goto_25
if-ge v0, v4, :cond_15
aget-object v5, v3, v0
invoke-interface {v5}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_25
:cond_33
return-object v2
.end method
.method public getMethod()Ljava/lang/String;
.registers 2
const-string v0, "OPTIONS"
return-object v0
.end method