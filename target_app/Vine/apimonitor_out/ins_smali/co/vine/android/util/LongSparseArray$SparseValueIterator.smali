.class public Lco/vine/android/util/LongSparseArray$SparseValueIterator;
.super Ljava/lang/Object;
.source "LongSparseArray.java"
.implements Ljava/util/Iterator;
.field public index:I
.field final synthetic this$0:Lco/vine/android/util/LongSparseArray;
.method public constructor <init>(Lco/vine/android/util/LongSparseArray;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->this$0:Lco/vine/android/util/LongSparseArray;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->index:I
iget-object v1, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->this$0:Lco/vine/android/util/LongSparseArray;
invoke-virtual {v1}, Lco/vine/android/util/LongSparseArray;->size()I
move-result v1
if-ge v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public next()Ljava/lang/Object;
.registers 3
iget v0, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->index:I
iget-object v0, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->this$0:Lco/vine/android/util/LongSparseArray;
iget v1, p0, Lco/vine/android/util/LongSparseArray$SparseValueIterator;->index:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method