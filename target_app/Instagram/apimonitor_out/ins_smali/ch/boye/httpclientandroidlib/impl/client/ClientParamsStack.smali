.class public Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;
.super Lch/boye/httpclientandroidlib/params/AbstractHttpParams;
.source "ClientParamsStack.java"
.field protected final applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;
.field protected final clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;
.field protected final overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;
.field protected final requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;)V
.registers 6
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getApplicationParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getClientParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v1
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getRequestParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v2
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getOverrideParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v3
invoke-direct {p0, v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 6
if-eqz p2, :cond_c
:goto_2
if-eqz p3, :cond_11
:goto_4
if-eqz p4, :cond_16
:goto_6
if-eqz p5, :cond_1b
:goto_8
invoke-direct {p0, p2, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
:cond_c
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getApplicationParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object p2
goto :goto_2
:cond_11
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getClientParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object p3
goto :goto_4
:cond_16
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getRequestParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object p4
goto :goto_6
:cond_1b
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->getOverrideParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object p5
goto :goto_8
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 5
invoke-direct {p0}, Lch/boye/httpclientandroidlib/params/AbstractHttpParams;-><init>()V
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;
iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;
iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public copy()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 1
return-object p0
.end method
.method public final getApplicationParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;
return-object v0
.end method
.method public final getClientParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;
return-object v0
.end method
.method public final getOverrideParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;
return-object v0
.end method
.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter name must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;
if-eqz v1, :cond_15
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->overrideParams:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_15
if-nez v0, :cond_21
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;
if-eqz v1, :cond_21
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_21
if-nez v0, :cond_2d
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;
if-eqz v1, :cond_2d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->clientParams:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_2d
if-nez v0, :cond_39
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;
if-eqz v1, :cond_39
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->applicationParams:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
:cond_39
return-object v0
.end method
.method public final getRequestParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;->requestParams:Lch/boye/httpclientandroidlib/params/HttpParams;
return-object v0
.end method
.method public removeParameter(Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Removing parameters in a stack is not supported."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Setting parameters in a stack is not supported."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method