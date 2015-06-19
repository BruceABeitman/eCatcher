.class  Lcom/facebook/AuthorizationClient$4;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/Request$Callback;
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.field final synthetic val$tokenPermissions:Ljava/util/ArrayList;
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$4;->this$0:Lcom/facebook/AuthorizationClient;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$4;->val$tokenPermissions:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompleted(Lcom/facebook/Response;)V
.registers 7
:try_start_0
const-class v3, Lcom/facebook/model/GraphMultiResult;
invoke-virtual {p1, v3}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v2
check-cast v2, Lcom/facebook/model/GraphMultiResult;
if-eqz v2, :cond_2b
invoke-interface {v2}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;
move-result-object v0
if-eqz v0, :cond_2b
invoke-interface {v0}, Lcom/facebook/model/GraphObjectList;->size()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_2b
const/4 v3, 0x0
invoke-interface {v0, v3}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/model/GraphObject;
iget-object v3, p0, Lcom/facebook/AuthorizationClient$4;->val$tokenPermissions:Ljava/util/ArrayList;
invoke-interface {v1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
move-result-object v4
invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_2b
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c
:goto_2b
return-void
:catch_2c
move-exception v3
goto :goto_2b
.end method