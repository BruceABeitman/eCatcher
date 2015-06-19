.class public Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "AuthDeepLinkMethod.java"
.field private mSessionSecret:Ljava/lang/String;
.field private mUrl:Ljava/lang/String;
.method public constructor <init>(JJLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const/4 v1, 0x0
const-string v4, "http://touch.facebook.com/auth.php"
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mParams:Ljava/util/Map;
const-string v1, "api_key"
const-string v2, "882a8490361da98702bf97a021ddc14d"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mParams:Ljava/util/Map;
const-string v1, "t"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mParams:Ljava/util/Map;
const-string v1, "uid"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mParams:Ljava/util/Map;
const-string v1, "url"
invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p8, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mSessionSecret:Ljava/lang/String;
return-void
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mUrl:Ljava/lang/String;
return-object v0
.end method
.method protected keysInSignatureOrder(Ljava/util/Map;)Ljava/util/List;
.registers 7
const-string v4, "session_key"
const-string v3, "session_key"
invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v3
invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
const-string v3, "session_key"
invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
if-eqz v2, :cond_27
const-string v3, "session_key"
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_27
return-object v1
.end method
.method protected signatureKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mSessionSecret:Ljava/lang/String;
return-object v0
.end method
.method public start()V
.registers 7
const/4 v5, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->addSignature()V
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mBaseUrl:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->buildGETUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mUrl:Ljava/lang/String;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
const/16 v2, 0xc8
const-string v3, "OK"
const/4 v4, 0x0
invoke-interface {v1, p0, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b
:goto_1a
:cond_1a
return-void
:catch_1b
move-exception v1
move-object v0, v1
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
const/4 v2, 0x0
invoke-interface {v1, p0, v2, v5, v0}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_1a
.end method