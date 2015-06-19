.class public Lcom/lenovo/anyshare/sdk/internal/de;
.super Ljava/lang/Object;
.source "SampleDecoder.java"
.field private static a:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
return-void
.end method
.method public static a(II)D
.registers 9
const-wide v0, 0x408f400000000000L
mul-int v3, p1, p0
div-int/lit16 v2, v3, 0x3e8
int-to-double v3, v2
mul-double/2addr v3, v0
const-wide/high16 v5, 0x4080
sub-double/2addr v3, v5
const-wide/high16 v5, 0x4060
div-double/2addr v3, v5
const-wide/high16 v5, 0x3ff0
add-double/2addr v3, v5
div-double/2addr v3, v0
return-wide v3
.end method
.method private static a(I)I
.registers 2
add-int/lit16 v0, p0, -0x200
div-int/lit16 v0, v0, 0x80
add-int/lit8 v0, v0, 0x1
return v0
.end method
.method private static a([FII)I
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
move v0, p1
:goto_3
if-gt v0, p2, :cond_11
aget v3, p0, v0
cmpg-float v3, v2, v3
if-gez v3, :cond_e
aget v2, p0, v0
move v1, v0
:cond_e
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_11
return v1
.end method
.method public static a()V
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method private static a([[F[I[II)Z
.registers 16
const-wide v10, 0x3f80624dd2f1a9fcL
add-int/lit8 v0, p3, 0x14
array-length v8, p1
if-lt v0, v8, :cond_d
array-length v8, p1
add-int/lit8 v0, v8, -0x1
:cond_d
add-int/lit8 v6, v0, -0x28
const/4 v4, 0x0
sub-int v8, v0, v6
add-int/lit8 v7, v8, 0x1
if-gez v6, :cond_56
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v8
sget-object v9, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v9
if-le v8, v9, :cond_2d
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
neg-int v6, v8
sub-int v8, v0, v6
add-int/lit8 v7, v8, 0x1
:cond_2d
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
add-int/lit8 v5, v8, -0x1
:goto_35
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v9
sub-int/2addr v8, v9
if-lt v5, v8, :cond_55
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/Boolean;
invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
move-result v8
if-nez v8, :cond_52
add-int/lit8 v4, v4, 0x1
:cond_52
add-int/lit8 v5, v5, -0x1
goto :goto_35
:cond_55
const/4 v6, 0x0
:cond_56
move v1, v6
:goto_57
if-gt v1, v0, :cond_74
aget v3, p1, v1
aget v2, p2, v1
aget-object v8, p0, v1
aget v8, v8, v3
float-to-double v8, v8
cmpg-double v8, v8, v10
if-gez v8, :cond_71
aget-object v8, p0, v1
aget v8, v8, v2
float-to-double v8, v8
cmpg-double v8, v8, v10
if-gez v8, :cond_71
add-int/lit8 v4, v4, 0x1
:cond_71
add-int/lit8 v1, v1, 0x1
goto :goto_57
:cond_74
int-to-double v8, v4
int-to-double v10, v7
div-double/2addr v8, v10
const-wide v10, 0x3fe999999999999aL
cmpg-double v8, v8, v10
if-gtz v8, :cond_82
const/4 v8, 0x1
:goto_81
return v8
:cond_82
const/4 v8, 0x0
goto :goto_81
.end method
.method public static a(I[S)[Lcom/lenovo/anyshare/sdk/internal/cv;
.registers 18
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/de;->b()V
invoke-static {}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->getInstance()Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;
move-result-object v10
move-object/from16 v0, p1
invoke-virtual {v10, v0}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->RecognizeFrequency([S)[[F
move-result-object v8
array-length v10, v8
new-array v9, v10, [Lcom/lenovo/anyshare/sdk/internal/cv;
array-length v10, v8
new-array v7, v10, [I
array-length v10, v8
new-array v6, v10, [I
const/4 v3, 0x0
:goto_17
array-length v10, v8
if-ge v3, v10, :cond_35
aget-object v10, v8, v3
const/16 v11, 0x34
const/16 v12, 0x73
invoke-static {v10, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/de;->a([FII)I
move-result v10
aput v10, v7, v3
aget-object v10, v8, v3
const/16 v11, 0x74
const/16 v12, 0xe6
invoke-static {v10, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/de;->a([FII)I
move-result v10
aput v10, v6, v3
add-int/lit8 v3, v3, 0x1
goto :goto_17
:cond_35
const/4 v3, 0x0
:goto_36
array-length v10, v8
if-ge v3, v10, :cond_d3
aget v5, v7, v3
aget v2, v6, v3
invoke-static {}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->getInstance()Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;
move-result-object v10
invoke-virtual {v10, v5}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->IndexToFrequency(I)I
move-result v10
int-to-short v4, v10
invoke-static {}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->getInstance()Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;
move-result-object v10
invoke-virtual {v10, v2}, Lcom/lenovo/tonecodec/decoder/filter/FreqFilterNative;->IndexToFrequency(I)I
move-result v10
int-to-short v1, v10
aget-object v10, v8, v3
aget v10, v10, v5
float-to-double v10, v10
const-wide v12, 0x3f80624dd2f1a9fcL
cmpl-double v10, v10, v12
if-gez v10, :cond_6b
aget-object v10, v8, v3
aget v10, v10, v2
float-to-double v10, v10
const-wide v12, 0x3f80624dd2f1a9fcL
cmpl-double v10, v10, v12
if-ltz v10, :cond_9f
:cond_6b
invoke-static {v4, v1}, Lcom/lenovo/anyshare/sdk/internal/cv;->a(SS)Lcom/lenovo/anyshare/sdk/internal/cv;
move-result-object v10
aput-object v10, v9, v3
:goto_71
array-length v10, v8
add-int/lit8 v10, v10, -0x28
if-lt v3, v10, :cond_9c
sget-object v11, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
aget-object v10, v8, v3
aget v10, v10, v5
float-to-double v12, v10
const-wide v14, 0x3f80624dd2f1a9fcL
cmpl-double v10, v12, v14
if-gez v10, :cond_94
aget-object v10, v8, v3
aget v10, v10, v2
float-to-double v12, v10
const-wide v14, 0x3f80624dd2f1a9fcL
cmpl-double v10, v12, v14
if-ltz v10, :cond_d1
:cond_94
const/4 v10, 0x1
:goto_95
invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v10
invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_9c
add-int/lit8 v3, v3, 0x1
goto :goto_36
:cond_9f
aget-object v10, v8, v3
aget v10, v10, v5
float-to-double v10, v10
const-wide v12, 0x3f60624dd2f1a9fcL
cmpl-double v10, v10, v12
if-gez v10, :cond_bb
aget-object v10, v8, v3
aget v10, v10, v2
float-to-double v10, v10
const-wide v12, 0x3f60624dd2f1a9fcL
cmpl-double v10, v10, v12
if-ltz v10, :cond_c8
:cond_bb
invoke-static {v8, v7, v6, v3}, Lcom/lenovo/anyshare/sdk/internal/de;->a([[F[I[II)Z
move-result v10
if-eqz v10, :cond_c8
invoke-static {v4, v1}, Lcom/lenovo/anyshare/sdk/internal/cv;->a(SS)Lcom/lenovo/anyshare/sdk/internal/cv;
move-result-object v10
aput-object v10, v9, v3
goto :goto_71
:cond_c8
const/4 v10, 0x0
const/4 v11, 0x0
invoke-static {v10, v11}, Lcom/lenovo/anyshare/sdk/internal/cv;->a(BZ)Lcom/lenovo/anyshare/sdk/internal/cv;
move-result-object v10
aput-object v10, v9, v3
goto :goto_71
:cond_d1
const/4 v10, 0x0
goto :goto_95
:cond_d3
return-object v9
.end method
.method public static a([S)[S
.registers 6
const/4 v0, 0x0
array-length v4, p0
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/de;->a(I)I
move-result v2
mul-int/lit16 v3, v2, 0x80
array-length v4, p0
if-ge v3, v4, :cond_14
array-length v4, p0
sub-int v1, v4, v3
new-array v0, v1, [S
const/4 v4, 0x0
invoke-static {p0, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_14
return-object v0
.end method
.method public static b()V
.registers 4
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
const/16 v3, 0x28
if-le v2, v3, :cond_1e
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v1, v2, -0x28
add-int/lit8 v0, v1, -0x1
:goto_14
if-ltz v0, :cond_1e
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/de;->a:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
add-int/lit8 v0, v0, -0x1
goto :goto_14
:cond_1e
return-void
.end method