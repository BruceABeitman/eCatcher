.class final Lcom/bbm/ui/activities/pb;
.super Lcom/bbm/d/b/f;
.source "GroupListsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 6
const/4 v0, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/GroupListsActivity;->a:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->b()Z
move-result v3
if-eqz v3, :cond_1a
move-object v0, v1
:goto_19
return-object v0
:cond_1a
iget-object v3, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupListsActivity;->e(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/widget/GridView;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/GridView;->getEmptyView()Landroid/view/View;
move-result-object v3
if-nez v3, :cond_3e
iget-object v3, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupListsActivity;->f(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupListsActivity;->e(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/widget/GridView;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/pb;->a:Lcom/bbm/ui/activities/GroupListsActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/GroupListsActivity;->f(Lcom/bbm/ui/activities/GroupListsActivity;)Landroid/view/View;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V
:cond_3e
:goto_3e
invoke-interface {v2}, Lcom/bbm/j/w;->d()I
move-result v3
if-ge v0, v3, :cond_4e
invoke-interface {v2, v0}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_3e
:cond_4e
move-object v0, v1
goto :goto_19
.end method