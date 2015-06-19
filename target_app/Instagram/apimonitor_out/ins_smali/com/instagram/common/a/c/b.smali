.class public Lcom/instagram/common/a/c/b;
.super Ljava/lang/Object;
.source "RequestParams.java"
.implements Lcom/instagram/common/a/c/d;
.field private final a:Ljava/util/Map;
.field private final b:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/common/a/c/b;->a:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
return-void
.end method
.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
new-instance v1, Lcom/instagram/common/a/f/a;
invoke-direct {v1, p3, p2, p4}, Lcom/instagram/common/a/f/a;-><init>(Ljava/lang/String;[BLjava/lang/String;)V
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private f()Ljava/util/List;
.registers 6
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
iget-object v0, p0, Lcom/instagram/common/a/c/b;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {v4, v1, v0}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_30
return-object v2
.end method
.method public final a()I
.registers 3
iget-object v0, p0, Lcom/instagram/common/a/c/b;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
iget-object v1, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public final a(Z)Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lcom/instagram/common/a/c/b;->f()Ljava/util/List;
move-result-object v0
if-eqz p1, :cond_e
new-instance v1, Lcom/instagram/common/a/c/c;
invoke-direct {v1, p0}, Lcom/instagram/common/a/c/c;-><init>(Lcom/instagram/common/a/c/b;)V
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_e
const-string v1, "UTF-8"
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/io/File;)V
.registers 4
invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
.registers 5
const-string v0, "application/octet-stream"
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
new-instance v1, Lcom/instagram/common/a/f/d;
invoke-direct {v1, p3, p2, p4}, Lcom/instagram/common/a/f/d;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_9
if-eqz p2, :cond_9
iget-object v0, p0, Lcom/instagram/common/a/c/b;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_9
return-void
.end method
.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
.registers 5
const-string v0, "application/octet-stream"
invoke-direct {p0, p1, p2, p3, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
return-void
.end method
.method public final b()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/c/b;->a:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public d()Lch/boye/httpclientandroidlib/HttpEntity;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_5c
new-instance v2, Lcom/instagram/common/a/f/f;
invoke-direct {v2}, Lcom/instagram/common/a/f/f;-><init>()V
iget-object v0, p0, Lcom/instagram/common/a/c/b;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Lcom/instagram/common/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_18
:cond_34
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/a/f/h;
invoke-virtual {v2, v1, v0}, Lcom/instagram/common/a/f/f;->a(Ljava/lang/String;Lcom/instagram/common/a/f/h;)V
goto :goto_3e
:cond_5a
move-object v0, v2
:goto_5b
return-object v0
:cond_5c
:try_start_5c
new-instance v0, Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;
invoke-direct {p0}, Lcom/instagram/common/a/c/b;->f()Ljava/util/List;
move-result-object v2
const-string v3, "UTF-8"
invoke-direct {v0, v2, v3}, Lch/boye/httpclientandroidlib/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
:try_end_67
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5c .. :try_end_67} :catch_68
goto :goto_5b
:catch_68
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
move-object v0, v1
goto :goto_5b
.end method
.method public final e()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/common/a/c/b;->a(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/instagram/common/a/c/b;->e()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/common/a/c/b;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-lez v3, :cond_2a
const-string v3, "&"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2a
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "FILE"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_13
:cond_3e
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method