.class final Lcom/google/zxing/g/c/e;
.super Ljava/lang/Object;
.source "MaskUtil.java"
.method static a(Lcom/google/zxing/g/c/b;Z)I
.registers 14
const/4 v10, 0x5
const/4 v5, 0x0
if-eqz p1, :cond_2a
iget v0, p0, Lcom/google/zxing/g/c/b;->c:I
move v8, v0
:goto_7
if-eqz p1, :cond_2e
iget v0, p0, Lcom/google/zxing/g/c/b;->b:I
:goto_b
iget-object v9, p0, Lcom/google/zxing/g/c/b;->a:[[B
move v7, v5
move v1, v5
:goto_f
if-ge v7, v8, :cond_4d
const/4 v2, -0x1
move v4, v5
move v6, v5
:goto_14
if-ge v4, v0, :cond_42
if-eqz p1, :cond_31
aget-object v3, v9, v7
aget-byte v3, v3, v4
:goto_1c
if-ne v3, v2, :cond_36
add-int/lit8 v3, v6, 0x1
move v11, v2
move v2, v3
move v3, v1
move v1, v11
:goto_24
add-int/lit8 v4, v4, 0x1
move v6, v2
move v2, v1
move v1, v3
goto :goto_14
:cond_2a
iget v0, p0, Lcom/google/zxing/g/c/b;->b:I
move v8, v0
goto :goto_7
:cond_2e
iget v0, p0, Lcom/google/zxing/g/c/b;->c:I
goto :goto_b
:cond_31
aget-object v3, v9, v4
aget-byte v3, v3, v7
goto :goto_1c
:cond_36
if-lt v6, v10, :cond_3d
add-int/lit8 v2, v6, -0x5
add-int/lit8 v2, v2, 0x3
add-int/2addr v1, v2
:cond_3d
const/4 v2, 0x1
move v11, v3
move v3, v1
move v1, v11
goto :goto_24
:cond_42
if-le v6, v10, :cond_49
add-int/lit8 v2, v6, -0x5
add-int/lit8 v2, v2, 0x3
add-int/2addr v1, v2
:cond_49
add-int/lit8 v2, v7, 0x1
move v7, v2
goto :goto_f
:cond_4d
return v1
.end method