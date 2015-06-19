.class public final Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.super Ljava/lang/Object;
.source "SchemeRegistry.java"
.field private final registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
return-void
.end method
.method public final get(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
return-object v0
.end method
.method public final getScheme(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Host must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
move-result-object v0
return-object v0
.end method
.method public final getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.registers 5
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
move-result-object v0
if-nez v0, :cond_21
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Scheme \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' not registered."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
return-object v0
.end method
.method public final getSchemeNames()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public final register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Scheme must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
return-object v0
.end method
.method public final setItems(Ljava/util/Map;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V
goto :goto_2
.end method
.method public final unregister(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
return-object v0
.end method