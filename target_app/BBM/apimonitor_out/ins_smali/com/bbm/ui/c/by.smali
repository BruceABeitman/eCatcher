.class final Lcom/bbm/ui/c/by;
.super Lcom/bbm/j/u;
.source "ContactsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/bm;
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 15
iget-object v0, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
invoke-static {v0}, Lcom/bbm/ui/c/bm;->c(Lcom/bbm/ui/c/bm;)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v0, v0, v2
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
iget-object v0, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
invoke-static {v0}, Lcom/bbm/ui/c/bm;->d(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/b/q;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/b/q;->f()Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
invoke-static {v1}, Lcom/bbm/ui/c/bm;->c(Lcom/bbm/ui/c/bm;)J
move-result-wide v1
long-to-int v1, v1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/gp;
iget-object v0, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
invoke-static {v2}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;
move-result-object v2
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->W(Ljava/lang/String;)Lcom/bbm/d/ea;
move-result-object v2
iget-object v0, v2, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v1, :cond_43
const/4 v0, 0x0
goto :goto_d
:cond_43
iget-object v0, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
iget-object v3, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v1, v2, Lcom/bbm/d/ea;->d:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v4, :cond_62
const/4 v1, 0x0
:goto_54
if-eqz v1, :cond_129
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V
iget-object v0, p0, Lcom/bbm/ui/c/by;->a:Lcom/bbm/ui/c/bm;
const-wide/16 v1, -0x1
invoke-static {v0, v1, v2}, Lcom/bbm/ui/c/bm;->a(Lcom/bbm/ui/c/bm;J)J
const/4 v0, 0x1
goto :goto_d
:cond_62
iget-object v1, v0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-wide v4, v2, Lcom/bbm/d/ea;->b:J
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/bbm/d/a;->V(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v4
invoke-interface {v4}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_78
const/4 v1, 0x0
goto :goto_54
:cond_78
invoke-interface {v4}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
new-instance v5, Lcom/bbm/ui/slidingmenu/a;
const v6, 0x7f0200eb
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
const v7, 0x7f0e0264
invoke-virtual {v0, v7}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
invoke-direct {v5, v6, v7, v8}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v6, v2, Lcom/bbm/d/ea;->a:Z
if-eqz v6, :cond_112
if-nez v1, :cond_112
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
new-instance v6, Lcom/bbm/ui/activities/wf;
invoke-direct {v6, v0, v2}, Lcom/bbm/ui/activities/wf;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/d/ea;)V
invoke-virtual {v3, v6}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
:goto_a8
iget-object v6, v2, Lcom/bbm/d/ea;->c:Ljava/lang/String;
const/4 v7, 0x1
if-ne v1, v7, :cond_117
const v7, 0x7f0e0551
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v8, v9
invoke-virtual {v0, v7, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_be
new-instance v7, Lcom/bbm/ui/slidingmenu/a;
const/4 v8, 0x0
invoke-direct {v7, v8, v6, v1}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lcom/bbm/ui/slidingmenu/a;
const v8, 0x7f0a0061
const v9, 0x7f020257
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
const v10, 0x7f0e027a
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
iget-object v13, v2, Lcom/bbm/d/ea;->c:Ljava/lang/String;
aput-object v13, v11, v12
invoke-virtual {v0, v10, v11}, Lcom/bbm/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x0
invoke-direct {v6, v8, v9, v10, v11}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v6, Lcom/bbm/ui/slidingmenu/a;
const v8, 0x7f0a005f
const v9, 0x7f02026f
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
const v10, 0x7f0e0278
invoke-virtual {v0, v10}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x0
invoke-direct {v6, v8, v9, v10, v11}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v3, v1, v7, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v1, Lcom/bbm/ui/activities/wg;
invoke-direct {v1, v0, v2, v4}, Lcom/bbm/ui/activities/wg;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/d/ea;Lcom/bbm/j/w;)V
iput-object v1, v3, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
const/4 v1, 0x1
goto/16 :goto_54
:cond_112
const/4 v6, 0x0
invoke-virtual {v5, v6}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
goto :goto_a8
:cond_117
const v7, 0x7f0e0552
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v8, v9
invoke-virtual {v0, v7, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_be
:cond_129
const/4 v0, 0x0
goto/16 :goto_d
.end method