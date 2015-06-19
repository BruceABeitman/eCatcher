.class final Lcom/bbm/ui/activities/aei;
.super Lcom/bbm/ui/ef;
.source "SelectCategoryActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/SelectCategoryActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/SelectCategoryActivity;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/aei;->b:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/aei;->b:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300ed
invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/aej;
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/aej;-><init>(Lcom/bbm/ui/activities/aei;B)V
const v0, 0x7f0a04d0
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/aej;->a:Landroid/widget/TextView;
const v0, 0x7f0a04d1
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/aej;->b:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
check-cast p1, Lcom/bbm/d/ea;
iget-wide v0, p1, Lcom/bbm/d/ea;->b:J
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 13
const/4 v9, 0x0
const/4 v8, 0x1
const/4 v2, 0x0
check-cast p2, Lcom/bbm/d/ea;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aej;
invoke-static {}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a()Lcom/bbm/d/a;
move-result-object v1
iget-wide v3, p2, Lcom/bbm/d/ea;->b:J
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/bbm/d/a;->V(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
iget-object v3, v0, Lcom/bbm/ui/activities/aej;->a:Landroid/widget/TextView;
iget-object v4, p0, Lcom/bbm/ui/activities/aei;->b:Lcom/bbm/ui/activities/SelectCategoryActivity;
const v5, 0x7f0e064f
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
iget-object v7, p2, Lcom/bbm/d/ea;->c:Ljava/lang/String;
aput-object v7, v6, v2
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v8
invoke-virtual {v4, v5, v6}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/activities/aei;->b:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/SelectCategoryActivity;->b(Lcom/bbm/ui/activities/SelectCategoryActivity;)Ljava/util/ArrayList;
move-result-object v3
if-eqz v3, :cond_84
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_4f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_61
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/eb;
iget-object v1, v1, Lcom/bbm/d/eb;->a:Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4f
:cond_61
iget-object v1, p0, Lcom/bbm/ui/activities/aei;->b:Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectCategoryActivity;->b(Lcom/bbm/ui/activities/SelectCategoryActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-static {v3, v1}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Ljava/util/Collection;Ljava/util/Collection;)Z
move-result v1
:goto_6b
if-eqz v1, :cond_78
iget-object v1, v0, Lcom/bbm/ui/activities/aej;->a:Landroid/widget/TextView;
invoke-virtual {v1, v9, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v0, Lcom/bbm/ui/activities/aej;->b:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_77
return-void
:cond_78
iget-object v1, v0, Lcom/bbm/ui/activities/aej;->a:Landroid/widget/TextView;
invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v0, Lcom/bbm/ui/activities/aej;->b:Landroid/widget/TextView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_77
:cond_84
move v1, v2
goto :goto_6b
.end method