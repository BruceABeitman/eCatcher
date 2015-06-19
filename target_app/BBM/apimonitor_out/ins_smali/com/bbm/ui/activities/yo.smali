.class public final Lcom/bbm/ui/activities/yo;
.super Lcom/bbm/ui/ef;
.source "NewChannelCategoryActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/yo;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/yo;->b:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300b2
invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/yq;
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/yq;-><init>(Lcom/bbm/ui/activities/yo;B)V
const v0, 0x7f0a0423
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/yq;->a:Landroid/widget/TextView;
const v0, 0x7f0a0424
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/yq;->b:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/d/ef;
iget-object v0, p1, Lcom/bbm/d/ef;->a:Ljava/lang/String;
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 7
const v3, 0x7f0a0025
check-cast p2, Lcom/bbm/d/ef;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/yq;
iget-object v1, v0, Lcom/bbm/ui/activities/yq;->a:Landroid/widget/TextView;
iget-object v2, p2, Lcom/bbm/d/ef;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/j/k;
new-instance v2, Lcom/bbm/ui/activities/yp;
invoke-direct {v2, p0, v0, p2}, Lcom/bbm/ui/activities/yp;-><init>(Lcom/bbm/ui/activities/yo;Lcom/bbm/ui/activities/yq;Lcom/bbm/d/ef;)V
invoke-virtual {v2}, Lcom/bbm/j/k;->c()V
if-eqz v1, :cond_25
invoke-virtual {v1}, Lcom/bbm/j/k;->e()V
:cond_25
invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
return-void
.end method