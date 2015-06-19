.class public final Lcom/instagram/ui/menu/r;
.super Lcom/instagram/ui/d/a;
.source "SimplePreferenceAdapter.java"
.field private a:Z
.field private b:Z
.field private c:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
return-void
.end method
.method private a(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/d;
if-nez v0, :cond_10
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/i;
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v2, 0x0
invoke-virtual {p0, p2}, Lcom/instagram/ui/menu/r;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_44
invoke-static {p1}, Lcom/instagram/ui/menu/p;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
iget-boolean v1, p0, Lcom/instagram/ui/menu/r;->a:Z
if-eqz v1, :cond_13
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V
:cond_13
:goto_13
return-object v0
:pswitch_14
invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_19
invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/at;->menu_separator_height:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->b(Landroid/view/View;I)V
goto :goto_13
:pswitch_2b
invoke-static {p1, p3}, Lcom/instagram/ui/menu/y;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_30
invoke-static {p1, p3}, Lcom/instagram/ui/menu/u;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_35
invoke-static {p1}, Lcom/instagram/ui/menu/l;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_3a
invoke-static {p1, p3}, Lcom/instagram/ui/menu/j;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_3f
invoke-static {p1}, Lcom/instagram/ui/menu/s;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_13
:pswitch_data_44
.packed-switch 0x1
:pswitch_14
:pswitch_2b
:pswitch_19
:pswitch_30
:pswitch_35
:pswitch_3a
:pswitch_3f
.end packed-switch
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 9
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_70
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/f;
iget-boolean v3, p0, Lcom/instagram/ui/menu/r;->b:Z
if-eqz v3, :cond_6b
if-nez p3, :cond_6b
move v3, v2
:goto_16
iget-boolean v4, p0, Lcom/instagram/ui/menu/r;->c:Z
if-eqz v4, :cond_6d
invoke-virtual {p0}, Lcom/instagram/ui/menu/r;->getCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
if-ne p3, v4, :cond_6d
:goto_22
invoke-static {p1, v0, v3, v2}, Lcom/instagram/ui/menu/p;->a(Landroid/view/View;Lcom/instagram/ui/menu/f;ZZ)V
:goto_25
:pswitch_25
return-void
:pswitch_26
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/d;
if-eqz p3, :cond_2f
move v1, v2
:cond_2f
invoke-static {p1, v0, v1, v2}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V
goto :goto_25
:pswitch_33
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/z;
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/ui/menu/ab;
invoke-static {v0, v1}, Lcom/instagram/ui/menu/y;->a(Lcom/instagram/ui/menu/z;Lcom/instagram/ui/menu/ab;)V
goto :goto_25
:pswitch_43
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/aa;
invoke-static {p1, v0}, Lcom/instagram/ui/menu/u;->a(Landroid/view/View;Lcom/instagram/ui/menu/aa;)V
goto :goto_25
:pswitch_4d
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/b;
invoke-static {p1, v0}, Lcom/instagram/ui/menu/l;->a(Landroid/view/View;Lcom/instagram/ui/menu/b;)V
goto :goto_25
:pswitch_57
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/a;
invoke-static {p1, v0}, Lcom/instagram/ui/menu/j;->a(Landroid/view/View;Lcom/instagram/ui/menu/a;)V
goto :goto_25
:pswitch_61
invoke-virtual {p0, p3}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/g;
invoke-static {p1, p2, v0}, Lcom/instagram/ui/menu/s;->a(Landroid/view/View;Landroid/content/Context;Lcom/instagram/ui/menu/g;)V
goto :goto_25
:cond_6b
move v3, v1
goto :goto_16
:cond_6d
move v2, v1
goto :goto_22
nop
:pswitch_data_70
.packed-switch 0x1
:pswitch_26
:pswitch_33
:pswitch_25
:pswitch_43
:pswitch_4d
:pswitch_57
:pswitch_61
.end packed-switch
.end method
.method public final a(Ljava/util/Collection;)V
.registers 3
iget-object v0, p0, Lcom/instagram/ui/menu/r;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/instagram/ui/menu/r;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lcom/instagram/ui/menu/r;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/ui/menu/r;->b:Z
return-void
.end method
.method public final a([Ljava/lang/CharSequence;)V
.registers 7
array-length v1, p1
const/4 v0, 0x0
:goto_2
if-ge v0, v1, :cond_13
aget-object v2, p1, v0
iget-object v3, p0, Lcom/instagram/ui/menu/r;->k:Ljava/util/List;
new-instance v4, Lcom/instagram/ui/menu/f;
invoke-direct {v4, v2}, Lcom/instagram/ui/menu/f;-><init>(Ljava/lang/CharSequence;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_13
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/menu/r;->a:Z
invoke-virtual {p0}, Lcom/instagram/ui/menu/r;->notifyDataSetChanged()V
return-void
.end method
.method public final areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/ui/menu/r;->c:Z
return-void
.end method
.method public final getItemViewType(I)I
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/d;
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/i;
if-eqz v0, :cond_14
const/4 v0, 0x3
goto :goto_9
:cond_14
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/ab;
if-eqz v0, :cond_1e
const/4 v0, 0x2
goto :goto_9
:cond_1e
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/aa;
if-eqz v0, :cond_28
const/4 v0, 0x4
goto :goto_9
:cond_28
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/b;
if-eqz v0, :cond_32
const/4 v0, 0x5
goto :goto_9
:cond_32
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/a;
if-eqz v0, :cond_3c
const/4 v0, 0x6
goto :goto_9
:cond_3c
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/g;
if-eqz v0, :cond_46
const/4 v0, 0x7
goto :goto_9
:cond_46
const/4 v0, 0x0
goto :goto_9
.end method
.method public final getViewTypeCount()I
.registers 2
const/16 v0, 0x8
return v0
.end method
.method public final isEnabled(I)Z
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/ui/menu/r;->a(I)Z
move-result v0
if-nez v0, :cond_10
invoke-virtual {p0, p1}, Lcom/instagram/ui/menu/r;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/ui/menu/ab;
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method