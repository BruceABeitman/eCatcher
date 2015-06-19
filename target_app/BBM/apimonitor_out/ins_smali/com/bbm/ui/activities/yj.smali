.class final Lcom/bbm/ui/activities/yj;
.super Ljava/lang/Object;
.source "NewChannelCategoryActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->O()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v2, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v2
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ef;
iget-object v2, v0, Lcom/bbm/d/ef;->c:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_25
move v0, v1
:goto_24
return v0
:cond_25
iget-object v2, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/TextView;
move-result-object v2
iget-object v3, v0, Lcom/bbm/d/ef;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v0, v0, Lcom/bbm/d/ef;->a:Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->P(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
invoke-static {v2, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;
iget-object v0, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
new-instance v1, Lcom/bbm/ui/activities/yr;
iget-object v2, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-virtual {v3}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getApplicationContext()Landroid/content/Context;
iget-object v3, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->k(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/j/w;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/bbm/ui/activities/yr;-><init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/r;)V
invoke-static {v0, v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/ui/activities/yr;)Lcom/bbm/ui/activities/yr;
iget-object v0, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->l(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/activities/yr;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v0, Lcom/bbm/ui/activities/yk;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yk;-><init>(Lcom/bbm/ui/activities/yj;)V
iget-object v1, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->n(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/activities/yj;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->k(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
const/4 v0, 0x1
goto :goto_24
.end method