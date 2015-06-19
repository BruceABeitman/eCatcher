.class final Lcom/bbm/ui/activities/zx;
.super Lcom/bbm/d/b/f;
.source "OpenInBbmActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/OpenInBbmActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/zx;->a:Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->k()Lcom/bbm/j/w;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->l()Lcom/bbm/j/w;
move-result-object v3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v2}, Lcom/bbm/j/w;->b()Z
move-result v1
if-nez v1, :cond_36
invoke-interface {v3}, Lcom/bbm/j/w;->b()Z
move-result v1
if-nez v1, :cond_36
new-instance v1, Ljava/util/ArrayList;
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
move-object v0, v1
:cond_36
return-object v0
.end method