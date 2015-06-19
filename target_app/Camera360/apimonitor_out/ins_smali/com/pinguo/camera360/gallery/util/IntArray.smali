.class public Lcom/pinguo/camera360/gallery/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"
.field private static final INIT_CAPACITY:I = 0x8
.field private mData:[I
.field private mSize:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x8
new-array v0, v0, [I
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
return-void
.end method
.method public add(I)V
.registers 6
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
array-length v1, v1
iget v2, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
if-ne v1, v2, :cond_18
iget v1, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
iget v2, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
add-int/2addr v1, v2
new-array v0, v1, [I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
iget v2, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
iget v2, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
aput p1, v1, v2
return-void
.end method
.method public clear()V
.registers 3
const/16 v1, 0x8
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
array-length v0, v0
if-eq v0, v1, :cond_e
new-array v0, v1, [I
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
:cond_e
return-void
.end method
.method public getInternalArray()[I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
return-object v0
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
return v0
.end method
.method public toArray([I)[I
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_8
array-length v0, p1
iget v1, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
if-ge v0, v1, :cond_c
:cond_8
iget v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
new-array p1, v0, [I
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mData:[I
iget v1, p0, Lcom/pinguo/camera360/gallery/util/IntArray;->mSize:I
invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object p1
.end method