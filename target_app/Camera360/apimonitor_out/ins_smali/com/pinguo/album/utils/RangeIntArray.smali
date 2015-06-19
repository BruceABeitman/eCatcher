.class public Lcom/pinguo/album/utils/RangeIntArray;
.super Ljava/lang/Object;
.source "RangeIntArray.java"
.field private mData:[I
.field private mOffset:I
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sub-int v0, p2, p1
add-int/lit8 v0, v0, 0x1
new-array v0, v0, [I
iput-object v0, p0, Lcom/pinguo/album/utils/RangeIntArray;->mData:[I
iput p1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mOffset:I
return-void
.end method
.method public constructor <init>([III)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mData:[I
iput p2, p0, Lcom/pinguo/album/utils/RangeIntArray;->mOffset:I
return-void
.end method
.method public get(I)I
.registers 4
iget-object v0, p0, Lcom/pinguo/album/utils/RangeIntArray;->mData:[I
iget v1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mOffset:I
sub-int v1, p1, v1
aget v0, v0, v1
return v0
.end method
.method public indexOf(I)I
.registers 4
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mData:[I
array-length v1, v1
if-lt v0, v1, :cond_a
const v1, 0x7fffffff
:goto_9
return v1
:cond_a
iget-object v1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mData:[I
aget v1, v1, v0
if-ne v1, p1, :cond_14
iget v1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mOffset:I
add-int/2addr v1, v0
goto :goto_9
:cond_14
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public put(II)V
.registers 5
iget-object v0, p0, Lcom/pinguo/album/utils/RangeIntArray;->mData:[I
iget v1, p0, Lcom/pinguo/album/utils/RangeIntArray;->mOffset:I
sub-int v1, p1, v1
aput p2, v0, v1
return-void
.end method