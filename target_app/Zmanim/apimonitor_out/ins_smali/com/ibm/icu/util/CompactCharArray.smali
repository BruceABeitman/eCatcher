.class public final Lcom/ibm/icu/util/CompactCharArray;
.super Ljava/lang/Object;
.source "CompactCharArray.java"
.implements Ljava/lang/Cloneable;
.field static final BLOCKCOUNT:I = 0x20
.field static final BLOCKMASK:I = 0x1f
.field public static final BLOCKSHIFT:I = 0x5
.field static final INDEXCOUNT:I = 0x800
.field static final INDEXSHIFT:I = 0xb
.field public static final UNICODECOUNT:I = 0x10000
.field  defaultValue:C
.field private hashes:[I
.field private indices:[C
.field private isCompact:Z
.field private values:[C
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/ibm/icu/util/CompactCharArray;-><init>(C)V
return-void
.end method
.method public constructor <init>(C)V
.registers 7
const/high16 v2, 0x1
const/4 v4, 0x0
const/16 v3, 0x800
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v1, v2, [C
iput-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
new-array v1, v3, [C
iput-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
new-array v1, v3, [I
iput-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
const/4 v0, 0x0
:goto_15
if-ge v0, v2, :cond_1e
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
aput-char p1, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_1e
const/4 v0, 0x0
:goto_1f
if-ge v0, v3, :cond_2f
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
shl-int/lit8 v2, v0, 0x5
int-to-char v2, v2
aput-char v2, v1, v0
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_2f
iput-boolean v4, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
iput-char p1, p0, Lcom/ibm/icu/util/CompactCharArray;->defaultValue:C
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C
move-result-object v0
invoke-static {p2}, Lcom/ibm/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/CompactCharArray;-><init>([C[C)V
return-void
.end method
.method public constructor <init>([C[C)V
.registers 7
const/16 v3, 0x800
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
add-int/lit8 v2, v2, 0x20
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
iput-object p1, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
iput-object p2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
return-void
.end method
.method private FindOverlappingPosition(I[CI)I
.registers 7
const/4 v1, 0x0
:goto_1
if-ge v1, p3, :cond_18
const/16 v0, 0x20
add-int/lit8 v2, v1, 0x20
if-le v2, p3, :cond_b
sub-int v0, p3, v1
:cond_b
iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
invoke-static {v2, p1, p2, v1, v0}, Lcom/ibm/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z
move-result v2
if-eqz v2, :cond_15
move v2, v1
:goto_14
return v2
:cond_15
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_18
move v2, p3
goto :goto_14
.end method
.method static final arrayRegionMatches([CI[CII)Z
.registers 10
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_14
aget-char v3, p0, v1
add-int v4, v1, v0
aget-char v4, p2, v4
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
iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
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
.registers 6
const/high16 v3, 0x1
const/16 v4, 0x800
iget-boolean v2, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
if-eqz v2, :cond_30
new-array v2, v4, [I
iput-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
new-array v1, v3, [C
const/4 v0, 0x0
:goto_f
if-ge v0, v3, :cond_1b
int-to-char v2, v0
invoke-virtual {p0, v2}, Lcom/ibm/icu/util/CompactCharArray;->elementAt(C)C
move-result v2
aput-char v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1b
const/4 v0, 0x0
:goto_1c
if-ge v0, v4, :cond_28
iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
shl-int/lit8 v3, v0, 0x5
int-to-char v3, v3
aput-char v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_28
const/4 v2, 0x0
iput-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
iput-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
:cond_30
return-void
.end method
.method private final touchBlock(II)V
.registers 6
iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
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
check-cast v1, Lcom/ibm/icu/util/CompactCharArray;
iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
invoke-virtual {v2}, [C->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, [C
check-cast v2, [C
iput-object v2, v1, Lcom/ibm/icu/util/CompactCharArray;->values:[C
iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
invoke-virtual {v2}, [C->clone()Ljava/lang/Object;
move-result-object v2
check-cast v2, [C
check-cast v2, [C
iput-object v2, v1, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
if-eqz v2, :cond_2e
iget-object v2, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
invoke-virtual {v2}, [I->clone()Ljava/lang/Object;
move-result-object p0
check-cast p0, [I
check-cast p0, [I
iput-object p0, v1, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
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
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CompactCharArray;->compact(Z)V
return-void
.end method
.method public compact(Z)V
.registers 16
iget-boolean v11, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
if-nez v11, :cond_99
const/4 v2, 0x0
const v3, 0xffff
const/4 v7, 0x0
if-eqz p1, :cond_31
const/high16 v11, 0x1
new-array v11, v11, [C
move-object v9, v11
:goto_10
const/4 v1, 0x0
:goto_11
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
array-length v11, v11
if-ge v1, v11, :cond_8a
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
const v12, 0xffff
aput-char v12, v11, v1
invoke-direct {p0, v1}, Lcom/ibm/icu/util/CompactCharArray;->blockTouched(I)Z
move-result v10
if-nez v10, :cond_35
const v11, 0xffff
if-eq v3, v11, :cond_35
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
aput-char v3, v11, v1
:goto_2c
:cond_2c
add-int/lit8 v1, v1, 0x1
add-int/lit8 v2, v2, 0x20
goto :goto_11
:cond_31
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
move-object v9, v11
goto :goto_10
:cond_35
const/4 v5, 0x0
const/4 v4, 0x0
:goto_37
if-ge v4, v1, :cond_5c
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
aget v11, v11, v1
iget-object v12, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
aget v12, v12, v4
if-ne v11, v12, :cond_57
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
iget-object v12, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
const/16 v13, 0x20
invoke-static {v11, v2, v12, v5, v13}, Lcom/ibm/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z
move-result v11
if-eqz v11, :cond_57
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
iget-object v12, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
aget-char v12, v12, v4
aput-char v12, v11, v1
:cond_57
add-int/lit8 v4, v4, 0x1
add-int/lit8 v5, v5, 0x20
goto :goto_37
:cond_5c
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
aget-char v11, v11, v1
const v12, 0xffff
if-ne v11, v12, :cond_2c
if-eqz p1, :cond_7e
invoke-direct {p0, v2, v9, v7}, Lcom/ibm/icu/util/CompactCharArray;->FindOverlappingPosition(I[CI)I
move-result v0
:goto_6b
add-int/lit8 v6, v0, 0x20
if-le v6, v7, :cond_81
move v4, v7
:goto_70
if-ge v4, v6, :cond_80
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
add-int v12, v2, v4
sub-int/2addr v12, v0
aget-char v11, v11, v12
aput-char v11, v9, v4
add-int/lit8 v4, v4, 0x1
goto :goto_70
:cond_7e
move v0, v7
goto :goto_6b
:cond_80
move v7, v6
:cond_81
iget-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
int-to-char v12, v0
aput-char v12, v11, v1
if-nez v10, :cond_2c
int-to-char v3, v5
goto :goto_2c
:cond_8a
new-array v8, v7, [C
const/4 v11, 0x0
const/4 v12, 0x0
invoke-static {v9, v11, v8, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v8, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
const/4 v11, 0x1
iput-boolean v11, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
const/4 v11, 0x0
iput-object v11, p0, Lcom/ibm/icu/util/CompactCharArray;->hashes:[I
:cond_99
return-void
.end method
.method public elementAt(C)C
.registers 5
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
shr-int/lit8 v2, p1, 0x5
aget-char v1, v1, v2
const v2, 0xffff
and-int/2addr v1, v2
and-int/lit8 v2, p1, 0x1f
add-int v0, v1, v2
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
array-length v1, v1
if-lt v0, v1, :cond_16
iget-char v1, p0, Lcom/ibm/icu/util/CompactCharArray;->defaultValue:C
:goto_15
return v1
:cond_16
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
aget-char v1, v1, v0
goto :goto_15
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
check-cast v0, Lcom/ibm/icu/util/CompactCharArray;
move-object v2, v0
const/4 v1, 0x0
:goto_1b
const/high16 v3, 0x1
if-ge v1, v3, :cond_30
int-to-char v3, v1
invoke-virtual {p0, v3}, Lcom/ibm/icu/util/CompactCharArray;->elementAt(C)C
move-result v3
int-to-char v4, v1
invoke-virtual {v2, v4}, Lcom/ibm/icu/util/CompactCharArray;->elementAt(C)C
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
iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->indices:[C
return-object v0
.end method
.method public getValueArray()[C
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
return-object v0
.end method
.method public hashCode()I
.registers 6
const/4 v2, 0x0
const/4 v3, 0x3
iget-object v4, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
array-length v4, v4
div-int/lit8 v4, v4, 0x10
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v1
const/4 v0, 0x0
:goto_c
iget-object v3, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
array-length v3, v3
if-ge v0, v3, :cond_1b
mul-int/lit8 v3, v2, 0x25
iget-object v4, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
aget-char v4, v4, v0
add-int v2, v3, v4
add-int/2addr v0, v1
goto :goto_c
:cond_1b
return v2
.end method
.method public setElementAt(CC)V
.registers 4
iget-boolean v0, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/ibm/icu/util/CompactCharArray;->expand()V
:cond_7
iget-object v0, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
aput-char p2, v0, p1
shr-int/lit8 v0, p1, 0x5
invoke-direct {p0, v0, p2}, Lcom/ibm/icu/util/CompactCharArray;->touchBlock(II)V
return-void
.end method
.method public setElementAt(CCC)V
.registers 6
iget-boolean v1, p0, Lcom/ibm/icu/util/CompactCharArray;->isCompact:Z
if-eqz v1, :cond_7
invoke-direct {p0}, Lcom/ibm/icu/util/CompactCharArray;->expand()V
:cond_7
move v0, p1
:goto_8
if-gt v0, p2, :cond_16
iget-object v1, p0, Lcom/ibm/icu/util/CompactCharArray;->values:[C
aput-char p3, v1, v0
shr-int/lit8 v1, v0, 0x5
invoke-direct {p0, v1, p3}, Lcom/ibm/icu/util/CompactCharArray;->touchBlock(II)V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_16
return-void
.end method