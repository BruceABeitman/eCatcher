.class public Lcom/instagram/filterkit/filter/IgFilterGroup;
.super Ljava/lang/Object;
.source "IgFilterGroup.java"
.implements Lcom/instagram/filterkit/filter/IgFilter;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Z
.field private b:Z
.field private c:I
.field private d:Ljava/util/SortedMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/filterkit/filter/a;
invoke-direct {v0}, Lcom/instagram/filterkit/filter/a;-><init>()V
sput-object v0, Lcom/instagram/filterkit/filter/IgFilterGroup;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
const/high16 v0, -0x8000
iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 9
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
const/high16 v0, -0x8000
iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v4
move v3, v2
:goto_19
if-ge v3, v4, :cond_4a
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
new-instance v6, Lcom/instagram/filterkit/filter/b;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/IgFilter;
invoke-direct {v6, p0, v0}, Lcom/instagram/filterkit/filter/b;-><init>(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/filterkit/filter/IgFilter;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-ne v0, v1, :cond_48
move v0, v1
:goto_39
iput-boolean v0, v6, Lcom/instagram/filterkit/filter/b;->b:Z
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v0, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_19
:cond_48
move v0, v2
goto :goto_39
:cond_4a
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public final declared-synchronized a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
.registers 16
monitor-enter p0
const/high16 v7, -0x8000
const/4 v6, 0x0
const/high16 v5, -0x8000
:try_start_6
iget-object v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
const/4 v4, 0x0
iget-boolean v3, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
:cond_13
:goto_13
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_d0
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/instagram/filterkit/filter/b;
iget-object v9, v2, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
if-eqz v9, :cond_13
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/instagram/filterkit/filter/b;
iget-boolean v2, v2, Lcom/instagram/filterkit/filter/b;->b:Z
if-eqz v2, :cond_c1
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->d()Z
move-result v2
if-eqz v2, :cond_3b
if-nez v4, :cond_46
:cond_3b
const/4 v4, 0x1
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v7
:cond_46
if-nez v3, :cond_5a
iget-boolean v2, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
if-eqz v2, :cond_81
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
iget v3, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
if-le v2, v3, :cond_81
:cond_5a
const/4 v1, 0x1
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->w_()V
move v2, v5
move v3, v6
:goto_60
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v5
if-eqz v5, :cond_1cf
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->y_()Z
move-result v5
if-eqz v5, :cond_7a
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v5
invoke-interface {v5}, Lcom/instagram/filterkit/e/b;->c()I
move-result v5
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v6
if-eq v5, v6, :cond_1cf
:cond_7a
invoke-interface {v9, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V
move v5, v2
move v6, v3
move v3, v1
goto :goto_13
:cond_81
iget-boolean v2, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
if-eqz v2, :cond_93
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
iget v3, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
if-ge v2, v3, :cond_99
:cond_93
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->z_()Z
move-result v2
if-eqz v2, :cond_bf
:cond_99
const/4 v2, 0x1
:goto_9a
if-nez v2, :cond_1d6
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v3
if-eqz v3, :cond_1d6
invoke-interface {v9}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
move-result-object v3
invoke-interface {v3}, Lcom/instagram/filterkit/e/b;->c()I
move-result v3
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v10
if-ne v3, v10, :cond_1d6
const/4 v6, 0x1
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v5
move v1, v2
move v3, v6
move v2, v5
goto :goto_60
:cond_bf
const/4 v2, 0x0
goto :goto_9a
:cond_c1
invoke-interface {v9, p1}, Lcom/instagram/filterkit/filter/IgFilter;->a_(Lcom/instagram/filterkit/d/c;)V
move v1, v3
move v2, v4
move v3, v5
move v4, v6
move v5, v7
:goto_c9
move v6, v4
move v7, v5
move v5, v3
move v4, v2
move v3, v1
goto/16 :goto_13
:cond_d0
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
const v1, 0x7fffffff
iput v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z
move-result v1
if-eqz v1, :cond_11b
move-object v4, p3
:goto_e2
iget-object v1, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
const/4 v2, 0x0
if-nez v6, :cond_192
:cond_ef
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_111
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map$Entry;
move-object v2, v0
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-boolean v1, v1, Lcom/instagram/filterkit/filter/b;->b:Z
if-eqz v1, :cond_ef
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
if-eqz v1, :cond_ef
:cond_111
move-object v3, v2
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
:try_end_115
.catchall {:try_start_6 .. :try_end_115} :catchall_1a2
move-result v1
if-nez v1, :cond_124
move-object v2, p3
:cond_119
monitor-exit p0
return-object v2
:cond_11b
:try_start_11b
invoke-interface {p3}, Lcom/instagram/filterkit/e/c;->c()I
move-result v1
invoke-static {v1}, Lcom/instagram/filterkit/e/d;->b(I)Lcom/instagram/filterkit/e/c;
move-result-object v4
goto :goto_e2
:cond_124
invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v1, v7, :cond_190
move-object v2, p3
:goto_131
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v1, p1, p2, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v2
invoke-interface {p2}, Lcom/instagram/filterkit/e/a;->f()V
:goto_140
:cond_140
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_119
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map$Entry;
move-object v3, v0
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-boolean v1, v1, Lcom/instagram/filterkit/filter/b;->b:Z
if-eqz v1, :cond_140
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
if-eqz v1, :cond_140
const/4 v5, 0x0
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v1}, Lcom/instagram/filterkit/filter/IgFilter;->d()Z
move-result v1
if-nez v1, :cond_183
move-object v0, v2
check-cast v0, Lcom/instagram/filterkit/e/b;
move-object v1, v0
invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v2
if-ne v2, v7, :cond_1cd
move-object v2, p3
:goto_182
move-object v5, v1
:cond_183
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v1, p1, v5, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
move-result-object v2
goto :goto_140
:cond_190
move-object v2, v4
goto :goto_131
:cond_192
if-ne v5, v7, :cond_1a5
invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(Lcom/instagram/filterkit/e/c;)Z
move-result v1
if-nez v1, :cond_1a5
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v2, "Cannot cache the last filter yet."
invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_1a2
:try_end_1a2
.catchall {:try_start_11b .. :try_end_1a2} :catchall_1a2
move-exception v1
monitor-exit p0
throw v1
:cond_1a5
:try_start_1a5
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1bf
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map$Entry;
move-object v2, v0
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v1, v5, :cond_1a5
:cond_1bf
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v1}, Lcom/instagram/filterkit/filter/IgFilter;->c()Lcom/instagram/filterkit/e/b;
:try_end_1ca
.catchall {:try_start_1a5 .. :try_end_1ca} :catchall_1a2
move-result-object v2
goto/16 :goto_140
:cond_1cd
move-object v2, v4
goto :goto_182
:cond_1cf
move v5, v7
move v11, v2
move v2, v4
move v4, v3
move v3, v11
goto/16 :goto_c9
:cond_1d6
move v1, v2
move v3, v6
move v2, v5
goto/16 :goto_60
.end method
.method public final declared-synchronized a(I)Lcom/instagram/filterkit/filter/IgFilter;
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/b;
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_15
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_10
monitor-exit p0
return-object v0
:cond_12
:try_start_12
iget-object v0, v0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
:try_end_14
.catchall {:try_start_12 .. :try_end_14} :catchall_15
goto :goto_10
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(ILcom/instagram/filterkit/filter/IgFilter;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
new-instance v2, Lcom/instagram/filterkit/filter/b;
invoke-direct {v2, p0, p2}, Lcom/instagram/filterkit/filter/b;-><init>(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/filterkit/filter/IgFilter;)V
invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
iget v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1c
monitor-exit p0
return-void
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(IZ)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_29
move-result v0
if-nez v0, :cond_f
:goto_d
monitor-exit p0
return-void
:cond_f
:try_start_f
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/b;
iput-boolean p2, v0, Lcom/instagram/filterkit/filter/b;->b:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
iget v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->c:I
:try_end_28
.catchall {:try_start_f .. :try_end_28} :catchall_29
goto :goto_d
:catchall_29
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Lcom/instagram/filterkit/d/c;)V
.registers 2
return-void
.end method
.method public final a(Z)V
.registers 5
if-eqz p1, :cond_a
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot call setCaching(true) on a filter group"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
:cond_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
if-eqz v1, :cond_14
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/b;
iget-object v0, v0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
goto :goto_14
:cond_37
return-void
.end method
.method public final a_(Lcom/instagram/filterkit/d/c;)V
.registers 2
return-void
.end method
.method public final b(I)Z
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/b;
iget-boolean v0, v0, Lcom/instagram/filterkit/filter/b;->b:Z
if-eqz v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public final c()Lcom/instagram/filterkit/e/b;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final w_()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-interface {v0}, Ljava/util/SortedMap;->size()I
move-result v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_48
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/b;
iget-boolean v0, v0, Lcom/instagram/filterkit/filter/b;->b:Z
if-eqz v0, :cond_46
const/4 v0, 0x1
:goto_42
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_13
:cond_46
const/4 v0, 0x0
goto :goto_42
:cond_48
return-void
.end method
.method public final y_()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final declared-synchronized z_()Z
.registers 5
const/4 v2, 0x1
monitor-enter p0
:try_start_2
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->b:Z
if-nez v0, :cond_a
iget-boolean v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->a:Z
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_49
if-eqz v0, :cond_d
:cond_a
move v0, v2
:goto_b
monitor-exit p0
return v0
:cond_d
:try_start_d
iget-object v0, p0, Lcom/instagram/filterkit/filter/IgFilterGroup;->d:Ljava/util/SortedMap;
invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-boolean v1, v1, Lcom/instagram/filterkit/filter/b;->b:Z
if-eqz v1, :cond_17
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/instagram/filterkit/filter/b;
iget-object v1, v1, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
if-eqz v1, :cond_17
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/b;
iget-object v0, v0, Lcom/instagram/filterkit/filter/b;->a:Lcom/instagram/filterkit/filter/IgFilter;
invoke-interface {v0}, Lcom/instagram/filterkit/filter/IgFilter;->z_()Z
:try_end_42
.catchall {:try_start_d .. :try_end_42} :catchall_49
move-result v0
if-eqz v0, :cond_17
move v0, v2
goto :goto_b
:cond_47
const/4 v0, 0x0
goto :goto_b
:catchall_49
move-exception v0
monitor-exit p0
throw v0
.end method