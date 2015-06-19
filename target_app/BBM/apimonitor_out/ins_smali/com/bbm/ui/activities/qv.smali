.class final Lcom/bbm/ui/activities/qv;
.super Lcom/bbm/d/b/f;
.source "GroupPictureActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qv;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 11
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/qv;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->e(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v3
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v3}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_1b
move-object v0, v2
:goto_1a
return-object v0
:cond_1b
iget-object v0, p0, Lcom/bbm/ui/activities/qv;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->g(Lcom/bbm/ui/activities/GroupPictureActivity;)I
move-result v0
if-lez v0, :cond_ae
new-instance v4, Ljava/util/TreeSet;
new-instance v0, Lcom/bbm/ui/activities/qw;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qw;-><init>(Lcom/bbm/ui/activities/qv;)V
invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
const/4 v1, 0x0
invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_38
:goto_38
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/af;
iget-wide v6, v0, Lcom/bbm/g/af;->h:J
const-wide/16 v8, 0x0
cmp-long v6, v6, v8
if-lez v6, :cond_38
invoke-virtual {v4}, Ljava/util/TreeSet;->size()I
move-result v6
iget-object v7, p0, Lcom/bbm/ui/activities/qv;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {v7}, Lcom/bbm/ui/activities/GroupPictureActivity;->g(Lcom/bbm/ui/activities/GroupPictureActivity;)I
move-result v7
if-lt v6, v7, :cond_60
iget-wide v6, v0, Lcom/bbm/g/af;->h:J
iget-wide v8, v1, Lcom/bbm/g/af;->h:J
cmp-long v6, v6, v8
if-lez v6, :cond_f1
:cond_60
invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
invoke-virtual {v4}, Ljava/util/TreeSet;->size()I
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/qv;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->g(Lcom/bbm/ui/activities/GroupPictureActivity;)I
move-result v1
if-le v0, v1, :cond_76
invoke-virtual {v4}, Ljava/util/TreeSet;->last()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
:cond_76
invoke-virtual {v4}, Ljava/util/TreeSet;->last()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/af;
:goto_7c
move-object v1, v0
goto :goto_38
:cond_7e
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_87
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/af;
new-instance v5, Lcom/bbm/ui/activities/rg;
sget-object v6, Lcom/bbm/ui/activities/rf;->a:Lcom/bbm/ui/activities/rf;
invoke-direct {v5, v0, v6}, Lcom/bbm/ui/activities/rg;-><init>(Lcom/bbm/g/af;Lcom/bbm/ui/activities/rf;)V
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_87
:cond_9e
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_ae
new-instance v0, Lcom/bbm/ui/gp;
sget-object v4, Lcom/bbm/ui/activities/rf;->a:Lcom/bbm/ui/activities/rf;
invoke-direct {v0, v1, v4}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ae
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
new-instance v0, Lcom/bbm/ui/activities/qx;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qx;-><init>(Lcom/bbm/ui/activities/qv;)V
invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_cd
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e4
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/af;
new-instance v4, Lcom/bbm/ui/activities/rg;
sget-object v5, Lcom/bbm/ui/activities/rf;->b:Lcom/bbm/ui/activities/rf;
invoke-direct {v4, v0, v5}, Lcom/bbm/ui/activities/rg;-><init>(Lcom/bbm/g/af;Lcom/bbm/ui/activities/rf;)V
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_cd
:cond_e4
new-instance v0, Lcom/bbm/ui/gp;
sget-object v1, Lcom/bbm/ui/activities/rf;->b:Lcom/bbm/ui/activities/rf;
invoke-direct {v0, v3, v1}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-object v0, v2
goto/16 :goto_1a
:cond_f1
move-object v0, v1
goto :goto_7c
.end method