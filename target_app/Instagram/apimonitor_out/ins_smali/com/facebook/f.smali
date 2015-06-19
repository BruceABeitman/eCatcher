.class final Lcom/facebook/f;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/bg;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/facebook/c;
.method constructor <init>(Lcom/facebook/c;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/f;->b:Lcom/facebook/c;
iput-object p2, p0, Lcom/facebook/f;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/bn;)V
.registers 4
:try_start_0
invoke-virtual {p1}, Lcom/facebook/bn;->c()Lcom/facebook/h/b;
move-result-object v0
check-cast v0, Lcom/facebook/h/h;
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/facebook/f;->a:Ljava/util/ArrayList;
invoke-interface {v0}, Lcom/facebook/h/h;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_11
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12
:goto_11
:cond_11
return-void
:catch_12
move-exception v0
goto :goto_11
.end method