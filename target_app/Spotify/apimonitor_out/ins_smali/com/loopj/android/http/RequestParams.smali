.class public Lcom/loopj/android/http/RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field protected autoCloseInputStreams:Z
.field protected contentEncoding:Ljava/lang/String;
.field protected final fileParams:Ljava/util/concurrent/ConcurrentHashMap;
.field protected isRepeatable:Z
.field protected final streamParams:Ljava/util/concurrent/ConcurrentHashMap;
.field protected final urlParams:Ljava/util/concurrent/ConcurrentHashMap;
.field protected final urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
.field protected useJsonStreamer:Z
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V
return-void
.end method
.method public constructor <init>(Ljava/util/Map;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
const-string v0, "UTF-8"
iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;
if-eqz p1, :cond_4f
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2d
:cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v1, :cond_2d
if-eqz v0, :cond_2d
iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2d
:cond_4f
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
.registers 12
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v1, 0x0
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
instance-of v0, p2, Ljava/util/Map;
if-eqz v0, :cond_59
check-cast p2, Ljava/util/Map;
new-instance v0, Ljava/util/ArrayList;
invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v3
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_28
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Ljava/lang/Comparable;
if-eqz v3, :cond_28
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_28
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2c
:cond_2c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_d2
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Ljava/lang/String;
if-eqz v4, :cond_2c
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
if-eqz v4, :cond_2c
if-nez p1, :cond_4c
check-cast v0, Ljava/lang/String;
:goto_44
invoke-direct {p0, v0, v4}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_2c
:cond_4c
const-string v5, "%s[%s]"
new-array v6, v8, [Ljava/lang/Object;
aput-object p1, v6, v1
aput-object v0, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_44
:cond_59
instance-of v0, p2, Ljava/util/List;
if-eqz v0, :cond_84
check-cast p2, Ljava/util/List;
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v3
move v0, v1
:goto_64
if-ge v0, v3, :cond_d2
const-string v4, "%s[%d]"
new-array v5, v8, [Ljava/lang/Object;
aput-object p1, v5, v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v7
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-direct {p0, v4, v5}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_64
:cond_84
instance-of v0, p2, [Ljava/lang/Object;
if-eqz v0, :cond_aa
check-cast p2, [Ljava/lang/Object;
array-length v3, p2
move v0, v1
:goto_8c
if-ge v0, v3, :cond_d2
const-string v4, "%s[%d]"
new-array v5, v8, [Ljava/lang/Object;
aput-object p1, v5, v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v7
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
aget-object v5, p2, v0
invoke-direct {p0, v4, v5}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8c
:cond_aa
instance-of v0, p2, Ljava/util/Set;
if-eqz v0, :cond_c6
check-cast p2, Ljava/util/Set;
invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_b4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_d2
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-direct {p0, p1, v1}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_b4
:cond_c6
new-instance v0, Lorg/apache/http/message/BasicNameValuePair;
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d2
return-object v2
.end method
.method private b()Lorg/apache/http/HttpEntity;
.registers 4
:try_start_0
new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
invoke-direct {p0}, Lcom/loopj/android/http/RequestParams;->c()Ljava/util/List;
move-result-object v1
iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
:goto_b
:try_end_b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
const-string v1, "RequestParams"
const-string v2, "createFormEntity failed"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v0, 0x0
goto :goto_b
.end method
.method private c()Ljava/util/List;
.registers 6
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
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
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_30
const/4 v0, 0x0
iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-object v2
.end method
.method protected final a()Ljava/lang/String;
.registers 3
invoke-direct {p0}, Lcom/loopj/android/http/RequestParams;->c()Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;
invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/loopj/android/http/s;)Lorg/apache/http/HttpEntity;
.registers 11
iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z
if-eqz v0, :cond_c7
new-instance v3, Lcom/loopj/android/http/m;
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_3e
:cond_16
const/4 v0, 0x1
:goto_17
invoke-direct {v3, p1, v0}, Lcom/loopj/android/http/m;-><init>(Lcom/loopj/android/http/s;Z)V
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_24
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_24
:cond_3e
const/4 v0, 0x0
goto :goto_17
:cond_40
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_4a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_64
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_4a
:cond_64
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_88
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_6e
:cond_88
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_92
:goto_92
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c5
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/loopj/android/http/r;
iget-object v2, v1, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;
if-eqz v2, :cond_92
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, v1, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;
iget-object v6, v1, Lcom/loopj/android/http/r;->b:Ljava/lang/String;
iget-object v2, v1, Lcom/loopj/android/http/r;->c:Ljava/lang/String;
iget-boolean v7, v1, Lcom/loopj/android/http/r;->d:Z
new-instance v8, Lcom/loopj/android/http/r;
if-nez v2, :cond_c3
const-string v1, "application/octet-stream"
:goto_bc
invoke-direct {v8, v5, v6, v1, v7}, Lcom/loopj/android/http/r;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
invoke-virtual {v3, v0, v8}, Lcom/loopj/android/http/m;->a(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_92
:cond_c3
move-object v1, v2
goto :goto_bc
:cond_c5
move-object v0, v3
:goto_c6
return-object v0
:cond_c7
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_dc
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
move-result v0
if-eqz v0, :cond_dc
invoke-direct {p0}, Lcom/loopj/android/http/RequestParams;->b()Lorg/apache/http/HttpEntity;
move-result-object v0
goto :goto_c6
:cond_dc
new-instance v2, Lcom/loopj/android/http/u;
invoke-direct {v2, p1}, Lcom/loopj/android/http/u;-><init>(Lcom/loopj/android/http/s;)V
iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z
invoke-virtual {v2, v0}, Lcom/loopj/android/http/u;->a(Z)V
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f0
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_10e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;
invoke-virtual {v2, v1, v0, v4}, Lcom/loopj/android/http/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f0
:cond_10e
const/4 v0, 0x0
iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_119
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_133
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/message/BasicNameValuePair;
invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
iget-object v4, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;
invoke-virtual {v2, v3, v0, v4}, Lcom/loopj/android/http/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_119
:cond_133
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_13d
:cond_13d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_163
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/loopj/android/http/r;
iget-object v4, v1, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;
if-eqz v4, :cond_13d
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, v1, Lcom/loopj/android/http/r;->b:Ljava/lang/String;
iget-object v5, v1, Lcom/loopj/android/http/r;->a:Ljava/io/InputStream;
iget-object v1, v1, Lcom/loopj/android/http/r;->c:Ljava/lang/String;
invoke-virtual {v2, v0, v4, v5, v1}, Lcom/loopj/android/http/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
goto :goto_13d
:cond_163
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_16d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/loopj/android/http/q;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, v1, Lcom/loopj/android/http/q;->a:Ljava/io/File;
iget-object v5, v1, Lcom/loopj/android/http/q;->b:Ljava/lang/String;
iget-object v1, v1, Lcom/loopj/android/http/q;->c:Ljava/lang/String;
invoke-virtual {v2, v0, v4, v5, v1}, Lcom/loopj/android/http/u;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_16d
:cond_18f
move-object v0, v2
goto/16 :goto_c6
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-lez v1, :cond_26
const-string v1, "&"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_26
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "="
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_f
:cond_3e
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_48
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-lez v3, :cond_5f
const-string v3, "&"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5f
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "="
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "STREAM"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_48
:cond_73
iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_7d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a8
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-lez v3, :cond_94
const-string v3, "&"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_94
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "="
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "FILE"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_7d
:cond_a8
const/4 v0, 0x0
iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/RequestParams;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b3
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_de
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/message/BasicNameValuePair;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-lez v3, :cond_ca
const-string v3, "&"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_ca
invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v3, "="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_b3
:cond_de
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method