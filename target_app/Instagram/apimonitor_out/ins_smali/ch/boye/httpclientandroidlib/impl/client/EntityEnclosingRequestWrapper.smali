.class public Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;
.super Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"
.implements Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
.field private consumed:Z
.field private entity:Lch/boye/httpclientandroidlib/HttpEntity;
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
.registers 3
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
return-void
.end method
.method static synthetic access$002(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Z)Z
.registers 2
iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
return p1
.end method
.method public expectContinue()Z
.registers 3
const-string v0, "Expect"
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_16
const-string v1, "100-continue"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;
return-object v0
.end method
.method public isRepeatable()Z
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;
if-eqz v0, :cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isRepeatable()Z
move-result v0
if-nez v0, :cond_10
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
if-nez v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
.registers 3
if-eqz p1, :cond_d
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
invoke-direct {v0, p0, p1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;-><init>(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Lch/boye/httpclientandroidlib/HttpEntity;)V
:goto_7
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->entity:Lch/boye/httpclientandroidlib/HttpEntity;
const/4 v0, 0x0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
return-void
:cond_d
const/4 v0, 0x0
goto :goto_7
.end method