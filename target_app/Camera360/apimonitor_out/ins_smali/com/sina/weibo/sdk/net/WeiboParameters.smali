.class public Lcom/sina/weibo/sdk/net/WeiboParameters;
.super Ljava/lang/Object;
.source "WeiboParameters.java"
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"
.field private mParams:Ljava/util/LinkedHashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
return-void
.end method
.method public add(Ljava/lang/String;I)V
.registers 5
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public add(Ljava/lang/String;J)V
.registers 6
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public add(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public containsKey(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public containsValue(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public encodeUrl()Ljava/lang/String;
.registers 10
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x1
iget-object v6, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_10
:goto_10
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_1b
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
:cond_1b
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
if-eqz v1, :cond_6b
const/4 v1, 0x0
:goto_24
iget-object v7, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
instance-of v7, v5, Ljava/lang/String;
if-eqz v7, :cond_10
move-object v3, v5
check-cast v3, Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_60
:try_start_37
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "UTF-8"
invoke-static {v2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, "UTF-8"
invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_60
:goto_60
:try_end_60
.catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_60} :catch_72
const-string/jumbo v7, "encodeUrl"
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
:cond_6b
const-string/jumbo v7, "&"
invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_24
:catch_72
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_60
.end method
.method public get(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getParams()Ljava/util/LinkedHashMap;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
return-object v0
.end method
.method public hasBinaryData()Z
.registers 6
iget-object v3, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_12
const/4 v3, 0x0
:goto_11
return v3
:cond_12
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v4, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
instance-of v4, v2, Ljava/io/ByteArrayOutputStream;
if-nez v4, :cond_26
instance-of v4, v2, Landroid/graphics/Bitmap;
if-eqz v4, :cond_a
:cond_26
const/4 v3, 0x1
goto :goto_11
.end method
.method public keySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public put(Ljava/lang/String;I)V
.registers 5
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public put(Ljava/lang/String;J)V
.registers 6
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public put(Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public put(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public remove(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
iget-object v1, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_18
return-void
.end method
.method public setParams(Ljava/util/LinkedHashMap;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
return-void
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/sina/weibo/sdk/net/WeiboParameters;->mParams:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
return v0
.end method