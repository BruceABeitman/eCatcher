.class public final Lit/sephiroth/android/library/widget/an;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;
.field static final c:Ljava/util/ArrayList;
.field  a:Ljava/util/ArrayList;
.field  b:Ljava/util/ArrayList;
.field  d:Z
.field private final e:Landroid/widget/ListAdapter;
.field private final f:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lit/sephiroth/android/library/widget/an;->c:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p3, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
instance-of v0, p3, Landroid/widget/Filterable;
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/an;->f:Z
if-nez p1, :cond_29
sget-object v0, Lit/sephiroth/android/library/widget/an;->c:Ljava/util/ArrayList;
iput-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
:goto_f
if-nez p2, :cond_2c
sget-object v0, Lit/sephiroth/android/library/widget/an;->c:Ljava/util/ArrayList;
iput-object v0, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
:goto_15
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-static {v0}, Lit/sephiroth/android/library/widget/an;->a(Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
invoke-static {v0}, Lit/sephiroth/android/library/widget/an;->a(Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_2f
const/4 v0, 0x1
:goto_26
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/an;->d:Z
return-void
:cond_29
iput-object p1, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
goto :goto_f
:cond_2c
iput-object p2, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
goto :goto_15
:cond_2f
const/4 v0, 0x0
goto :goto_26
.end method
.method private static a(Ljava/util/ArrayList;)Z
.registers 3
if-eqz p0, :cond_18
invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/al;->c:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_17
return v0
:cond_18
const/4 v0, 0x1
goto :goto_17
.end method
.method public final areAllItemsEnabled()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v1, :cond_11
iget-boolean v1, p0, Lit/sephiroth/android/library/widget/an;->d:Z
if-eqz v1, :cond_12
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v1
if-eqz v1, :cond_12
:goto_11
:cond_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final getCount()I
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v0, :cond_19
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
add-int/2addr v0, v1
:goto_18
return v0
:cond_19
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
goto :goto_18
.end method
.method public final getFilter()Landroid/widget/Filter;
.registers 2
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/an;->f:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
check-cast v0, Landroid/widget/Filterable;
invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->b:Ljava/lang/Object;
:goto_12
return-object v0
:cond_13
sub-int v1, p1, v0
const/4 v0, 0x0
iget-object v2, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v2, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
goto :goto_12
:cond_29
iget-object v2, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
sub-int v0, v1, v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->b:Ljava/lang/Object;
goto :goto_12
.end method
.method public final getItemId(I)J
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v1, :cond_1d
if-lt p1, v0, :cond_1d
sub-int v0, p1, v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
if-ge v0, v1, :cond_1d
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v0
:goto_1c
return-wide v0
:cond_1d
const-wide/16 v0, -0x1
goto :goto_1c
.end method
.method public final getItemViewType(I)I
.registers 4
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v1, :cond_1d
if-lt p1, v0, :cond_1d
sub-int v0, p1, v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
if-ge v0, v1, :cond_1d
iget-object v1, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v0
:goto_1c
return v0
:cond_1d
const/4 v0, -0x2
goto :goto_1c
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->a:Landroid/view/View;
:goto_12
return-object v0
:cond_13
sub-int v1, p1, v0
const/4 v0, 0x0
iget-object v2, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v2, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_12
:cond_29
iget-object v2, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
sub-int v0, v1, v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-object v0, v0, Lit/sephiroth/android/library/widget/al;->a:Landroid/view/View;
goto :goto_12
.end method
.method public final getViewTypeCount()I
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x1
goto :goto_a
.end method
.method public final getWrappedAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public final hasStableIds()Z
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v0, :cond_c
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final isEnabled(I)Z
.registers 5
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_13
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/al;->c:Z
:goto_12
return v0
:cond_13
sub-int v1, p1, v0
const/4 v0, 0x0
iget-object v2, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v2, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
if-ge v1, v0, :cond_29
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v0
goto :goto_12
:cond_29
iget-object v2, p0, Lit/sephiroth/android/library/widget/an;->b:Ljava/util/ArrayList;
sub-int v0, v1, v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/al;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/al;->c:Z
goto :goto_12
.end method
.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v0, :cond_9
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_9
return-void
.end method
.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
if-eqz v0, :cond_9
iget-object v0, p0, Lit/sephiroth/android/library/widget/an;->e:Landroid/widget/ListAdapter;
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_9
return-void
.end method