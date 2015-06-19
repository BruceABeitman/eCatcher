.class public final Lcom/ibm/icu/util/CompactByteArray;
.super Ljava/lang/Object;
.source "CompactByteArray.java"
.implements Ljava/lang/Cloneable;
.field private static final BLOCKCOUNT:I = 0x80
.field private static final BLOCKMASK:I = 0x7f
.field private static final BLOCKSHIFT:I = 0x7
.field private static final INDEXCOUNT:I = 0x200
.field private static final INDEXSHIFT:I = 0x9
.field public static final UNICODECOUNT:I = 0x10000
.field  defaultValue:B
.field private hashes:[I
.field private indices:[C
.field private isCompact:Z
.field private values:[B
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/ibm/icu/util/CompactByteArray;-><init>(B)V
return-void
.end method
.method public constructor <init>(B)V
.registers 7
const/high16 v2, 0x1
const/4 v4, 0x0
const/16 v3, 0x200
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v1, v2, [B
iput-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
new-array v1, v3, [C
iput-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
new-array v1, v3, [I
iput-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
const/4 v0, 0x0
:goto_15
if-ge v0, v2, :cond_1e
iget-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
aput-byte p1, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_1e
const/4 v0, 0x0
:goto_1f
if-ge v0, v3, :cond_2f
iget-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
shl-int/lit8 v2, v0, 0x7
int-to-char v2, v2
aput-char v2, v1, v0
iget-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_2f
iput-boolean v4, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
iput-byte p1, p0, Lcom/ibm/icu/util/CompactByteArray;->defaultValue:B
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C
move-result-object v0
invoke-static {p2}, Lcom/ibm/icu/impl/Utility;->RLEStringToByteArray(Ljava/lang/String;)[B
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/CompactByteArray;-><init>([C[B)V
return-void
.end method
.method public constructor <init>([C[B)V
.registers 7
const/16 v3, 0x200
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
array-length v2, p1
if-eq v2, v3, :cond_10
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Index out of bounds."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_10
const/4 v0, 0x0
:goto_11
if-ge v0, v3, :cond_27
aget-char v1, p1, v0
if-ltz v1, :cond_1c
array-length v2, p2
add-int/lit16 v2, v2, 0x80
if-lt v1, v2, :cond_24
:cond_1c
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Index out of bounds."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_24
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_27
iput-object p1, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
iput-object p2, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
return-void
.end method
.method static final arrayRegionMatches([BI[BII)Z
.registers 10
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_14
aget-byte v3, p0, v1
add-int v4, v1, v0
aget-byte v4, p2, v4
if-eq v3, v4, :cond_11
const/4 v3, 0x0
:goto_10
return v3
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_14
const/4 v3, 0x1
goto :goto_10
.end method
.method private final blockTouched(I)Z
.registers 3
iget-object v0, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
aget v0, v0, p1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private expand()V
.registers 7
const/high16 v4, 0x1
const/16 v5, 0x200
iget-boolean v3, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
if-eqz v3, :cond_35
new-array v3, v5, [I
iput-object v3, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
new-array v1, v4, [B
const/4 v0, 0x0
:goto_f
if-ge v0, v4, :cond_20
int-to-char v3, v0
invoke-virtual {p0, v3}, Lcom/ibm/icu/util/CompactByteArray;->elementAt(C)B
move-result v2
aput-byte v2, v1, v0
shr-int/lit8 v3, v0, 0x7
invoke-direct {p0, v3, v2}, Lcom/ibm/icu/util/CompactByteArray;->touchBlock(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_20
const/4 v0, 0x0
:goto_21
if-ge v0, v5, :cond_2d
iget-object v3, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
shl-int/lit8 v4, v0, 0x7
int-to-char v4, v4
aput-char v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_2d
const/4 v3, 0x0
iput-object v3, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
iput-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
const/4 v3, 0x0
iput-boolean v3, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
:cond_35
return-void
.end method
.method private final touchBlock(II)V
.registers 6
iget-object v0, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
iget-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
aget v1, v1, p1
shl-int/lit8 v2, p2, 0x1
add-int/2addr v1, v2
or-int/lit8 v1, v1, 0x1
aput v1, v0, p1
return-void
.end method
.method public clone()Ljava/lang/Object;
.registers 4
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/util/CompactByteArray;
iget-object v2, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
invoke-virtual {v2}, [B->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, [B
check-cast v2, [B
iput-object v2, v1, Lcom/ibm/icu/util/CompactByteArray;->values:[B
iget-object v2, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
invoke-virtual {v2}, [C->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, [C
check-cast v2, [C
iput-object v2, v1, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
iget-object v2, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
if-eqz v2, :cond_2e
iget-object v2, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
invoke-virtual {v2}, [I->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, [I
check-cast p0, [I
iput-object p0, v1, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
:try_end_2e
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_2e} :catch_2f
:cond_2e
return-object v1
:catch_2f
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/IllegalStateException;
invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V
throw v2
.end method
.method public compact()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CompactByteArray;->compact(Z)V
return-void
.end method
.method public compact(Z)V
.registers 16
const/16 v13, 0x80
const/4 v12, 0x0
const v11, 0xffff
iget-boolean v9, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
if-nez v9, :cond_7e
const/4 v5, 0x0
const/4 v1, 0x0
const v2, 0xffff
const/4 v0, 0x0
:goto_10
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
array-length v9, v9
if-ge v0, v9, :cond_6d
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
aput-char v11, v9, v0
invoke-direct {p0, v0}, Lcom/ibm/icu/util/CompactByteArray;->blockTouched(I)Z
move-result v8
if-nez v8, :cond_2a
if-eq v2, v11, :cond_2a
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
aput-char v2, v9, v0
:goto_25
:cond_25
add-int/lit8 v0, v0, 0x1
add-int/lit16 v1, v1, 0x80
goto :goto_10
:cond_2a
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v3, 0x0
:goto_2d
if-ge v3, v5, :cond_48
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
aget v9, v9, v0
iget-object v10, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
aget v10, v10, v3
if-ne v9, v10, :cond_68
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
iget-object v10, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
invoke-static {v9, v1, v10, v4, v13}, Lcom/ibm/icu/util/CompactByteArray;->arrayRegionMatches([BI[BII)Z
move-result v9
if-eqz v9, :cond_68
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
int-to-char v10, v4
aput-char v10, v9, v0
:cond_48
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
aget-char v9, v9, v0
if-ne v9, v11, :cond_25
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
iget-object v10, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
invoke-static {v9, v1, v10, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
int-to-char v10, v4
aput-char v10, v9, v0
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
iget-object v10, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
aget v10, v10, v0
aput v10, v9, v3
add-int/lit8 v5, v5, 0x1
if-nez v8, :cond_25
int-to-char v2, v4
goto :goto_25
:cond_68
add-int/lit8 v3, v3, 0x1
add-int/lit16 v4, v4, 0x80
goto :goto_2d
:cond_6d
mul-int/lit16 v6, v5, 0x80
new-array v7, v6, [B
iget-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
invoke-static {v9, v12, v7, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v7, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
const/4 v9, 0x1
iput-boolean v9, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
const/4 v9, 0x0
iput-object v9, p0, Lcom/ibm/icu/util/CompactByteArray;->hashes:[I
:cond_7e
return-void
.end method
.method public elementAt(C)B
.registers 5
iget-object v0, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
iget-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
shr-int/lit8 v2, p1, 0x7
aget-char v1, v1, v2
const v2, 0xffff
and-int/2addr v1, v2
and-int/lit8 v2, p1, 0x7f
add-int/2addr v1, v2
aget-byte v0, v0, v1
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
if-nez p1, :cond_6
move v3, v5
:goto_5
return v3
:cond_6
if-ne p0, p1, :cond_a
move v3, v6
goto :goto_5
:cond_a
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_16
move v3, v5
goto :goto_5
:cond_16
move-object v0, p1
check-cast v0, Lcom/ibm/icu/util/CompactByteArray;
move-object v2, v0
const/4 v1, 0x0
:goto_1b
const/high16 v3, 0x1
if-ge v1, v3, :cond_30
int-to-char v3, v1
invoke-virtual {p0, v3}, Lcom/ibm/icu/util/CompactByteArray;->elementAt(C)B
move-result v3
int-to-char v4, v1
invoke-virtual {v2, v4}, Lcom/ibm/icu/util/CompactByteArray;->elementAt(C)B
move-result v4
if-eq v3, v4, :cond_2d
move v3, v5
goto :goto_5
:cond_2d
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_30
move v3, v6
goto :goto_5
.end method
.method public getIndexArray()[C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CompactByteArray;->indices:[C
return-object v0
.end method
.method public getValueArray()[B
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
return-object v0
.end method
.method public hashCode()I
.registers 6
const/4 v2, 0x0
const/4 v3, 0x3
iget-object v4, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
array-length v4, v4
div-int/lit8 v4, v4, 0x10
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v1
const/4 v0, 0x0
:goto_c
iget-object v3, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
array-length v3, v3
if-ge v0, v3, :cond_1b
mul-int/lit8 v3, v2, 0x25
iget-object v4, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
aget-byte v4, v4, v0
add-int v2, v3, v4
add-int/2addr v0, v1
goto :goto_c
:cond_1b
return v2
.end method
.method public setElementAt(CB)V
.registers 4
iget-boolean v0, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/ibm/icu/util/CompactByteArray;->expand()V
:cond_7
iget-object v0, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
aput-byte p2, v0, p1
shr-int/lit8 v0, p1, 0x7
invoke-direct {p0, v0, p2}, Lcom/ibm/icu/util/CompactByteArray;->touchBlock(II)V
return-void
.end method
.method public setElementAt(CCB)V
.registers 6
iget-boolean v1, p0, Lcom/ibm/icu/util/CompactByteArray;->isCompact:Z
if-eqz v1, :cond_7
invoke-direct {p0}, Lcom/ibm/icu/util/CompactByteArray;->expand()V
:cond_7
move v0, p1
:goto_8
if-gt v0, p2, :cond_16
iget-object v1, p0, Lcom/ibm/icu/util/CompactByteArray;->values:[B
aput-byte p3, v1, v0
shr-int/lit8 v1, v0, 0x7
invoke-direct {p0, v1, p3}, Lcom/ibm/icu/util/CompactByteArray;->touchBlock(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_16
return-void
.end method