.class final Lcom/bbm/ui/c/ft;
.super Lcom/bbm/d/b/f;
.source "SlideMenuFragment.java"
.field  a:Ljava/util/List;
.field final synthetic b:Lcom/bbm/ui/c/fm;
.method public constructor <init>(Lcom/bbm/ui/c/fm;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/ft;->b:Lcom/bbm/ui/c/fm;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/c/ft;->a:Ljava/util/List;
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/c/ft;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/slidingmenu/a;
invoke-static {v0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-boolean v3, v0, Lcom/bbm/ui/slidingmenu/a;->d:Z
if-eqz v3, :cond_b
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_22
return-object v1
.end method