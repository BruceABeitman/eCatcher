.class public Lcom/spotify/mobile/android/ui/adapter/o;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private final a:Landroid/database/DataSetObserver;
.field private final b:Landroid/content/Context;
.field private c:Lcom/spotify/mobile/android/ui/adapter/v;
.field private final d:Ljava/util/ArrayList;
.field private final e:Landroid/util/SparseArray;
.field private f:I
.field private g:I
.field private final h:Lcom/spotify/mobile/android/ui/adapter/v;
.field private i:Lcom/spotify/mobile/android/ui/adapter/p;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/adapter/o$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/o;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->a:Landroid/database/DataSetObserver;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->e:Landroid/util/SparseArray;
const/4 v0, 0x3
iput v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->g:I
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->b:Landroid/content/Context;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/x;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->b:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->h:Lcom/spotify/mobile/android/ui/adapter/v;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->c:Lcom/spotify/mobile/android/ui/adapter/v;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/adapter/o;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
return-void
.end method
.method private b()V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/p;
iput v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->f:I
iget-boolean v3, v0, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-eqz v3, :cond_30
iget-object v3, v0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I
move-result v3
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/p;->b()I
move-result v4
add-int/2addr v3, v4
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/p;->c()I
move-result v4
add-int/2addr v3, v4
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/p;->d()I
move-result v4
add-int/2addr v3, v4
add-int/2addr v1, v3
:cond_30
iput v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->g:I
goto :goto_8
:cond_33
iput v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->f:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->i:Lcom/spotify/mobile/android/ui/adapter/p;
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->g:I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_41
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/p;
iget v3, v0, Lcom/spotify/mobile/android/ui/adapter/p;->h:I
const/4 v4, -0x1
if-ne v3, v4, :cond_63
iput v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->h:I
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I
move-result v0
add-int/2addr v0, v1
:goto_5b
move v1, v0
goto :goto_41
:cond_5d
iput v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->g:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->notifyDataSetChanged()V
return-void
:cond_63
move v0, v1
goto :goto_5b
.end method
.method private f(I)Lcom/spotify/mobile/android/ui/adapter/p;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->i:Lcom/spotify/mobile/android/ui/adapter/p;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->i:Lcom/spotify/mobile/android/ui/adapter/p;
iget v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->f:I
if-gt v0, p1, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->i:Lcom/spotify/mobile/android/ui/adapter/p;
iget v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->g:I
if-ge p1, v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->i:Lcom/spotify/mobile/android/ui/adapter/p;
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_19
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/p;
iget v2, v0, Lcom/spotify/mobile/android/ui/adapter/p;->g:I
if-ge p1, v2, :cond_19
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->i:Lcom/spotify/mobile/android/ui/adapter/p;
goto :goto_12
:cond_2c
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->f:I
if-nez v0, :cond_38
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
const-string v1, "No section found, adapter is empty"
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_38
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No section found for global position="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", should be between 0 and "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/spotify/mobile/android/ui/adapter/o;->f:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private g(I)Lcom/spotify/mobile/android/ui/adapter/p;
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v0, -0x8000
if-eq p1, v0, :cond_2a
move v0, v1
:goto_7
const-string v3, "Invalid section id: SECTION_ID_NONE"
invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->e:Landroid/util/SparseArray;
const/4 v3, 0x0
invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/p;
if-eqz v0, :cond_2c
:goto_17
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "No section with id: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
return-object v0
:cond_2a
move v0, v2
goto :goto_7
:cond_2c
move v1, v2
goto :goto_17
.end method
.method public final a(II)I
.registers 4
invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->e(I)I
move-result v0
return v0
.end method
.method protected final a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->b:Landroid/content/Context;
return-object v0
.end method
.method public final a(Landroid/widget/ListAdapter;II)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;IILandroid/view/View;)V
return-void
.end method
.method public final a(Landroid/widget/ListAdapter;IILandroid/view/View;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->b:Landroid/content/Context;
invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0, p3, p4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
return-void
.end method
.method public final a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
return-void
.end method
.method public final a(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;)V
.registers 12
const/4 v1, 0x1
const/high16 v6, -0x8000
const/4 v5, 0x0
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
if-eq p3, v6, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->e:Landroid/util/SparseArray;
const/4 v2, 0x0
invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_46
move v0, v1
:goto_13
const-string v2, "Section id %d is already in use!"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v5
invoke-static {v0, v2, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
:cond_20
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/p;
move-object v1, p1
move-object v2, p2
move v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/p;-><init>(Landroid/widget/ListAdapter;Ljava/lang/String;ILandroid/view/View;B)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
iput v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->d:I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eq p3, v6, :cond_3d
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->e:Landroid/util/SparseArray;
invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->a:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
return-void
:cond_46
move v0, v5
goto :goto_13
.end method
.method public final a(Lcom/spotify/mobile/android/ui/adapter/v;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/o;->c:Lcom/spotify/mobile/android/ui/adapter/v;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x2
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
iput-object p1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->b:Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
return-void
.end method
.method public final varargs a([I)V
.registers 11
const/4 v5, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v6, v0, [Z
array-length v0, p1
new-array v7, v0, [Lcom/spotify/mobile/android/ui/adapter/p;
const/4 v0, -0x1
move v2, v0
move v4, v1
move v0, v1
:goto_11
array-length v3, p1
if-ge v0, v3, :cond_48
aget v3, p1, v0
invoke-direct {p0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v3
aput-object v3, v7, v0
aget-object v3, v7, v0
iget v3, v3, Lcom/spotify/mobile/android/ui/adapter/p;->d:I
aget-boolean v8, v6, v3
if-eqz v8, :cond_3b
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "duplicate section id "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget v0, p1, v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3b
aput-boolean v5, v6, v3
if-le v2, v3, :cond_46
move v2, v5
:goto_40
or-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
move v4, v2
move v2, v3
goto :goto_11
:cond_46
move v2, v1
goto :goto_40
:cond_48
if-eqz v4, :cond_65
move v0, v1
:goto_4b
array-length v2, p1
if-ge v1, v2, :cond_62
aget-boolean v2, v6, v0
if-eqz v2, :cond_5f
aget-object v2, v7, v1
iput v0, v2, Lcom/spotify/mobile/android/ui/adapter/p;->d:I
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
aget-object v3, v7, v1
invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v1, v1, 0x1
:cond_5f
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_62
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
:cond_65
return-void
.end method
.method public final a(I)Z
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/p;->a()Z
move-result v0
return v0
.end method
.method public areAllItemsEnabled()Z
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/p;
iget-boolean v2, v0, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-eqz v2, :cond_6
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v0
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_1f
return v0
:cond_20
const/4 v0, 0x1
goto :goto_1f
.end method
.method public final b(I)I
.registers 6
const/high16 v0, -0x8000
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->f(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z
move-result v3
if-eqz v3, :cond_11
:goto_10
:cond_10
return v0
:cond_11
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z
move-result v3
if-nez v3, :cond_10
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z
move-result v2
if-nez v2, :cond_10
iget v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->c:I
goto :goto_10
.end method
.method public final varargs b([I)V
.registers 8
const/4 v2, 0x0
array-length v3, p1
move v1, v2
move v0, v2
:goto_4
if-ge v1, v3, :cond_1a
aget v4, p1, v1
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v5
iget-boolean v5, v5, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-eqz v5, :cond_11
const/4 v0, 0x1
:cond_11
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v4
iput-boolean v2, v4, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_1a
if-eqz v0, :cond_1f
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
:cond_1f
return-void
.end method
.method public final varargs c([I)V
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v2
:goto_9
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/p;
iget-boolean v5, v0, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-eqz v5, :cond_1a
move v1, v3
:cond_1a
iput-boolean v2, v0, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
goto :goto_9
:cond_1d
move v0, v1
:goto_1e
if-gtz v2, :cond_34
aget v1, p1, v2
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v4
iget-boolean v4, v4, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-nez v4, :cond_2b
move v0, v3
:cond_2b
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v1
iput-boolean v3, v1, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
add-int/lit8 v2, v2, 0x1
goto :goto_1e
:cond_34
if-eqz v0, :cond_39
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
:cond_39
return-void
.end method
.method public final c(I)Z
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->e:Landroid/util/SparseArray;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final varargs d([I)V
.registers 8
const/4 v1, 0x1
const/4 v3, 0x0
move v2, v3
move v0, v3
:goto_4
if-gtz v2, :cond_1a
aget v4, p1, v3
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v5
iget-boolean v5, v5, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-nez v5, :cond_11
move v0, v1
:cond_11
invoke-direct {p0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v4
iput-boolean v1, v4, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
add-int/lit8 v2, v2, 0x1
goto :goto_4
:cond_1a
if-eqz v0, :cond_1f
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
:cond_1f
return-void
.end method
.method public final d(I)Z
.registers 5
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v1
iget-boolean v2, v1, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
iget-object v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
if-lez v0, :cond_1b
const/4 v0, 0x1
:goto_f
iput-boolean v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
iget-boolean v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
if-eq v2, v0, :cond_18
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/o;->b()V
:cond_18
iget-boolean v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_f
.end method
.method public final e(I)I
.registers 5
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->g(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
iget-boolean v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->e:Z
const-string v2, "cannot get position of hidden section"
invoke-static {v1, v2}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
iget v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->f:I
return v0
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->f:I
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 5
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->f(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z
move-result v2
if-eqz v2, :cond_11
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->b:Ljava/lang/String;
:goto_10
return-object v0
:cond_11
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z
move-result v2
if-eqz v2, :cond_1a
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->i:Landroid/view/View;
goto :goto_10
:cond_1a
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z
move-result v1
if-eqz v1, :cond_23
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->j:Landroid/view/View;
goto :goto_10
:cond_23
iget-object v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->e(I)I
move-result v0
invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
goto :goto_10
.end method
.method public getItemId(I)J
.registers 5
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->f(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z
move-result v2
if-eqz v2, :cond_11
const-wide/16 v0, -0x1
:goto_10
return-wide v0
:cond_11
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z
move-result v2
if-eqz v2, :cond_1a
const-wide/16 v0, -0x2
goto :goto_10
:cond_1a
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z
move-result v1
if-eqz v1, :cond_23
const-wide/16 v0, -0x3
goto :goto_10
:cond_23
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->e(I)I
move-result v1
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v0
goto :goto_10
.end method
.method public getItemViewType(I)I
.registers 6
const/4 v0, -0x1
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->f(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z
move-result v3
if-eqz v3, :cond_11
const/4 v0, 0x0
:goto_10
:cond_10
return v0
:cond_11
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z
move-result v3
if-eqz v3, :cond_19
const/4 v0, 0x1
goto :goto_10
:cond_19
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z
move-result v2
if-eqz v2, :cond_21
const/4 v0, 0x2
goto :goto_10
:cond_21
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->e(I)I
move-result v2
iget-object v3, v1, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v2
if-eq v2, v0, :cond_10
const/4 v3, -0x2
if-eq v2, v3, :cond_10
iget v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->h:I
add-int/2addr v0, v2
goto :goto_10
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->f(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z
move-result v2
if-eqz v2, :cond_26
iget-object v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->b:Ljava/lang/String;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
iget v2, v0, Lcom/spotify/mobile/android/ui/adapter/p;->c:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->c:Lcom/spotify/mobile/android/ui/adapter/v;
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/v;->a(I)Landroid/view/View;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/adapter/o;->c:Lcom/spotify/mobile/android/ui/adapter/v;
invoke-interface {v3, v2, v0, v1}, Lcom/spotify/mobile/android/ui/adapter/v;->a(ILandroid/view/View;Ljava/lang/String;)V
:goto_25
return-object v0
:cond_26
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z
move-result v2
if-eqz v2, :cond_35
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->i:Landroid/view/View;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
goto :goto_25
:cond_35
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z
move-result v1
if-eqz v1, :cond_44
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/p;->j:Landroid/view/View;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
goto :goto_25
:cond_44
iget-object v1, v0, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->e(I)I
move-result v0
invoke-interface {v1, v0, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
goto :goto_25
.end method
.method public getViewTypeCount()I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->g:I
return v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEmpty()Z
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/adapter/o;->f:I
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isEnabled(I)Z
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->f(I)Lcom/spotify/mobile/android/ui/adapter/p;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->d(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->a(I)Z
move-result v3
if-eqz v3, :cond_10
:goto_f
:cond_f
return v0
:cond_10
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->b(I)Z
move-result v3
if-nez v3, :cond_f
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/p;->c(I)Z
move-result v2
if-nez v2, :cond_f
iget-object v0, v1, Lcom/spotify/mobile/android/ui/adapter/p;->a:Landroid/widget/ListAdapter;
invoke-virtual {v1, p1}, Lcom/spotify/mobile/android/ui/adapter/p;->e(I)I
move-result v1
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v0
goto :goto_f
.end method