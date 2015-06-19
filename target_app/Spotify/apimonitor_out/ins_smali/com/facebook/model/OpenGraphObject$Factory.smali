.class public final Lcom/facebook/model/OpenGraphObject$Factory;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
.registers 8
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, v2
invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
move-result-object v0
return-object v0
.end method
.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
.registers 10
const/4 v3, 0x1
invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
check-cast v0, Lcom/facebook/model/OpenGraphObject;
if-eqz p1, :cond_c
invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphObject;->setType(Ljava/lang/String;)V
:cond_c
if-eqz p2, :cond_11
invoke-interface {v0, p2}, Lcom/facebook/model/OpenGraphObject;->setTitle(Ljava/lang/String;)V
:cond_11
if-eqz p3, :cond_1f
new-array v1, v3, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Lcom/facebook/model/OpenGraphObject;->setImageUrls(Ljava/util/List;)V
:cond_1f
if-eqz p4, :cond_24
invoke-interface {v0, p4}, Lcom/facebook/model/OpenGraphObject;->setUrl(Ljava/lang/String;)V
:cond_24
if-eqz p5, :cond_29
invoke-interface {v0, p5}, Lcom/facebook/model/OpenGraphObject;->setDescription(Ljava/lang/String;)V
:cond_29
invoke-interface {v0, v3}, Lcom/facebook/model/OpenGraphObject;->setCreateObject(Z)V
invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;
move-result-object v1
invoke-interface {v0, v1}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V
return-object v0
.end method
.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
.registers 2
const-class v0, Lcom/facebook/model/OpenGraphObject;
invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;
move-result-object v0
return-object v0
.end method