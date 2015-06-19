.class  Lcom/umeng/newxp/view/z;
.super Lcom/umeng/newxp/view/d;
.source "EncapsulatedList.java"
.field final synthetic a:Lcom/umeng/newxp/view/w;
.method constructor <init>(Lcom/umeng/newxp/view/w;Landroid/widget/ListView;Landroid/content/Context;ILcom/umeng/newxp/view/ExHeader;Ljava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 17
iput-object p1, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
move-object v0, p0
move-object v1, p2
move-object v2, p3
move v3, p4
move-object v4, p5
move-object v5, p6
move v6, p7
move-object/from16 v7, p8
invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/d;-><init>(Landroid/widget/ListView;Landroid/content/Context;ILcom/umeng/newxp/view/ExHeader;Ljava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V
return-void
.end method
.method public a(I)V
.registers 5
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/umeng/newxp/view/d;->a(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I
move-result v0
iget-object v1, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v1
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->g(Lcom/umeng/newxp/view/w;)Z
move-result v1
if-nez v1, :cond_6b
if-gt p1, v0, :cond_6b
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->c(Lcom/umeng/newxp/view/w;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->h(Lcom/umeng/newxp/view/w;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/a/e;->g(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
invoke-virtual {v0}, Lcom/umeng/newxp/view/w;->a()V
iget-object v0, p0, Lcom/umeng/newxp/view/z;->a:Lcom/umeng/newxp/view/w;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;Z)V
:cond_6b
return-void
.end method