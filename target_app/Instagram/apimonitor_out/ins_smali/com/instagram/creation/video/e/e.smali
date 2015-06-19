.class public final Lcom/instagram/creation/video/e/e;
.super Ljava/lang/Object;
.source "VideoFilterUtil.java"
.field private static final a:[[F
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0x8
new-array v0, v3, [[F
const/4 v1, 0x0
new-array v2, v3, [F
fill-array-data v2, :array_48
aput-object v2, v0, v1
const/4 v1, 0x1
new-array v2, v3, [F
fill-array-data v2, :array_5c
aput-object v2, v0, v1
const/4 v1, 0x2
new-array v2, v3, [F
fill-array-data v2, :array_70
aput-object v2, v0, v1
const/4 v1, 0x3
new-array v2, v3, [F
fill-array-data v2, :array_84
aput-object v2, v0, v1
const/4 v1, 0x4
new-array v2, v3, [F
fill-array-data v2, :array_98
aput-object v2, v0, v1
const/4 v1, 0x5
new-array v2, v3, [F
fill-array-data v2, :array_ac
aput-object v2, v0, v1
const/4 v1, 0x6
new-array v2, v3, [F
fill-array-data v2, :array_c0
aput-object v2, v0, v1
const/4 v1, 0x7
new-array v2, v3, [F
fill-array-data v2, :array_d4
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/creation/video/e/e;->a:[[F
return-void
nop
:array_48
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_84
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_70
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_98
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_5c
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_c0
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_d4
.array-data 0x4
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
:array_ac
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x80t 0x3ft
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public static a([Lcom/instagram/creation/video/e/c;I)I
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p0
if-ge v0, v1, :cond_10
aget-object v1, p0, v0
invoke-virtual {v1}, Lcom/instagram/creation/video/e/c;->b()I
move-result v1
if-ne v1, p1, :cond_d
return v0
:cond_d
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Filter not found"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static a()Lcom/instagram/creation/video/e/c;
.registers 2
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v0
const-string v1, "Normal"
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v0
sget v1, Lcom/facebook/au;->filter_normal:I
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v0
const-string v1, "Nofilter"
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;I)Lcom/instagram/creation/video/e/c;
.registers 6
invoke-static {p0}, Lcom/instagram/creation/video/e/e;->a(Landroid/content/Context;)[Lcom/instagram/creation/video/e/c;
move-result-object v2
const/4 v0, 0x0
move v1, v0
:goto_6
const/16 v0, 0xe
if-ge v1, v0, :cond_17
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->b()I
move-result v3
if-ne v3, p1, :cond_13
:goto_12
return-object v0
:cond_13
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:cond_17
const/4 v0, 0x0
goto :goto_12
.end method
.method private static a([F)Ljava/nio/FloatBuffer;
.registers 3
array-length v0, p0
mul-int/lit8 v0, v0, 0x4
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
return-object v0
.end method
.method public static final a(FF)[F
.registers 11
const/4 v8, 0x2
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v7, -0x4080
const/high16 v6, 0x3f80
cmpg-float v0, p0, v6
if-gez v0, :cond_3a
move v0, v1
:goto_c
if-eqz v0, :cond_10
div-float p0, v6, p0
:cond_10
const/high16 v3, 0x4000
sub-float v4, p0, v6
mul-float/2addr v3, v4
mul-float v4, p1, v3
add-float/2addr v4, v6
sub-float v5, v6, p1
mul-float/2addr v3, v5
add-float/2addr v3, v6
if-eqz v0, :cond_3c
const/16 v0, 0x8
new-array v0, v0, [F
aput v7, v0, v2
aput v4, v0, v1
aput v6, v0, v8
const/4 v1, 0x3
aput v4, v0, v1
const/4 v1, 0x4
aput v7, v0, v1
const/4 v1, 0x5
neg-float v2, v3
aput v2, v0, v1
const/4 v1, 0x6
aput v6, v0, v1
const/4 v1, 0x7
neg-float v2, v3
aput v2, v0, v1
:goto_39
return-object v0
:cond_3a
move v0, v2
goto :goto_c
:cond_3c
const/16 v0, 0x8
new-array v0, v0, [F
neg-float v5, v4
aput v5, v0, v2
aput v6, v0, v1
aput v3, v0, v8
const/4 v1, 0x3
aput v6, v0, v1
const/4 v1, 0x4
neg-float v2, v4
aput v2, v0, v1
const/4 v1, 0x5
aput v7, v0, v1
const/4 v1, 0x6
aput v3, v0, v1
const/4 v1, 0x7
aput v7, v0, v1
goto :goto_39
.end method
.method public static final a(I)[F
.registers 3
sget-object v0, Lcom/instagram/creation/video/e/e;->a:[[F
rem-int/lit8 v1, p0, 0x8
aget-object v0, v0, v1
return-object v0
.end method
.method public static a(Landroid/content/Context;)[Lcom/instagram/creation/video/e/c;
.registers 6
const/16 v0, 0xe
new-array v0, v0, [Lcom/instagram/creation/video/e/c;
const/4 v1, 0x0
invoke-static {}, Lcom/instagram/creation/video/e/e;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x6d
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Stinson"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_stinson:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Stinson"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/stinson/curves.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x6a
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Vesper"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_vesper:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Vesper"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/vesper/map.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x70
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Clarendon"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_clarendon:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Clarendon"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/clarendon/Glacial1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map2"
const-string v4, "video/clarendon/Glacial2.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x76
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Maven"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_maven:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Maven"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map1"
const-string v4, "video/maven/Lansdowne1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map2"
const-string v4, "video/maven/Lansdowne2.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x72
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Gingham"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_gingham:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Gingham"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/gingham/curves1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "mapLgg"
const-string v4, "video/gingham/curves_lgg.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x6b
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Ginza"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_ginza:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Ginza"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map1"
const-string v4, "video/ginza/curves1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map2"
const-string v4, "video/ginza/curves2.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x71
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Skyline"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_skyline:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Skyline"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/skyline/curves.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x8
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x69
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Dogpatch"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_dogpatch:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Dogpatch"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map1"
const-string v4, "video/dogpatch/curves1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "mapLgg"
const-string v4, "video/dogpatch/curves_lgg.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0x9
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x73
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Brooklyn"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_brooklyn:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Brooklyn"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/brooklyn/curves.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xa
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x6f
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Moon"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_moon:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Moon"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map1"
const-string v4, "video/moon/curves1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map2"
const-string v4, "video/moon/curves2.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xb
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x75
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Helena"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_helena:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Helena"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map1"
const-string v4, "video/helena/epic_1.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map2"
const-string v4, "video/helena/epic_2.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xc
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x74
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Ashby"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_ashby:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Ashby"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "tonemap"
const-string v4, "video/ashby/tonemap.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "levels"
const-string v4, "video/ashby/levels.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
const/16 v1, 0xd
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2, p0}, Lcom/instagram/creation/video/e/d;->a(Landroid/content/Context;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const/16 v3, 0x6c
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Charmes"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
sget v3, Lcom/facebook/au;->filter_charmes:I
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "Charmes"
invoke-virtual {v2, v3}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
const-string v3, "map"
const-string v4, "video/charmes/map.png"
invoke-virtual {v2, v3, v4}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method
.method public static b()Lcom/instagram/creation/video/e/c;
.registers 2
invoke-static {}, Lcom/instagram/creation/video/e/c;->f()Lcom/instagram/creation/video/e/d;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->a(I)Lcom/instagram/creation/video/e/d;
move-result-object v0
const-string v1, "YUV"
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->b(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->b(I)Lcom/instagram/creation/video/e/d;
move-result-object v0
const-string v1, "YUV"
invoke-virtual {v0, v1}, Lcom/instagram/creation/video/e/d;->a(Ljava/lang/String;)Lcom/instagram/creation/video/e/d;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/e/d;->a()Lcom/instagram/creation/video/e/c;
move-result-object v0
return-object v0
.end method
.method public static final c()Lcom/instagram/creation/video/j/l;
.registers 3
new-instance v0, Lcom/instagram/creation/video/j/l;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/instagram/creation/video/e/e;->a(FF)[F
move-result-object v1
invoke-static {v1}, Lcom/instagram/creation/video/e/e;->a([F)Ljava/nio/FloatBuffer;
move-result-object v1
const/4 v2, 0x0
invoke-static {v2}, Lcom/instagram/creation/video/e/e;->a(I)[F
move-result-object v2
invoke-static {v2}, Lcom/instagram/creation/video/e/e;->a([F)Ljava/nio/FloatBuffer;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/j/l;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
return-object v0
.end method
.method public static final d()Lcom/instagram/creation/video/j/l;
.registers 3
new-instance v0, Lcom/instagram/creation/video/j/l;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/instagram/creation/video/e/e;->a(FF)[F
move-result-object v1
invoke-static {v1}, Lcom/instagram/creation/video/e/e;->a([F)Ljava/nio/FloatBuffer;
move-result-object v1
const/4 v2, 0x4
invoke-static {v2}, Lcom/instagram/creation/video/e/e;->a(I)[F
move-result-object v2
invoke-static {v2}, Lcom/instagram/creation/video/e/e;->a([F)Ljava/nio/FloatBuffer;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/creation/video/j/l;-><init>(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
return-object v0
.end method