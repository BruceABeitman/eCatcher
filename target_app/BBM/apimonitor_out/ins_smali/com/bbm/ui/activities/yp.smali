.class final Lcom/bbm/ui/activities/yp;
.super Lcom/bbm/j/k;
.source "NewChannelCategoryActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/yq;
.field final synthetic b:Lcom/bbm/d/ef;
.field final synthetic c:Lcom/bbm/ui/activities/yo;
.method constructor <init>(Lcom/bbm/ui/activities/yo;Lcom/bbm/ui/activities/yq;Lcom/bbm/d/ef;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/yp;->c:Lcom/bbm/ui/activities/yo;
iput-object p2, p0, Lcom/bbm/ui/activities/yp;->a:Lcom/bbm/ui/activities/yq;
iput-object p3, p0, Lcom/bbm/ui/activities/yp;->b:Lcom/bbm/d/ef;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/yp;->c:Lcom/bbm/ui/activities/yo;
iget-object v0, v0, Lcom/bbm/ui/activities/yo;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v0
if-ltz v0, :cond_44
iget-object v0, p0, Lcom/bbm/ui/activities/yp;->c:Lcom/bbm/ui/activities/yo;
iget-object v0, v0, Lcom/bbm/ui/activities/yo;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->h(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->O()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/bbm/ui/activities/yp;->c:Lcom/bbm/ui/activities/yo;
iget-object v1, v1, Lcom/bbm/ui/activities/yo;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/ef;
iget-object v1, p0, Lcom/bbm/ui/activities/yp;->a:Lcom/bbm/ui/activities/yq;
iget-object v1, v1, Lcom/bbm/ui/activities/yq;->b:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/bbm/ui/activities/yp;->c:Lcom/bbm/ui/activities/yo;
iget-object v2, v2, Lcom/bbm/ui/activities/yo;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->g(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)I
move-result v2
if-ltz v2, :cond_45
iget-object v2, p0, Lcom/bbm/ui/activities/yp;->b:Lcom/bbm/d/ef;
invoke-virtual {v2, v0}, Lcom/bbm/d/ef;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
const/4 v0, 0x0
:goto_41
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_44
return-void
:cond_45
const/4 v0, 0x4
goto :goto_41
.end method