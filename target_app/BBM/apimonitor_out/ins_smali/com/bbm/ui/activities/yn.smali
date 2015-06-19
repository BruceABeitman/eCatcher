.class final Lcom/bbm/ui/activities/yn;
.super Ljava/lang/Object;
.source "NewChannelCategoryActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 7
const/4 v2, -0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->O()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_14
move v0, v3
:goto_13
return v0
:cond_14
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ef;
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v4, v0, Lcom/bbm/d/ef;->a:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/bbm/d/a;->P(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/w;->b()Z
move-result v4
if-eqz v4, :cond_3a
move v0, v3
goto :goto_13
:cond_3a
iget-object v4, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-interface {v1}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_aa
move v1, v2
:goto_49
invoke-static {v4, v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;I)I
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/RelativeLayout;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setActivated(Z)V
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->i(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, v0, Lcom/bbm/d/ef;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v1
if-ltz v1, :cond_a7
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
move-result-object v2
iget-object v0, v0, Lcom/bbm/d/ef;->a:Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->P(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;
iget-object v0, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v1
invoke-static {v0, v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->j(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->m(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
:cond_a7
const/4 v0, 0x1
goto/16 :goto_13
:cond_aa
iget-object v1, p0, Lcom/bbm/ui/activities/yn;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v5, "subcategory"
invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
goto :goto_49
.end method