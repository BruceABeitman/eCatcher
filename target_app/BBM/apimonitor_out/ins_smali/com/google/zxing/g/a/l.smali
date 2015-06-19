.class final Lcom/google/zxing/g/a/l;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"
.field private static final a:[C
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x2d
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/google/zxing/g/a/l;->a:[C
return-void
:array_a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
0x47t 0x0t
0x48t 0x0t
0x49t 0x0t
0x4at 0x0t
0x4bt 0x0t
0x4ct 0x0t
0x4dt 0x0t
0x4et 0x0t
0x4ft 0x0t
0x50t 0x0t
0x51t 0x0t
0x52t 0x0t
0x53t 0x0t
0x54t 0x0t
0x55t 0x0t
0x56t 0x0t
0x57t 0x0t
0x58t 0x0t
0x59t 0x0t
0x5at 0x0t
0x20t 0x0t
0x24t 0x0t
0x25t 0x0t
0x2at 0x0t
0x2bt 0x0t
0x2dt 0x0t
0x2et 0x0t
0x2ft 0x0t
0x3at 0x0t
.end array-data
.end method
.method private static a(I)C
.registers 2
sget-object v0, Lcom/google/zxing/g/a/l;->a:[C
array-length v0, v0
if-lt p0, v0, :cond_a
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_a
sget-object v0, Lcom/google/zxing/g/a/l;->a:[C
aget-char v0, v0, p0
return v0
.end method
.method static a([BLcom/google/zxing/g/a/q;Lcom/google/zxing/g/a/n;Ljava/util/Map;)Lcom/google/zxing/b/e;
.registers 13
new-instance v0, Lcom/google/zxing/b/c;
invoke-direct {v0, p0}, Lcom/google/zxing/b/c;-><init>([B)V
new-instance v1, Ljava/lang/StringBuilder;
const/16 v2, 0x32
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v3, 0x0
const/4 v6, 0x0
new-instance v4, Ljava/util/ArrayList;
const/4 v2, 0x1
invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V
:goto_14
invoke-virtual {v0}, Lcom/google/zxing/b/c;->a()I
move-result v2
const/4 v5, 0x4
if-ge v2, v5, :cond_43
sget-object v2, Lcom/google/zxing/g/a/p;->a:Lcom/google/zxing/g/a/p;
move-object v7, v2
:goto_1e
sget-object v2, Lcom/google/zxing/g/a/p;->a:Lcom/google/zxing/g/a/p;
if-eq v7, v2, :cond_109
sget-object v2, Lcom/google/zxing/g/a/p;->h:Lcom/google/zxing/g/a/p;
if-eq v7, v2, :cond_2a
sget-object v2, Lcom/google/zxing/g/a/p;->i:Lcom/google/zxing/g/a/p;
if-ne v7, v2, :cond_54
:cond_2a
const/4 v2, 0x1
:goto_2b
sget-object v5, Lcom/google/zxing/g/a/p;->a:Lcom/google/zxing/g/a/p;
if-ne v7, v5, :cond_10c
new-instance v2, Lcom/google/zxing/b/e;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_3c
const/4 v4, 0x0
:cond_3c
if-nez p2, :cond_103
const/4 v0, 0x0
:goto_3f
invoke-direct {v2, p0, v1, v4, v0}, Lcom/google/zxing/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
return-object v2
:cond_43
const/4 v2, 0x4
:try_start_44
invoke-virtual {v0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
invoke-static {v2}, Lcom/google/zxing/g/a/p;->a(I)Lcom/google/zxing/g/a/p;
:try_end_4b
.catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_4b} :catch_4e
move-result-object v2
move-object v7, v2
goto :goto_1e
:catch_4e
move-exception v0
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_54
sget-object v2, Lcom/google/zxing/g/a/p;->d:Lcom/google/zxing/g/a/p;
if-ne v7, v2, :cond_6c
invoke-virtual {v0}, Lcom/google/zxing/b/c;->a()I
move-result v2
const/16 v5, 0x10
if-ge v2, v5, :cond_65
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_65
const/16 v2, 0x10
invoke-virtual {v0, v2}, Lcom/google/zxing/b/c;->a(I)I
move v2, v6
goto :goto_2b
:cond_6c
sget-object v2, Lcom/google/zxing/g/a/p;->f:Lcom/google/zxing/g/a/p;
if-ne v7, v2, :cond_b3
const/16 v2, 0x8
invoke-virtual {v0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
and-int/lit16 v3, v2, 0x80
if-nez v3, :cond_87
and-int/lit8 v2, v2, 0x7f
:goto_7c
invoke-static {v2}, Lcom/google/zxing/b/d;->a(I)Lcom/google/zxing/b/d;
move-result-object v3
if-nez v3, :cond_b0
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_87
and-int/lit16 v3, v2, 0xc0
const/16 v5, 0x80
if-ne v3, v5, :cond_99
const/16 v3, 0x8
invoke-virtual {v0, v3}, Lcom/google/zxing/b/c;->a(I)I
move-result v3
and-int/lit8 v2, v2, 0x3f
shl-int/lit8 v2, v2, 0x8
or-int/2addr v2, v3
goto :goto_7c
:cond_99
and-int/lit16 v3, v2, 0xe0
const/16 v5, 0xc0
if-ne v3, v5, :cond_ab
const/16 v3, 0x10
invoke-virtual {v0, v3}, Lcom/google/zxing/b/c;->a(I)I
move-result v3
and-int/lit8 v2, v2, 0x1f
shl-int/lit8 v2, v2, 0x10
or-int/2addr v2, v3
goto :goto_7c
:cond_ab
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_b0
move v2, v6
goto/16 :goto_2b
:cond_b3
sget-object v2, Lcom/google/zxing/g/a/p;->j:Lcom/google/zxing/g/a/p;
if-ne v7, v2, :cond_cd
const/4 v2, 0x4
invoke-virtual {v0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
invoke-virtual {v7, p1}, Lcom/google/zxing/g/a/p;->a(Lcom/google/zxing/g/a/q;)I
move-result v5
invoke-virtual {v0, v5}, Lcom/google/zxing/b/c;->a(I)I
move-result v5
const/4 v8, 0x1
if-ne v2, v8, :cond_ca
invoke-static {v0, v1, v5}, Lcom/google/zxing/g/a/l;->a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;I)V
:cond_ca
move v2, v6
goto/16 :goto_2b
:cond_cd
invoke-virtual {v7, p1}, Lcom/google/zxing/g/a/p;->a(Lcom/google/zxing/g/a/q;)I
move-result v2
invoke-virtual {v0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
sget-object v5, Lcom/google/zxing/g/a/p;->b:Lcom/google/zxing/g/a/p;
if-ne v7, v5, :cond_df
invoke-static {v0, v1, v2}, Lcom/google/zxing/g/a/l;->c(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;I)V
move v2, v6
goto/16 :goto_2b
:cond_df
sget-object v5, Lcom/google/zxing/g/a/p;->c:Lcom/google/zxing/g/a/p;
if-ne v7, v5, :cond_e9
invoke-static {v0, v1, v2, v6}, Lcom/google/zxing/g/a/l;->a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;IZ)V
move v2, v6
goto/16 :goto_2b
:cond_e9
sget-object v5, Lcom/google/zxing/g/a/p;->e:Lcom/google/zxing/g/a/p;
if-ne v7, v5, :cond_f4
move-object v5, p3
invoke-static/range {v0 .. v5}, Lcom/google/zxing/g/a/l;->a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;ILcom/google/zxing/b/d;Ljava/util/Collection;Ljava/util/Map;)V
move v2, v6
goto/16 :goto_2b
:cond_f4
sget-object v5, Lcom/google/zxing/g/a/p;->g:Lcom/google/zxing/g/a/p;
if-ne v7, v5, :cond_fe
invoke-static {v0, v1, v2}, Lcom/google/zxing/g/a/l;->b(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;I)V
move v2, v6
goto/16 :goto_2b
:cond_fe
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_103
invoke-virtual {p2}, Lcom/google/zxing/g/a/n;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_3f
:cond_109
move v2, v6
goto/16 :goto_2b
:cond_10c
move v6, v2
goto/16 :goto_14
.end method
.method private static a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;I)V
.registers 7
mul-int/lit8 v0, p2, 0xd
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v1
if-le v0, v1, :cond_d
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_d
mul-int/lit8 v0, p2, 0x2
new-array v2, v0, [B
const/4 v0, 0x0
move v1, v0
:goto_13
if-lez p2, :cond_43
const/16 v0, 0xd
invoke-virtual {p0, v0}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
div-int/lit8 v3, v0, 0x60
shl-int/lit8 v3, v3, 0x8
rem-int/lit8 v0, v0, 0x60
or-int/2addr v0, v3
const/16 v3, 0x3bf
if-ge v0, v3, :cond_3e
const v3, 0xa1a1
add-int/2addr v0, v3
:goto_2a
shr-int/lit8 v3, v0, 0x8
and-int/lit16 v3, v3, 0xff
int-to-byte v3, v3
aput-byte v3, v2, v1
add-int/lit8 v3, v1, 0x1
and-int/lit16 v0, v0, 0xff
int-to-byte v0, v0
aput-byte v0, v2, v3
add-int/lit8 v0, v1, 0x2
add-int/lit8 p2, p2, -0x1
move v1, v0
goto :goto_13
:cond_3e
const v3, 0xa6a1
add-int/2addr v0, v3
goto :goto_2a
:try_start_43
:cond_43
new-instance v0, Ljava/lang/String;
const-string v1, "GB2312"
invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_4d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4d} :catch_4e
return-void
:catch_4e
move-exception v0
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
.end method
.method private static a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;ILcom/google/zxing/b/d;Ljava/util/Collection;Ljava/util/Map;)V
.registers 9
shl-int/lit8 v0, p2, 0x3
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v1
if-le v0, v1, :cond_d
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_d
new-array v1, p2, [B
const/4 v0, 0x0
:goto_10
if-ge v0, p2, :cond_1e
const/16 v2, 0x8
invoke-virtual {p0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1e
if-nez p3, :cond_30
invoke-static {v1, p5}, Lcom/google/zxing/b/l;->a([BLjava/util/Map;)Ljava/lang/String;
move-result-object v0
:goto_24
:try_start_24
new-instance v2, Ljava/lang/String;
invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_2c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_35
invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
return-void
:cond_30
invoke-virtual {p3}, Lcom/google/zxing/b/d;->name()Ljava/lang/String;
move-result-object v0
goto :goto_24
:catch_35
move-exception v0
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
.end method
.method private static a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;IZ)V
.registers 11
const/16 v6, 0x25
const/16 v5, 0xb
const/4 v4, 0x6
const/4 v3, 0x1
invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I
move-result v0
:goto_a
if-le p2, v3, :cond_30
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v1
if-ge v1, v5, :cond_17
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_17
invoke-virtual {p0, v5}, Lcom/google/zxing/b/c;->a(I)I
move-result v1
div-int/lit8 v2, v1, 0x2d
invoke-static {v2}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
rem-int/lit8 v1, v1, 0x2d
invoke-static {v1}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 p2, p2, -0x2
goto :goto_a
:cond_30
if-ne p2, v3, :cond_48
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v1
if-ge v1, v4, :cond_3d
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_3d
invoke-virtual {p0, v4}, Lcom/google/zxing/b/c;->a(I)I
move-result v1
invoke-static {v1}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_48
if-eqz p3, :cond_74
:goto_4a
invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-ge v0, v1, :cond_74
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v1
if-ne v1, v6, :cond_6b
invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_6e
add-int/lit8 v1, v0, 0x1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v1
if-ne v1, v6, :cond_6e
add-int/lit8 v1, v0, 0x1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
:goto_6b
:cond_6b
add-int/lit8 v0, v0, 0x1
goto :goto_4a
:cond_6e
const/16 v1, 0x1d
invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V
goto :goto_6b
:cond_74
return-void
.end method
.method private static b(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;I)V
.registers 7
mul-int/lit8 v0, p2, 0xd
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v1
if-le v0, v1, :cond_d
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_d
mul-int/lit8 v0, p2, 0x2
new-array v2, v0, [B
const/4 v0, 0x0
move v1, v0
:goto_13
if-lez p2, :cond_3f
const/16 v0, 0xd
invoke-virtual {p0, v0}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
div-int/lit16 v3, v0, 0xc0
shl-int/lit8 v3, v3, 0x8
rem-int/lit16 v0, v0, 0xc0
or-int/2addr v0, v3
const/16 v3, 0x1f00
if-ge v0, v3, :cond_3a
const v3, 0x8140
add-int/2addr v0, v3
:goto_2a
shr-int/lit8 v3, v0, 0x8
int-to-byte v3, v3
aput-byte v3, v2, v1
add-int/lit8 v3, v1, 0x1
int-to-byte v0, v0
aput-byte v0, v2, v3
add-int/lit8 v0, v1, 0x2
add-int/lit8 p2, p2, -0x1
move v1, v0
goto :goto_13
:cond_3a
const v3, 0xc140
add-int/2addr v0, v3
goto :goto_2a
:cond_3f
:try_start_3f
new-instance v0, Ljava/lang/String;
const-string v1, "SJIS"
invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_49
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3f .. :try_end_49} :catch_4a
return-void
:catch_4a
move-exception v0
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
.end method
.method private static c(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;I)V
.registers 8
const/4 v4, 0x7
const/4 v3, 0x4
const/16 v2, 0xa
:goto_4
const/4 v0, 0x3
if-lt p2, v0, :cond_3f
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
if-ge v0, v2, :cond_12
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_12
invoke-virtual {p0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
const/16 v1, 0x3e8
if-lt v0, v1, :cond_1f
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_1f
div-int/lit8 v1, v0, 0x64
invoke-static {v1}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
div-int/lit8 v1, v0, 0xa
rem-int/lit8 v1, v1, 0xa
invoke-static {v1}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
rem-int/lit8 v0, v0, 0xa
invoke-static {v0}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 p2, p2, -0x3
goto :goto_4
:cond_3f
const/4 v0, 0x2
if-ne p2, v0, :cond_6d
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
if-ge v0, v4, :cond_4d
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_4d
invoke-virtual {p0, v4}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
const/16 v1, 0x64
if-lt v0, v1, :cond_5a
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_5a
div-int/lit8 v1, v0, 0xa
invoke-static {v1}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v1
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
rem-int/lit8 v0, v0, 0xa
invoke-static {v0}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_6c
:cond_6c
return-void
:cond_6d
const/4 v0, 0x1
if-ne p2, v0, :cond_6c
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
if-ge v0, v3, :cond_7b
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_7b
invoke-virtual {p0, v3}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
if-lt v0, v2, :cond_86
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_86
invoke-static {v0}, Lcom/google/zxing/g/a/l;->a(I)C
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_6c
.end method