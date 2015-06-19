.class public final Lcom/instagram/android/a/n;
.super Lcom/instagram/ui/d/a;
.source "ReviewPhotoMapAdapter.java"
.field private final a:Landroid/support/v4/app/s;
.method public constructor <init>(Landroid/support/v4/app/k;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
invoke-virtual {p1}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/a/n;->a:Landroid/support/v4/app/s;
return-void
.end method
.method private static a(ILjava/util/List;)Ljava/util/ArrayList;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
mul-int/lit8 v2, p0, 0x4
const/4 v0, 0x0
:goto_8
const/4 v3, 0x4
if-ge v0, v3, :cond_1d
add-int v3, v2, v0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
if-ge v3, v4, :cond_1a
invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1d
return-object v1
.end method
.method private a(I)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/a/n;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-eq v0, p1, :cond_13
add-int/lit8 v0, p1, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/android/a/n;->getItemViewType(I)I
move-result v0
const/4 v1, 0x3
if-eq v0, v1, :cond_15
:cond_13
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-virtual {p0, p2}, Lcom/instagram/android/a/n;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_1e
const/4 v0, 0x0
:goto_8
return-object v0
:pswitch_9
invoke-static {p1}, Lcom/instagram/android/a/b/ag;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_8
:pswitch_e
invoke-static {p1}, Lcom/instagram/android/a/b/am;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_8
:pswitch_13
invoke-static {p1}, Lcom/instagram/android/a/b/aj;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
goto :goto_8
:pswitch_18
const/4 v0, 0x4
invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;I)Landroid/view/View;
move-result-object v0
goto :goto_8
:pswitch_data_1e
.packed-switch 0x0
:pswitch_9
:pswitch_e
:pswitch_13
:pswitch_18
.end packed-switch
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 7
invoke-virtual {p0, p3}, Lcom/instagram/android/a/n;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_46
:goto_7
return-void
:pswitch_8
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/b/ai;
invoke-static {p2, v0}, Lcom/instagram/android/a/b/ag;->a(Landroid/content/Context;Lcom/instagram/android/a/b/ai;)V
goto :goto_7
:pswitch_12
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/b/ao;
invoke-virtual {p0, p3}, Lcom/instagram/android/a/n;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/android/a/p;
invoke-static {p2, v0, v1}, Lcom/instagram/android/a/b/am;->a(Landroid/content/Context;Lcom/instagram/android/a/b/ao;Lcom/instagram/android/a/p;)V
goto :goto_7
:pswitch_22
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/a/b/al;
invoke-virtual {p0, p3}, Lcom/instagram/android/a/n;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/android/a/q;
invoke-static {p2, v0, v1}, Lcom/instagram/android/a/b/aj;->a(Landroid/content/Context;Lcom/instagram/android/a/b/al;Lcom/instagram/android/a/q;)V
goto :goto_7
:pswitch_32
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/b/w;
invoke-virtual {p0, p3}, Lcom/instagram/android/a/n;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-direct {p0, p3}, Lcom/instagram/android/a/n;->a(I)Z
move-result v2
invoke-static {v0, v1, v2, p3}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZI)V
goto :goto_7
:pswitch_data_46
.packed-switch 0x0
:pswitch_8
:pswitch_12
:pswitch_22
:pswitch_32
.end packed-switch
.end method
.method public final a(Ljava/util/ArrayList;)V
.registers 11
const/4 v5, 0x0
iget-object v0, p0, Lcom/instagram/android/a/n;->k:Ljava/util/List;
new-instance v1, Lcom/instagram/android/a/o;
invoke-direct {v1, p0, v5}, Lcom/instagram/android/a/o;-><init>(Lcom/instagram/android/a/n;B)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_70
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/instagram/android/maps/b/f;
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->h()Z
move-result v0
if-eqz v0, :cond_58
iget-object v7, p0, Lcom/instagram/android/a/n;->k:Ljava/util/List;
new-instance v0, Lcom/instagram/android/a/p;
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->i()Ljava/lang/String;
move-result-object v4
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/a/p;-><init>(Lcom/instagram/android/a/n;Lcom/instagram/android/maps/b/f;ILjava/lang/String;B)V
invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_38
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
int-to-double v2, v0
const-wide/high16 v7, 0x4010
div-double/2addr v2, v7
invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D
move-result-wide v2
double-to-int v2, v2
move v0, v5
:goto_4a
if-ge v0, v2, :cond_f
iget-object v3, p0, Lcom/instagram/android/a/n;->k:Ljava/util/List;
invoke-static {v0, v1}, Lcom/instagram/android/a/n;->a(ILjava/util/List;)Ljava/util/ArrayList;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_4a
:cond_58
iget-object v7, p0, Lcom/instagram/android/a/n;->k:Ljava/util/List;
new-instance v0, Lcom/instagram/android/a/q;
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->f()Lcom/instagram/android/maps/b/h;
move-result-object v3
invoke-virtual {v2}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v4
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/a/q;-><init>(Lcom/instagram/android/a/n;Lcom/instagram/android/maps/b/f;Lcom/instagram/android/maps/b/h;IB)V
invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_38
:cond_70
invoke-virtual {p0}, Lcom/instagram/android/a/n;->notifyDataSetChanged()V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/a/n;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItemViewType(I)I
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/a/n;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/a/o;
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-virtual {p0, p1}, Lcom/instagram/android/a/n;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/a/p;
if-eqz v0, :cond_14
const/4 v0, 0x1
goto :goto_9
:cond_14
invoke-virtual {p0, p1}, Lcom/instagram/android/a/n;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/a/q;
if-eqz v0, :cond_1e
const/4 v0, 0x2
goto :goto_9
:cond_1e
const/4 v0, 0x3
goto :goto_9
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x4
return v0
.end method
.method public final isEnabled(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method