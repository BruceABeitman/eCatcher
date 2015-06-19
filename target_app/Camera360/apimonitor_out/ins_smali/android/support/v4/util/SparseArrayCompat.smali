.class public Landroid/support/v4/util/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"
.field private static final DELETED:Ljava/lang/Object;
.field private mGarbage:Z
.field private mKeys:[I
.field private mSize:I
.field private mValues:[Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/16 v0, 0xa
invoke-direct {p0, v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V
return-void
.end method
.method public constructor <init>(I)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
invoke-static {p1}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I
move-result p1
new-array v0, p1, [I
iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
new-array v0, p1, [Ljava/lang/Object;
iput-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
iput v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
return-void
.end method
.method private static binarySearch([IIII)I
.registers 9
add-int v1, p1, p2
add-int/lit8 v2, p1, -0x1
:goto_4
sub-int v3, v1, v2
const/4 v4, 0x1
if-le v3, v4, :cond_15
add-int v3, v1, v2
div-int/lit8 v0, v3, 0x2
aget v3, p0, v0
if-ge v3, p3, :cond_13
move v2, v0
goto :goto_4
:cond_13
move v1, v0
goto :goto_4
:cond_15
add-int v3, p1, p2
if-ne v1, v3, :cond_1e
add-int v3, p1, p2
xor-int/lit8 v1, v3, -0x1
:goto_1d
:cond_1d
return v1
:cond_1e
aget v3, p0, v1
if-eq v3, p3, :cond_1d
xor-int/lit8 v1, v1, -0x1
goto :goto_1d
.end method
.method private gc()V
.registers 8
iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
const/4 v3, 0x0
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_1d
aget-object v4, v5, v0
sget-object v6, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
if-eq v4, v6, :cond_1a
if-eq v0, v3, :cond_18
aget v6, v1, v0
aput v6, v1, v3
aput-object v4, v5, v3
:cond_18
add-int/lit8 v3, v3, 0x1
:cond_1a
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1d
const/4 v6, 0x0
iput-boolean v6, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
iput v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
return-void
.end method
.method static idealByteArraySize(I)I
.registers 4
const/4 v2, 0x1
const/4 v0, 0x4
:goto_2
const/16 v1, 0x20
if-ge v0, v1, :cond_10
shl-int v1, v2, v0
add-int/lit8 v1, v1, -0xc
if-gt p0, v1, :cond_11
shl-int v1, v2, v0
add-int/lit8 p0, v1, -0xc
:cond_10
return p0
:cond_11
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method static idealIntArraySize(I)I
.registers 2
mul-int/lit8 v0, p0, 0x4
invoke-static {v0}, Landroid/support/v4/util/SparseArrayCompat;->idealByteArraySize(I)I
move-result v0
div-int/lit8 v0, v0, 0x4
return v0
.end method
.method public append(ILjava/lang/Object;)V
.registers 10
const/4 v6, 0x0
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
if-eqz v4, :cond_13
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
add-int/lit8 v5, v5, -0x1
aget v4, v4, v5
if-gt p1, v4, :cond_13
invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
:goto_12
return-void
:cond_13
iget-boolean v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v4, :cond_21
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
array-length v5, v5
if-lt v4, v5, :cond_21
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_21
iget v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
array-length v4, v4
if-lt v3, v4, :cond_46
add-int/lit8 v4, v3, 0x1
invoke-static {v4}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I
move-result v0
new-array v1, v0, [I
new-array v2, v0, [Ljava/lang/Object;
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
array-length v5, v5
invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
array-length v5, v5
invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
:cond_46
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
aput p1, v4, v3
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aput-object p2, v4, v3
add-int/lit8 v4, v3, 0x1
iput v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
goto :goto_12
.end method
.method public clear()V
.registers 6
const/4 v4, 0x0
iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
const/4 v0, 0x0
:goto_6
if-ge v0, v1, :cond_e
const/4 v3, 0x0
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_e
iput v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
iput-boolean v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
return-void
.end method
.method public delete(I)V
.registers 6
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
const/4 v2, 0x0
iget v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
invoke-static {v1, v2, v3, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I
move-result v0
if-ltz v0, :cond_1c
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object v1, v1, v0
sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
if-eq v1, v2, :cond_1c
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
aput-object v2, v1, v0
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
:cond_1c
return-void
.end method
.method public get(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public get(ILjava/lang/Object;)Ljava/lang/Object;
.registers 7
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
const/4 v2, 0x0
iget v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
invoke-static {v1, v2, v3, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I
move-result v0
if-ltz v0, :cond_13
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object v1, v1, v0
sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
if-ne v1, v2, :cond_14
:cond_13
:goto_13
return-object p2
:cond_14
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object p2, v1, v0
goto :goto_13
.end method
.method public indexOfKey(I)I
.registers 5
iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_7
iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
const/4 v1, 0x0
iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
invoke-static {v0, v1, v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I
move-result v0
return v0
.end method
.method public indexOfValue(Ljava/lang/Object;)I
.registers 4
iget-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v1, :cond_7
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_7
const/4 v0, 0x0
:goto_8
iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
if-ge v0, v1, :cond_16
iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object v1, v1, v0
if-ne v1, p1, :cond_13
:goto_12
return v0
:cond_13
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_16
const/4 v0, -0x1
goto :goto_12
.end method
.method public keyAt(I)I
.registers 3
iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_7
iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
aget v0, v0, p1
return v0
.end method
.method public put(ILjava/lang/Object;)V
.registers 11
const/4 v6, 0x0
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
invoke-static {v4, v6, v5, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I
move-result v0
if-ltz v0, :cond_10
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aput-object p2, v4, v0
:goto_f
return-void
:cond_10
xor-int/lit8 v0, v0, -0x1
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
if-ge v0, v4, :cond_27
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object v4, v4, v0
sget-object v5, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
if-ne v4, v5, :cond_27
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
aput p1, v4, v0
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aput-object p2, v4, v0
goto :goto_f
:cond_27
iget-boolean v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v4, :cond_3f
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
array-length v5, v5
if-lt v4, v5, :cond_3f
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
invoke-static {v4, v6, v5, p1}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I
move-result v4
xor-int/lit8 v0, v4, -0x1
:cond_3f
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
array-length v5, v5
if-lt v4, v5, :cond_66
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
add-int/lit8 v4, v4, 0x1
invoke-static {v4}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I
move-result v1
new-array v2, v1, [I
new-array v3, v1, [Ljava/lang/Object;
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
array-length v5, v5
invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
array-length v5, v5
invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iput-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
:cond_66
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
sub-int/2addr v4, v0
if-eqz v4, :cond_83
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
add-int/lit8 v6, v0, 0x1
iget v7, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
sub-int/2addr v7, v0
invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
iget-object v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
add-int/lit8 v6, v0, 0x1
iget v7, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
sub-int/2addr v7, v0
invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_83
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I
aput p1, v4, v0
iget-object v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aput-object p2, v4, v0
iget v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
goto/16 :goto_f
.end method
.method public remove(I)V
.registers 2
invoke-virtual {p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->delete(I)V
return-void
.end method
.method public removeAt(I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object v0, v0, p1
sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
if-eq v0, v1, :cond_11
iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;
aput-object v1, v0, p1
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
:cond_11
return-void
.end method
.method public removeAtRange(II)V
.registers 7
iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
add-int v3, p1, p2
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v0
move v1, p1
:goto_9
if-ge v1, v0, :cond_11
invoke-virtual {p0, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_11
return-void
.end method
.method public setValueAt(ILjava/lang/Object;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_7
iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aput-object p2, v0, p1
return-void
.end method
.method public size()I
.registers 2
iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_7
iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I
return v0
.end method
.method public valueAt(I)Ljava/lang/Object;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V
:cond_7
iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
aget-object v0, v0, p1
return-object v0
.end method