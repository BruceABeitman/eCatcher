.class final Lcom/bbm/ui/c/ea;
.super Lcom/bbm/d/b/q;
.source "MyChannelsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ea;->a:Lcom/bbm/ui/c/du;
invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 8
new-instance v1, Lcom/bbm/ui/gp;
const-wide/16 v2, 0x0
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-direct {v1, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V
new-instance v2, Lcom/bbm/ui/gp;
const-wide/16 v3, 0x1
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-direct {v2, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->C()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_35
:goto_35
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fe;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v5
iget-object v5, v5, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/fe;->a:Ljava/lang/String;
invoke-virtual {v5, v0}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v5, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v5, v6, :cond_35
iget-boolean v5, v0, Lcom/bbm/d/ec;->t:Z
if-eqz v5, :cond_5d
iget-object v5, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_35
:cond_5d
iget-object v5, v2, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_35
:cond_63
iget-object v0, v2, Lcom/bbm/ui/gp;->a:Ljava/util/List;
iget-object v2, p0, Lcom/bbm/ui/c/ea;->a:Lcom/bbm/ui/c/du;
invoke-static {v2}, Lcom/bbm/ui/c/du;->a(Lcom/bbm/ui/c/du;)Ljava/util/Comparator;
move-result-object v2
invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
iget-object v0, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;
iget-object v1, p0, Lcom/bbm/ui/c/ea;->a:Lcom/bbm/ui/c/du;
invoke-static {v1}, Lcom/bbm/ui/c/du;->a(Lcom/bbm/ui/c/du;)Ljava/util/Comparator;
move-result-object v1
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-object v3
.end method
.method public final b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method