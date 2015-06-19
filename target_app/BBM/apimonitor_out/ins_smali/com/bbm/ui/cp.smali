.class final Lcom/bbm/ui/cp;
.super Landroid/widget/BaseAdapter;
.source "GlympseUserSelector.java"
.implements Landroid/widget/ListAdapter;
.field final synthetic a:Lcom/bbm/ui/GlympseUserSelector;
.method private constructor <init>(Lcom/bbm/ui/GlympseUserSelector;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/GlympseUserSelector;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/cp;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
return-void
.end method
.method public final a(I)Lcom/glympse/android/api/GUser;
.registers 7
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->j(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
:cond_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GUser;
iget-object v3, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/GlympseUserSelectorItem;->getType()I
move-result v3
if-eqz v3, :cond_40
iget-object v3, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/GlympseUserSelectorItem;->getType()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_f
iget-object v3, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/GlympseUserSelectorItem;->getUser()Lcom/glympse/android/api/GUser;
move-result-object v3
if-eq v3, v0, :cond_f
:cond_40
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_44
invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GUser;
return-object v0
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getType()I
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->j(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_16
return v0
:cond_17
iget-object v0, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->j(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
goto :goto_16
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/ui/cp;->a(I)Lcom/glympse/android/api/GUser;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
new-instance v1, Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v0, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->k(Lcom/bbm/ui/GlympseUserSelector;)Landroid/content/Context;
move-result-object v0
invoke-direct {v1, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;-><init>(Landroid/content/Context;)V
move-object v0, v1
check-cast v0, Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {p0, p1}, Lcom/bbm/ui/cp;->a(I)Lcom/glympse/android/api/GUser;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->g(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v4}, Lcom/bbm/ui/GlympseUserSelector;->h(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/activities/xo;
move-result-object v4
iget-object v5, p0, Lcom/bbm/ui/cp;->a:Lcom/bbm/ui/GlympseUserSelector;
invoke-static {v5}, Lcom/bbm/ui/GlympseUserSelector;->i(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/d/es;
move-result-object v5
invoke-static {v2, v3, v4, v5}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Ljava/util/List;Lcom/bbm/ui/activities/xo;Lcom/bbm/d/es;)I
move-result v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setColor(I)V
move-object v0, v1
check-cast v0, Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {p0, p1}, Lcom/bbm/ui/cp;->a(I)Lcom/glympse/android/api/GUser;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(Lcom/glympse/android/api/GUser;)V
move-object v0, v1
check-cast v0, Lcom/bbm/ui/GlympseUserSelectorItem;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setExpanded(Z)V
return-object v1
.end method