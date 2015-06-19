.class public Lco/vine/android/util/SparseArray$SparseKeyIterator;
.super Ljava/lang/Object;
.source "SparseArray.java"
.implements Ljava/util/Iterator;
.field public index:I
.field final synthetic this$0:Lco/vine/android/util/SparseArray;
.method public constructor <init>(Lco/vine/android/util/SparseArray;)V
.registers 2
iput-object p1, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->this$0:Lco/vine/android/util/SparseArray;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->index:I
iget-object v1, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->this$0:Lco/vine/android/util/SparseArray;
invoke-virtual {v1}, Lco/vine/android/util/SparseArray;->size()I
move-result v1
if-ge v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public next()Ljava/lang/Integer;
.registers 3
iget v0, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->index:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->index:I
iget-object v0, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->this$0:Lco/vine/android/util/SparseArray;
iget v1, p0, Lco/vine/android/util/SparseArray$SparseKeyIterator;->index:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lco/vine/android/util/SparseArray;->keyAt(I)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lco/vine/android/util/SparseArray$SparseKeyIterator;->next()Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method