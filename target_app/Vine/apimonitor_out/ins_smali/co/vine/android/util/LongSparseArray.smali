.class public Lco/vine/android/util/LongSparseArray;
.super Landroid/support/v4/util/LongSparseArray;
.source "LongSparseArray.java"
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;-><init>()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V
return-void
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lco/vine/android/util/LongSparseArray;->size()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lco/vine/android/util/LongSparseArray$SparseKeyIterator;
invoke-direct {v0, p0}, Lco/vine/android/util/LongSparseArray$SparseKeyIterator;-><init>(Lco/vine/android/util/LongSparseArray;)V
return-object v0
.end method
.method public removeAll(Ljava/util/Collection;)V
.registers 6
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v2
invoke-virtual {p0, v2, v3}, Lco/vine/android/util/LongSparseArray;->delete(J)V
goto :goto_4
:cond_18
return-void
.end method
.method public removeKey(J)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_9
invoke-super {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->remove(J)V
:cond_9
return-object v0
.end method
.method public valueIterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;
invoke-direct {v0, p0}, Lco/vine/android/util/LongSparseArray$SparseValueIterator;-><init>(Lco/vine/android/util/LongSparseArray;)V
return-object v0
.end method