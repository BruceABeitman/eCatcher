.class final Lcom/facebook/AuthorizationClient$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/p;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$4;->b:Lcom/facebook/AuthorizationClient;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$4;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/aa;)V
.registers 4
:try_start_0
invoke-static {p1}, Lcom/facebook/Session;->a(Lcom/facebook/aa;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/facebook/AuthorizationClient$4;->a:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:goto_b
:cond_b
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
goto :goto_b
.end method