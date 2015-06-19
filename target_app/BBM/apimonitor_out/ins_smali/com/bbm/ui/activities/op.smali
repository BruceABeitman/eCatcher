.class final Lcom/bbm/ui/activities/op;
.super Lcom/bbm/ui/cq;
.source "GroupListItemsActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/GroupListItemsActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/GroupListItemsActivity;)V
.registers 6
iput-object p1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
new-instance v0, Lcom/bbm/ui/activities/or;
new-instance v1, Lcom/bbm/ui/activities/oq;
iget-object v2, p1, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
invoke-static {p1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->h(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v2
invoke-direct {v1, v2, p1}, Lcom/bbm/ui/activities/oq;-><init>(Lcom/bbm/j/r;Lcom/bbm/ui/activities/GroupListItemsActivity;)V
invoke-direct {v0, v1, p1}, Lcom/bbm/ui/activities/or;-><init>(Lcom/bbm/j/r;Lcom/bbm/ui/activities/GroupListItemsActivity;)V
invoke-direct {p0, v0}, Lcom/bbm/ui/cq;-><init>(Lcom/bbm/j/r;)V
invoke-static {p1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->k(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/widget/ListView;
move-result-object v1
iget-object v0, p1, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
invoke-static {p1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->b(Lcom/bbm/ui/activities/GroupListItemsActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->h(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->d()I
move-result v0
if-lez v0, :cond_38
const v0, 0x7f0300bc
invoke-virtual {p1, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
:goto_34
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
return-void
:cond_38
const v0, 0x7f0a01a8
invoke-virtual {p1, v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
goto :goto_34
.end method
.method protected final synthetic a(Ljava/lang/Object;)I
.registers 10
const v5, 0x7f0e0532
const v4, 0x7f0e0528
const/4 v2, 0x2
const/4 v0, 0x0
const/4 v1, 0x1
check-cast p1, Lcom/bbm/g/y;
iget-object v3, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v3
if-nez v3, :cond_32
iget-wide v3, p1, Lcom/bbm/g/y;->h:J
const-wide/16 v5, 0x0
cmp-long v3, v3, v5
if-lez v3, :cond_30
iget-wide v2, p1, Lcom/bbm/g/y;->h:J
invoke-static {}, Lcom/bbm/util/bd;->a()J
move-result-wide v4
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
cmp-long v2, v2, v4
if-gez v2, :cond_2c
move v2, v1
:goto_29
if-eqz v2, :cond_2e
:goto_2b
:cond_2b
return v0
:cond_2c
move v2, v0
goto :goto_29
:cond_2e
move v0, v1
goto :goto_2b
:cond_30
move v0, v2
goto :goto_2b
:cond_32
iget-object v3, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v3
if-ne v3, v1, :cond_50
iget-object v3, p1, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;
sget-object v4, Lcom/bbm/g/aa;->a:Lcom/bbm/g/aa;
if-eq v3, v4, :cond_2b
iget-object v0, p1, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;
sget-object v3, Lcom/bbm/g/aa;->b:Lcom/bbm/g/aa;
if-ne v0, v3, :cond_48
move v0, v1
goto :goto_2b
:cond_48
iget-object v0, p1, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;
sget-object v3, Lcom/bbm/g/aa;->c:Lcom/bbm/g/aa;
if-eq v0, v3, :cond_124
move v0, v1
goto :goto_2b
:cond_50
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
if-ne v0, v2, :cond_98
iget-object v0, p1, Lcom/bbm/g/y;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_84
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
goto :goto_2b
:cond_84
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;
iget-object v1, p1, Lcom/bbm/g/y;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;
iget-object v1, p1, Lcom/bbm/g/y;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
goto :goto_2b
:cond_98
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_124
iget-object v0, p1, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_d6
iget-object v0, p1, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_d6
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
goto/16 :goto_2b
:cond_d6
iget-object v0, p1, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_fb
iget-object v0, p1, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_fb
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
iget-object v1, p1, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
iget-object v1, p1, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
goto/16 :goto_2b
:cond_fb
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v2, p1, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v2, p1, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v0
goto/16 :goto_2b
:cond_124
move v0, v2
goto/16 :goto_2b
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->l(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300cb
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected final a(Lcom/bbm/ui/ListHeaderView;)Lcom/bbm/ui/ListHeaderView;
.registers 3
if-nez p1, :cond_12
new-instance p1, Lcom/bbm/ui/ListHeaderView;
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->l(Lcom/bbm/ui/activities/GroupListItemsActivity;)Landroid/content/Context;
move-result-object v0
invoke-direct {p1, v0}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V
const/16 v0, 0x8
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabelViewVisibility(I)V
:cond_12
return-object p1
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 15
check-cast p2, Lcom/bbm/g/y;
const v0, 0x7f0a0475
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iget-object v1, p2, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;
sget-object v2, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;
if-ne v1, v2, :cond_f5
const/4 v1, 0x1
:goto_12
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
new-instance v1, Lcom/bbm/ui/activities/os;
invoke-direct {v1, p0, v0, p2}, Lcom/bbm/ui/activities/os;-><init>(Lcom/bbm/ui/activities/op;Landroid/widget/CheckBox;Lcom/bbm/g/y;)V
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0476
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iget-object v2, p2, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;
sget-object v3, Lcom/bbm/g/aa;->a:Lcom/bbm/g/aa;
if-ne v2, v3, :cond_fd
iget-boolean v2, p2, Lcom/bbm/g/y;->i:Z
if-eqz v2, :cond_f8
const v2, 0x7f0201df
:goto_33
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_3a
:cond_3a
const v1, 0x7f0a0477
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/bbm/ui/InlineImageTextView;
const/4 v3, 0x0
iget-boolean v2, p2, Lcom/bbm/g/y;->j:Z
if-eqz v2, :cond_124
const/4 v2, 0x1
:goto_49
invoke-virtual {v1, v3, v2}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v2, p2, Lcom/bbm/g/y;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
const v2, 0x7f0a0479
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/bbm/ui/InlineImageTextView;
const/4 v4, 0x0
iget-boolean v3, p2, Lcom/bbm/g/y;->j:Z
if-eqz v3, :cond_127
const/4 v3, 0x1
:goto_60
invoke-virtual {v2, v4, v3}, Lcom/bbm/ui/InlineImageTextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v3, p2, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-eqz v3, :cond_131
iget-object v3, p2, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-eqz v3, :cond_12a
iget-object v3, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
const v4, 0x7f0e040a
invoke-virtual {v3, v4}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_7f
const v3, 0x7f0a0478
invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
const/4 v5, 0x0
iget-boolean v4, p2, Lcom/bbm/g/y;->j:Z
if-eqz v4, :cond_142
const/4 v4, 0x1
:goto_8e
invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
iget-wide v4, p2, Lcom/bbm/g/y;->h:J
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-lez v4, :cond_145
iget-object v4, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
const v5, 0x7f0e0408
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
iget-wide v8, p2, Lcom/bbm/g/y;->h:J
const-wide/16 v10, 0x3e8
mul-long/2addr v8, v10
const/4 v10, 0x0
const v11, 0x82012
invoke-static {v10, v8, v9, v11}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
invoke-virtual {v4, v5, v6}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
:goto_bc
iget-boolean v4, p2, Lcom/bbm/g/y;->i:Z
if-eqz v4, :cond_14c
const/4 v4, 0x0
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v4, 0x7f090027
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090027
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v2, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090027
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V
:goto_f4
return-void
:cond_f5
const/4 v1, 0x0
goto/16 :goto_12
:cond_f8
const v2, 0x7f0201de
goto/16 :goto_33
:cond_fd
iget-object v2, p2, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;
sget-object v3, Lcom/bbm/g/aa;->b:Lcom/bbm/g/aa;
if-ne v2, v3, :cond_10a
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_3a
:cond_10a
iget-object v2, p2, Lcom/bbm/g/y;->q:Lcom/bbm/g/aa;
sget-object v3, Lcom/bbm/g/aa;->c:Lcom/bbm/g/aa;
if-ne v2, v3, :cond_3a
iget-boolean v2, p2, Lcom/bbm/g/y;->i:Z
if-eqz v2, :cond_120
const v2, 0x7f020311
:goto_117
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_3a
:cond_120
const v2, 0x7f020310
goto :goto_117
:cond_124
const/4 v2, 0x0
goto/16 :goto_49
:cond_127
const/4 v3, 0x0
goto/16 :goto_60
:cond_12a
iget-object v3, p2, Lcom/bbm/g/y;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_7f
:cond_131
iget-object v3, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v3, v3, Lcom/bbm/ui/activities/GroupListItemsActivity;->a:Lcom/bbm/g/am;
iget-object v4, p2, Lcom/bbm/g/y;->a:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_7f
:cond_142
const/4 v4, 0x0
goto/16 :goto_8e
:cond_145
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_bc
:cond_14c
const/4 v4, 0x1
invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v4, 0x7f09011f
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f09011d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v2, v0}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f09011c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V
goto/16 :goto_f4
.end method
.method protected final a(Lcom/bbm/ui/ListHeaderView;ILjava/util/List;)V
.registers 9
const v4, 0x7f0e040b
const v3, 0x7f0e0409
const v2, 0x7f0e0407
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
if-nez v0, :cond_33
packed-switch p2, :pswitch_data_f4
:goto_14
return-void
:pswitch_15
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:pswitch_1f
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:pswitch_29
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:cond_33
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_67
packed-switch p2, :pswitch_data_fe
goto :goto_14
:pswitch_40
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
const v1, 0x7f0e0468
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:pswitch_4d
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
const v1, 0x7f0e0531
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:pswitch_5a
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
const v1, 0x7f0e04d9
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:cond_67
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_9a
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_8b
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0528
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_14
:cond_8b
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->b:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto/16 :goto_14
:cond_9a
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->h(Lcom/bbm/ui/activities/GroupListItemsActivity;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_ce
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_bf
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0532
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto/16 :goto_14
:cond_bf
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/GroupListItemsActivity;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto/16 :goto_14
:cond_ce
packed-switch p2, :pswitch_data_108
goto/16 :goto_14
:pswitch_d3
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto/16 :goto_14
:pswitch_de
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto/16 :goto_14
:pswitch_e9
iget-object v0, p0, Lcom/bbm/ui/activities/op;->b:Lcom/bbm/ui/activities/GroupListItemsActivity;
invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/GroupListItemsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto/16 :goto_14
:pswitch_data_fe
.packed-switch 0x0
:pswitch_40
:pswitch_4d
:pswitch_5a
.end packed-switch
:pswitch_data_108
.packed-switch 0x0
:pswitch_d3
:pswitch_de
:pswitch_e9
.end packed-switch
:pswitch_data_f4
.packed-switch 0x0
:pswitch_15
:pswitch_1f
:pswitch_29
.end packed-switch
.end method