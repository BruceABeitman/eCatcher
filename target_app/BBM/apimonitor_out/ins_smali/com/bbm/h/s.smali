.class final Lcom/bbm/h/s;
.super Lcom/bbm/d/b/f;
.source "AddContactsFragment.java"
.field final synthetic a:Lcom/bbm/h/m;
.method constructor <init>(Lcom/bbm/h/m;)V
.registers 2
iput-object p1, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 8
new-instance v1, Lcom/bbm/ui/gp;
iget-object v0, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->b(Lcom/bbm/h/m;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
sget-object v2, Lcom/bbm/h/an;->a:Lcom/bbm/h/an;
invoke-direct {v1, v0, v2}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
new-instance v2, Lcom/bbm/ui/gp;
iget-object v0, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->c(Lcom/bbm/h/m;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
sget-object v3, Lcom/bbm/h/an;->b:Lcom/bbm/h/an;
invoke-direct {v2, v0, v3}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
new-instance v3, Lcom/bbm/ui/gp;
iget-object v0, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->d(Lcom/bbm/h/m;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
sget-object v4, Lcom/bbm/h/an;->c:Lcom/bbm/h/an;
invoke-direct {v3, v0, v4}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
new-instance v4, Lcom/bbm/ui/gp;
iget-object v0, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->e(Lcom/bbm/h/m;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
sget-object v5, Lcom/bbm/h/an;->f:Lcom/bbm/h/an;
invoke-direct {v4, v0, v5}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v0, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_5c
invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_5c
iget-object v0, v2, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_67
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_67
iget-object v0, v3, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_72
invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_72
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->p()Z
move-result v0
if-eqz v0, :cond_131
new-instance v0, Lcom/bbm/i/b;
invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/d;)V
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_93
:goto_93
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_131
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/gp;
iget-object v2, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
sget-object v6, Lcom/bbm/h/ad;->a:[I
iget-object v0, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;
check-cast v0, Lcom/bbm/ui/c/hj;
invoke-virtual {v0}, Lcom/bbm/ui/c/hj;->ordinal()I
move-result v0
aget v0, v6, v0
packed-switch v0, :pswitch_data_13e
goto :goto_93
:pswitch_b6
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_ba
:goto_ba
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e2
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/j;
sget-object v6, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;
invoke-static {v0, v6}, Lcom/bbm/h/al;->a(Lcom/bbm/iceberg/j;Lcom/bbm/h/an;)Lcom/bbm/h/al;
move-result-object v6
iget-object v0, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->a(Lcom/bbm/h/m;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Lcom/bbm/h/al;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ba
invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_ba
:cond_e2
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_93
new-instance v0, Lcom/bbm/ui/gp;
sget-object v2, Lcom/bbm/h/an;->e:Lcom/bbm/h/an;
invoke-direct {v0, v3, v2}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_93
:pswitch_f3
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f7
:cond_f7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_11f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/iceberg/j;
sget-object v6, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;
invoke-static {v0, v6}, Lcom/bbm/h/al;->a(Lcom/bbm/iceberg/j;Lcom/bbm/h/an;)Lcom/bbm/h/al;
move-result-object v6
iget-object v0, p0, Lcom/bbm/h/s;->a:Lcom/bbm/h/m;
invoke-static {v0}, Lcom/bbm/h/m;->a(Lcom/bbm/h/m;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Lcom/bbm/h/al;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f7
invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f7
:cond_11f
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_93
new-instance v0, Lcom/bbm/ui/gp;
sget-object v2, Lcom/bbm/h/an;->d:Lcom/bbm/h/an;
invoke-direct {v0, v3, v2}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_93
:cond_131
iget-object v0, v4, Lcom/bbm/ui/gp;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_13c
invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_13c
return-object v5
nop
:pswitch_data_13e
.packed-switch 0x1
:pswitch_b6
:pswitch_f3
.end packed-switch
.end method