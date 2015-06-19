.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static combins(II)I
.registers 8
sub-int v5, p0, p1
if-le v5, p1, :cond_15
move v3, p1
sub-int v2, p0, p1
:goto_7
const/4 v4, 0x1
const/4 v1, 0x1
move v0, p0
:goto_a
if-le v0, v2, :cond_19
mul-int/2addr v4, v0
if-gt v1, v3, :cond_12
div-int/2addr v4, v1
add-int/lit8 v1, v1, 0x1
:cond_12
add-int/lit8 v0, v0, -0x1
goto :goto_a
:cond_15
sub-int v3, p0, p1
move v2, p1
goto :goto_7
:cond_19
:goto_19
if-gt v1, v3, :cond_1f
div-int/2addr v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_1f
return v4
.end method
.method public static getRSSvalue([IIZ)I
.registers 19
move-object/from16 v0, p0
array-length v3, v0
const/4 v9, 0x0
move-object/from16 v1, p0
array-length v6, v1
const/4 v5, 0x0
:goto_8
if-ge v5, v6, :cond_10
aget v13, v1, v5
add-int/2addr v9, v13
add-int/lit8 v5, v5, 0x1
goto :goto_8
:cond_10
const/4 v12, 0x0
const/4 v10, 0x0
const/4 v2, 0x0
:goto_13
add-int/lit8 v14, v3, -0x1
if-ge v2, v14, :cond_8a
const/4 v4, 0x1
const/4 v14, 0x1
shl-int/2addr v14, v2
or-int/2addr v10, v14
:goto_1b
aget v14, p0, v2
if-ge v4, v14, :cond_86
sub-int v14, v9, v4
add-int/lit8 v14, v14, -0x1
sub-int v15, v3, v2
add-int/lit8 v15, v15, -0x2
invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I
move-result v11
if-eqz p2, :cond_4a
if-nez v10, :cond_4a
sub-int v14, v9, v4
sub-int v15, v3, v2
add-int/lit8 v15, v15, -0x1
sub-int/2addr v14, v15
sub-int v15, v3, v2
add-int/lit8 v15, v15, -0x1
if-lt v14, v15, :cond_4a
sub-int v14, v9, v4
sub-int v15, v3, v2
sub-int/2addr v14, v15
sub-int v15, v3, v2
add-int/lit8 v15, v15, -0x2
invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I
move-result v14
sub-int/2addr v11, v14
:cond_4a
sub-int v14, v3, v2
add-int/lit8 v14, v14, -0x1
const/4 v15, 0x1
if-le v14, v15, :cond_7d
const/4 v7, 0x0
sub-int v14, v9, v4
sub-int v15, v3, v2
add-int/lit8 v15, v15, -0x2
sub-int v8, v14, v15
:goto_5a
move/from16 v0, p1
if-le v8, v0, :cond_6f
sub-int v14, v9, v4
sub-int/2addr v14, v8
add-int/lit8 v14, v14, -0x1
sub-int v15, v3, v2
add-int/lit8 v15, v15, -0x3
invoke-static {v14, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I
move-result v14
add-int/2addr v7, v14
add-int/lit8 v8, v8, -0x1
goto :goto_5a
:cond_6f
add-int/lit8 v14, v3, -0x1
sub-int/2addr v14, v2
mul-int/2addr v14, v7
sub-int/2addr v11, v14
:goto_74
:cond_74
add-int/2addr v12, v11
add-int/lit8 v4, v4, 0x1
const/4 v14, 0x1
shl-int/2addr v14, v2
xor-int/lit8 v14, v14, -0x1
and-int/2addr v10, v14
goto :goto_1b
:cond_7d
sub-int v14, v9, v4
move/from16 v0, p1
if-le v14, v0, :cond_74
add-int/lit8 v11, v11, -0x1
goto :goto_74
:cond_86
sub-int/2addr v9, v4
add-int/lit8 v2, v2, 0x1
goto :goto_13
:cond_8a
return v12
.end method