.class public Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"
.implements Lch/boye/httpclientandroidlib/client/CredentialsProvider;
.field private final credMap:Ljava/util/concurrent/ConcurrentHashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;
return-void
.end method
.method private static matchCredentials(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;
.registers 8
invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/auth/Credentials;
if-nez v0, :cond_30
const/4 v4, -0x1
const/4 v2, 0x0
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_12
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_28
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lch/boye/httpclientandroidlib/auth/AuthScope;
invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/auth/AuthScope;->match(Lch/boye/httpclientandroidlib/auth/AuthScope;)I
move-result v3
if-le v3, v4, :cond_31
move v2, v3
:goto_25
move v4, v2
move-object v2, v1
goto :goto_12
:cond_28
if-eqz v2, :cond_30
invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/auth/Credentials;
:cond_30
return-object v0
:cond_31
move-object v1, v2
move v2, v4
goto :goto_25
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-void
.end method
.method public getCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Authentication scope may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->matchCredentials(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;
move-result-object v0
return-object v0
.end method
.method public setCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;Lch/boye/httpclientandroidlib/auth/Credentials;)V
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Authentication scope may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method