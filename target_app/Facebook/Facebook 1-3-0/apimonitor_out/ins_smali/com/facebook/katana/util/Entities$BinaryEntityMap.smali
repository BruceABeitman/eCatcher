.class  Lcom/facebook/katana/util/Entities$BinaryEntityMap;
.super Lcom/facebook/katana/util/Entities$ArrayEntityMap;
.source "Entities.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/util/Entities$ArrayEntityMap;-><init>()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/util/Entities$ArrayEntityMap;-><init>(I)V
return-void
.end method
.method private binarySearch(I)I
.registers 8
const/4 v5, 0x1
const/4 v1, 0x0
iget v4, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->size:I
sub-int v0, v4, v5
:goto_6
if-le v1, v0, :cond_c
add-int/lit8 v4, v1, 0x1
neg-int v4, v4
:goto_b
return v4
:cond_c
add-int v4, v1, v0
shr-int/lit8 v2, v4, 0x1
iget-object v4, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->values:[I
aget v3, v4, v2
if-ge v3, p1, :cond_19
add-int/lit8 v1, v2, 0x1
goto :goto_6
:cond_19
if-le v3, p1, :cond_1e
sub-int v0, v2, v5
goto :goto_6
:cond_1e
move v4, v2
goto :goto_b
.end method
.method public add(Ljava/lang/String;I)V
.registers 8
iget v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->size:I
add-int/lit8 v1, v1, 0x1
invoke-virtual {p0, v1}, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->ensureCapacity(I)V
invoke-direct {p0, p2}, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->binarySearch(I)I
move-result v0
if-lez v0, :cond_e
:goto_d
return-void
:cond_e
add-int/lit8 v1, v0, 0x1
neg-int v0, v1
iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->values:[I
iget-object v2, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->values:[I
add-int/lit8 v3, v0, 0x1
iget v4, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->size:I
sub-int/2addr v4, v0
invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->values:[I
aput p2, v1, v0
iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->names:[Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->names:[Ljava/lang/String;
add-int/lit8 v3, v0, 0x1
iget v4, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->size:I
sub-int/2addr v4, v0
invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->names:[Ljava/lang/String;
aput-object p1, v1, v0
iget v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->size:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->size:I
goto :goto_d
.end method
.method public name(I)Ljava/lang/String;
.registers 4
invoke-direct {p0, p1}, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->binarySearch(I)I
move-result v0
if-gez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->names:[Ljava/lang/String;
aget-object v1, v1, v0
goto :goto_7
.end method