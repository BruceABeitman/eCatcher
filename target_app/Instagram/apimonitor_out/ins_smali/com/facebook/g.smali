.class final Lcom/facebook/g;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/bg;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/facebook/c;
.method constructor <init>(Lcom/facebook/c;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/g;->b:Lcom/facebook/c;
iput-object p2, p0, Lcom/facebook/g;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/facebook/bn;)V
.registers 5
:try_start_0
invoke-virtual {p1}, Lcom/facebook/bn;->c()Lcom/facebook/h/b;
move-result-object v0
check-cast v0, Lcom/facebook/h/a;
if-eqz v0, :cond_29
invoke-interface {v0}, Lcom/facebook/h/a;->a()Lcom/facebook/h/g;
move-result-object v0
if-eqz v0, :cond_29
invoke-interface {v0}, Lcom/facebook/h/g;->size()I
move-result v1
const/4 v2, 0x1
if-ne v1, v2, :cond_29
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/facebook/h/g;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/h/b;
iget-object v1, p0, Lcom/facebook/g;->a:Ljava/util/ArrayList;
invoke-interface {v0}, Lcom/facebook/h/b;->c()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_29
:goto_29
:try_end_29
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a
return-void
:catch_2a
move-exception v0
goto :goto_29
.end method