.class public final Lcom/facebook/model/OpenGraphAction$Factory;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createForPost()Lcom/facebook/model/OpenGraphAction;
.registers 2
const-class v0, Lcom/facebook/model/OpenGraphAction;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
move-result-object v0
return-object v0
.end method
.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
.registers 3
invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
check-cast v0, Lcom/facebook/model/OpenGraphAction;
if-eqz p1, :cond_b
invoke-interface {v0, p1}, Lcom/facebook/model/OpenGraphAction;->setType(Ljava/lang/String;)V
:cond_b
return-object v0
.end method
.method public static createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
.registers 2
const-class v0, Lcom/facebook/model/OpenGraphAction;
invoke-static {v0, p0}, Lcom/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/model/OpenGraphAction;
move-result-object v0
return-object v0
.end method