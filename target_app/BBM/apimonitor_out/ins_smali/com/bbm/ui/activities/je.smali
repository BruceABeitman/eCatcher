.class public final Lcom/bbm/ui/activities/je;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field  a:Z
.field  b:Lcom/bbm/d/gp;
.field final synthetic c:Lcom/bbm/ui/activities/ConversationActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/je;->a:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/je;->b:Lcom/bbm/d/gp;
return-void
.end method
.method protected final b()Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/je;->b:Lcom/bbm/d/gp;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/bbm/ui/activities/je;->b:Lcom/bbm/d/gp;
iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v3, :cond_10
move v0, v1
:goto_f
return v0
:cond_10
iget-object v0, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v3
if-eqz v3, :cond_2d
const-string v0, "Suggestion not sent no conversation participants"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
move v0, v2
goto :goto_f
:cond_2d
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v3, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v3, v4, :cond_45
move v0, v1
goto :goto_f
:cond_45
iget-boolean v3, p0, Lcom/bbm/ui/activities/je;->a:Z
if-eqz v3, :cond_4e
invoke-virtual {p0}, Lcom/bbm/ui/activities/je;->e()V
move v0, v2
goto :goto_f
:cond_4e
iget-object v3, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/je;->b:Lcom/bbm/d/gp;
iget-wide v5, v0, Lcom/bbm/d/gp;->k:D
invoke-static {v3, v4, v5, v6}, Lcom/bbm/util/g/d;->a(Ljava/io/File;Lcom/bbm/d/gp;D)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
const-string v4, ""
new-array v5, v2, [Ljava/lang/String;
iget-object v6, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v6}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v6
aput-object v6, v5, v1
invoke-static {v5}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v3, v4, v0, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
iget-object v0, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/je;->c:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
iput-boolean v2, p0, Lcom/bbm/ui/activities/je;->a:Z
move v0, v2
goto/16 :goto_f
.end method