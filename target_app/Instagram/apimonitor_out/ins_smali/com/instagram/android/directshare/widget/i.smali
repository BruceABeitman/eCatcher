.class public final Lcom/instagram/android/directshare/widget/i;
.super Lcom/instagram/ui/d/c;
.source "DirectShareUserListAdapter.java"
.implements Landroid/widget/Filterable;
.field private final a:Lcom/instagram/android/directshare/widget/j;
.field private b:Lcom/instagram/creation/b/a/b;
.field private c:Lcom/instagram/android/directshare/widget/k;
.field private d:Landroid/widget/Filter;
.field private e:Z
.field private final f:Lcom/instagram/ui/menu/d;
.field private final g:Lcom/instagram/ui/menu/d;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/directshare/widget/j;)V
.registers 5
invoke-direct {p0, p1}, Lcom/instagram/ui/d/c;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/instagram/ui/menu/d;
sget v1, Lcom/facebook/az;->directshare_user_list_header_suggestions:I
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V
iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->f:Lcom/instagram/ui/menu/d;
new-instance v0, Lcom/instagram/ui/menu/d;
sget v1, Lcom/facebook/az;->directshare_user_list_header_following:I
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/d;-><init>(I)V
iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->g:Lcom/instagram/ui/menu/d;
iput-object p2, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
return-void
.end method
.method private c(I)I
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I
move-result v0
if-eq p1, v0, :cond_16
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->g()I
move-result v0
if-ne p1, v0, :cond_18
:cond_16
const/4 v0, 0x2
goto :goto_9
:cond_18
const/4 v0, 0x0
goto :goto_9
.end method
.method private d()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private d(I)I
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->c()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->U()Z
move-result v0
if-nez v0, :cond_1c
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I
move-result v0
if-le p1, v0, :cond_1f
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->g()I
move-result v0
if-ge p1, v0, :cond_1f
:cond_1c
add-int/lit8 v0, p1, -0x1
:goto_1e
return v0
:cond_1f
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->g()I
move-result v0
if-le p1, v0, :cond_2e
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->getCount()I
move-result v0
if-ge p1, v0, :cond_2e
add-int/lit8 v0, p1, -0x2
goto :goto_1e
:cond_2e
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "Cannot adjust for headers."
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private f()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->c()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private g()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->U()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->c()Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x0
goto :goto_9
:cond_14
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->d()I
move-result v0
add-int/lit8 v0, v0, 0x1
goto :goto_9
.end method
.method private h()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v1}, Lcom/instagram/android/directshare/widget/j;->c()Z
move-result v1
if-nez v1, :cond_a
const/4 v0, 0x1
:cond_a
iget-object v1, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v1}, Lcom/instagram/android/directshare/widget/j;->U()Z
move-result v1
if-nez v1, :cond_14
add-int/lit8 v0, v0, 0x1
:cond_14
return v0
.end method
.method private i()Lcom/instagram/android/directshare/widget/k;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->c:Lcom/instagram/android/directshare/widget/k;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/android/directshare/widget/k;
invoke-direct {v0}, Lcom/instagram/android/directshare/widget/k;-><init>()V
iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->c:Lcom/instagram/android/directshare/widget/k;
:cond_b
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->c:Lcom/instagram/android/directshare/widget/k;
return-object v0
.end method
.method protected final a()Landroid/view/View;
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->e()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->directshare_row_no_results:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected final a(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-virtual {p0, p2}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_22
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "Unhandled view type"
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->i()Lcom/instagram/android/directshare/widget/k;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/directshare/widget/k;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
:goto_17
return-object v0
:pswitch_18
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->a()Landroid/view/View;
move-result-object v0
goto :goto_17
:pswitch_1d
invoke-static {p1, p3}, Lcom/instagram/ui/menu/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_17
:pswitch_data_22
.packed-switch 0x0
:pswitch_f
:pswitch_18
:pswitch_1d
.end packed-switch
.end method
.method protected final a(Landroid/view/View;Landroid/content/Context;I)V
.registers 7
const/4 v1, 0x1
invoke-virtual {p0, p3}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_32
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "Unhandled view type"
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_10
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->i()Lcom/instagram/android/directshare/widget/k;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/directshare/widget/l;
invoke-virtual {p0, p3}, Lcom/instagram/android/directshare/widget/i;->b(I)Lcom/instagram/user/c/a;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/widget/i;->b:Lcom/instagram/creation/b/a/b;
invoke-static {v0, v1, v2}, Lcom/instagram/android/directshare/widget/k;->a(Lcom/instagram/android/directshare/widget/l;Lcom/instagram/user/c/a;Lcom/instagram/creation/b/a/b;)V
:goto_22
:pswitch_22
return-void
:pswitch_23
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I
move-result v0
if-ne p3, v0, :cond_2f
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->f:Lcom/instagram/ui/menu/d;
:goto_2b
invoke-static {p1, v0, v1, v1}, Lcom/instagram/ui/menu/n;->a(Landroid/view/View;Lcom/instagram/ui/menu/d;ZZ)V
goto :goto_22
:cond_2f
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->g:Lcom/instagram/ui/menu/d;
goto :goto_2b
:pswitch_data_32
.packed-switch 0x0
:pswitch_10
:pswitch_22
:pswitch_23
.end packed-switch
.end method
.method public final a(Lcom/instagram/creation/b/a/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/widget/i;->b:Lcom/instagram/creation/b/a/b;
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 3
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_9
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z
:cond_9
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/directshare/widget/i;->e:Z
return-void
.end method
.method public final a(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b(I)Lcom/instagram/user/c/a;
.registers 4
invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/widget/i;->getItemViewType(I)I
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "Cannot getItem() on a header row."
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z
if-nez v0, :cond_16
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/i;->d(I)I
move-result p1
:cond_16
invoke-super {p0, p1}, Lcom/instagram/ui/d/c;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
return-object v0
.end method
.method public final b()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->a:Lcom/instagram/android/directshare/widget/j;
invoke-interface {v0}, Lcom/instagram/android/directshare/widget/j;->V()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final getCount()I
.registers 3
iget-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_a
return v0
:cond_b
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_15
const/4 v0, 0x1
goto :goto_a
:cond_15
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->h()I
move-result v1
add-int/2addr v0, v1
goto :goto_a
.end method
.method public final getFilter()Landroid/widget/Filter;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->d:Landroid/widget/Filter;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/android/directshare/widget/h;
invoke-direct {v0, p0}, Lcom/instagram/android/directshare/widget/h;-><init>(Lcom/instagram/android/directshare/widget/i;)V
iput-object v0, p0, Lcom/instagram/android/directshare/widget/i;->d:Landroid/widget/Filter;
:cond_b
iget-object v0, p0, Lcom/instagram/android/directshare/widget/i;->d:Landroid/widget/Filter;
return-object v0
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/instagram/android/directshare/widget/i;->b(I)Lcom/instagram/user/c/a;
move-result-object v0
return-object v0
.end method
.method public final getItemViewType(I)I
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/i;->getCount()I
move-result v0
if-lt p1, v0, :cond_e
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "Unsupported item view type"
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-boolean v0, p0, Lcom/instagram/android/directshare/widget/i;->e:Z
if-eqz v0, :cond_17
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->d()I
move-result v0
:goto_16
return v0
:cond_17
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/i;->c(I)I
move-result v0
goto :goto_16
.end method
.method public final getViewTypeCount()I
.registers 2
const/4 v0, 0x3
return v0
.end method
.method public final isEnabled(I)Z
.registers 4
const/4 v0, 0x1
iget-boolean v1, p0, Lcom/instagram/android/directshare/widget/i;->e:Z
if-eqz v1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->f()I
move-result v1
if-eq p1, v1, :cond_12
invoke-direct {p0}, Lcom/instagram/android/directshare/widget/i;->g()I
move-result v1
if-ne p1, v1, :cond_5
:cond_12
const/4 v0, 0x0
goto :goto_5
.end method