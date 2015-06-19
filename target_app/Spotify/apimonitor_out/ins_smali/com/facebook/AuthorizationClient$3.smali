.class final Lcom/facebook/AuthorizationClient$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/p;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$3;->b:Lcom/facebook/AuthorizationClient;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$3;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/aa;)V
.registers 4
:try_start_0
const-class v0, Lcom/facebook/model/GraphUser;
invoke-virtual {p1, v0}, Lcom/facebook/aa;->a(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
check-cast v0, Lcom/facebook/model/GraphUser;
if-eqz v0, :cond_13
iget-object v1, p0, Lcom/facebook/AuthorizationClient$3;->a:Ljava/util/ArrayList;
invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_13
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
goto :goto_13
.end method