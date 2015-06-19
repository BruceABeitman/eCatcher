.class final Lcom/google/zxing/c/a/c;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"
.field private static final a:[C
.field private static final b:[C
.field private static final c:[C
.field private static final d:[C
.method static constructor <clinit>()V
.registers 2
const/16 v1, 0x28
new-array v0, v1, [C
fill-array-data v0, :array_24
sput-object v0, Lcom/google/zxing/c/a/c;->a:[C
const/16 v0, 0x1b
new-array v0, v0, [C
fill-array-data v0, :array_50
sput-object v0, Lcom/google/zxing/c/a/c;->b:[C
new-array v0, v1, [C
fill-array-data v0, :array_70
sput-object v0, Lcom/google/zxing/c/a/c;->c:[C
const/16 v0, 0x20
new-array v0, v0, [C
fill-array-data v0, :array_9c
sput-object v0, Lcom/google/zxing/c/a/c;->d:[C
return-void
nop
:array_24
.array-data 0x2
0x2at 0x0t
0x2at 0x0t
0x2at 0x0t
0x20t 0x0t
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
.end array-data
:array_50
.array-data 0x2
0x21t 0x0t
0x22t 0x0t
0x23t 0x0t
0x24t 0x0t
0x25t 0x0t
0x26t 0x0t
0x27t 0x0t
0x28t 0x0t
0x29t 0x0t
0x2at 0x0t
0x2bt 0x0t
0x2ct 0x0t
0x2dt 0x0t
0x2et 0x0t
0x2ft 0x0t
0x3at 0x0t
0x3bt 0x0t
0x3ct 0x0t
0x3dt 0x0t
0x3et 0x0t
0x3ft 0x0t
0x40t 0x0t
0x5bt 0x0t
0x5ct 0x0t
0x5dt 0x0t
0x5et 0x0t
0x5ft 0x0t
.end array-data
nop
:array_70
.array-data 0x2
0x2at 0x0t
0x2at 0x0t
0x2at 0x0t
0x20t 0x0t
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
0x61t 0x0t
0x62t 0x0t
0x63t 0x0t
0x64t 0x0t
0x65t 0x0t
0x66t 0x0t
0x67t 0x0t
0x68t 0x0t
0x69t 0x0t
0x6at 0x0t
0x6bt 0x0t
0x6ct 0x0t
0x6dt 0x0t
0x6et 0x0t
0x6ft 0x0t
0x70t 0x0t
0x71t 0x0t
0x72t 0x0t
0x73t 0x0t
0x74t 0x0t
0x75t 0x0t
0x76t 0x0t
0x77t 0x0t
0x78t 0x0t
0x79t 0x0t
0x7at 0x0t
.end array-data
:array_9c
.array-data 0x2
0x27t 0x0t
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
0x7bt 0x0t
0x7ct 0x0t
0x7dt 0x0t
0x7et 0x0t
0x7ft 0x0t
.end array-data
.end method
.method private static a(II)I
.registers 3
mul-int/lit16 v0, p1, 0x95
rem-int/lit16 v0, v0, 0xff
add-int/lit8 v0, v0, 0x1
sub-int v0, p0, v0
if-ltz v0, :cond_b
:goto_a
return v0
:cond_b
add-int/lit16 v0, v0, 0x100
goto :goto_a
.end method
.method static a([B)Lcom/google/zxing/b/e;
.registers 8
const/4 v1, 0x0
new-instance v3, Lcom/google/zxing/b/c;
invoke-direct {v3, p0}, Lcom/google/zxing/b/c;-><init>([B)V
new-instance v4, Ljava/lang/StringBuilder;
const/16 v0, 0x64
invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V
new-instance v5, Ljava/lang/StringBuilder;
const/4 v0, 0x0
invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V
new-instance v2, Ljava/util/ArrayList;
const/4 v0, 0x1
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
sget-object v0, Lcom/google/zxing/c/a/e;->b:Lcom/google/zxing/c/a/e;
:cond_1b
sget-object v6, Lcom/google/zxing/c/a/e;->b:Lcom/google/zxing/c/a/e;
if-ne v0, v6, :cond_4b
invoke-static {v3, v4, v5}, Lcom/google/zxing/c/a/c;->a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/c/a/e;
move-result-object v0
:goto_23
sget-object v6, Lcom/google/zxing/c/a/e;->a:Lcom/google/zxing/c/a/e;
if-eq v0, v6, :cond_2d
invoke-virtual {v3}, Lcom/google/zxing/b/c;->a()I
move-result v6
if-gtz v6, :cond_1b
:cond_2d
invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_3a
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3a
new-instance v3, Lcom/google/zxing/b/e;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_71
move-object v0, v1
:goto_47
invoke-direct {v3, p0, v4, v0, v1}, Lcom/google/zxing/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
return-object v3
:cond_4b
sget-object v6, Lcom/google/zxing/c/a/d;->a:[I
invoke-virtual {v0}, Lcom/google/zxing/c/a/e;->ordinal()I
move-result v0
aget v0, v6, v0
packed-switch v0, :pswitch_data_74
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_5b
invoke-static {v3, v4}, Lcom/google/zxing/c/a/c;->a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
:goto_5e
sget-object v0, Lcom/google/zxing/c/a/e;->b:Lcom/google/zxing/c/a/e;
goto :goto_23
:pswitch_61
invoke-static {v3, v4}, Lcom/google/zxing/c/a/c;->b(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
goto :goto_5e
:pswitch_65
invoke-static {v3, v4}, Lcom/google/zxing/c/a/c;->c(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
goto :goto_5e
:pswitch_69
invoke-static {v3, v4}, Lcom/google/zxing/c/a/c;->d(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
goto :goto_5e
:pswitch_6d
invoke-static {v3, v4, v2}, Lcom/google/zxing/c/a/c;->a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
goto :goto_5e
:cond_71
move-object v0, v2
goto :goto_47
nop
:pswitch_data_74
.packed-switch 0x1
:pswitch_5b
:pswitch_61
:pswitch_65
:pswitch_69
:pswitch_6d
.end packed-switch
.end method
.method private static a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Lcom/google/zxing/c/a/e;
.registers 7
const/4 v1, 0x0
move v0, v1
:cond_2
const/16 v2, 0x8
invoke-virtual {p0, v2}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
if-nez v2, :cond_f
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_f
const/16 v3, 0x80
if-gt v2, v3, :cond_20
if-eqz v0, :cond_b2
add-int/lit16 v0, v2, 0x80
:goto_17
add-int/lit8 v0, v0, -0x1
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v0, Lcom/google/zxing/c/a/e;->b:Lcom/google/zxing/c/a/e;
:goto_1f
return-object v0
:cond_20
const/16 v3, 0x81
if-ne v2, v3, :cond_27
sget-object v0, Lcom/google/zxing/c/a/e;->a:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_27
const/16 v3, 0xe5
if-gt v2, v3, :cond_42
add-int/lit16 v2, v2, -0x82
const/16 v3, 0xa
if-ge v2, v3, :cond_36
const/16 v3, 0x30
invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_36
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_39
:goto_39
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v2
if-gtz v2, :cond_2
sget-object v0, Lcom/google/zxing/c/a/e;->b:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_42
const/16 v3, 0xe6
if-ne v2, v3, :cond_49
sget-object v0, Lcom/google/zxing/c/a/e;->c:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_49
const/16 v3, 0xe7
if-ne v2, v3, :cond_50
sget-object v0, Lcom/google/zxing/c/a/e;->g:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_50
const/16 v3, 0xe8
if-ne v2, v3, :cond_5a
const/16 v2, 0x1d
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_39
:cond_5a
const/16 v3, 0xe9
if-eq v2, v3, :cond_39
const/16 v3, 0xea
if-eq v2, v3, :cond_39
const/16 v3, 0xeb
if-ne v2, v3, :cond_68
const/4 v0, 0x1
goto :goto_39
:cond_68
const/16 v3, 0xec
if-ne v2, v3, :cond_77
const-string v2, "[)>\u001e05\u001d"
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\u001e\u0004"
invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_39
:cond_77
const/16 v3, 0xed
if-ne v2, v3, :cond_86
const-string v2, "[)>\u001e06\u001d"
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\u001e\u0004"
invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_39
:cond_86
const/16 v3, 0xee
if-ne v2, v3, :cond_8d
sget-object v0, Lcom/google/zxing/c/a/e;->e:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_8d
const/16 v3, 0xef
if-ne v2, v3, :cond_94
sget-object v0, Lcom/google/zxing/c/a/e;->d:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_94
const/16 v3, 0xf0
if-ne v2, v3, :cond_9b
sget-object v0, Lcom/google/zxing/c/a/e;->f:Lcom/google/zxing/c/a/e;
goto :goto_1f
:cond_9b
const/16 v3, 0xf1
if-eq v2, v3, :cond_39
const/16 v3, 0xf2
if-lt v2, v3, :cond_39
const/16 v3, 0xfe
if-ne v2, v3, :cond_ad
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v2
if-eqz v2, :cond_39
:cond_ad
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_b2
move v0, v2
goto/16 :goto_17
.end method
.method private static a(II[I)V
.registers 6
shl-int/lit8 v0, p0, 0x8
add-int/2addr v0, p1
add-int/lit8 v0, v0, -0x1
div-int/lit16 v1, v0, 0x640
const/4 v2, 0x0
aput v1, p2, v2
mul-int/lit16 v1, v1, 0x640
sub-int/2addr v0, v1
div-int/lit8 v1, v0, 0x28
const/4 v2, 0x1
aput v1, p2, v2
const/4 v2, 0x2
mul-int/lit8 v1, v1, 0x28
sub-int/2addr v0, v1
aput v0, p2, v2
return-void
.end method
.method private static a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
.registers 11
const/16 v8, 0x8
const/4 v7, 0x3
const/4 v1, 0x0
new-array v4, v7, [I
move v0, v1
move v2, v1
:cond_8
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v3
if-ne v3, v8, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-virtual {p0, v8}, Lcom/google/zxing/b/c;->a(I)I
move-result v3
const/16 v5, 0xfe
if-eq v3, v5, :cond_e
invoke-virtual {p0, v8}, Lcom/google/zxing/b/c;->a(I)I
move-result v5
invoke-static {v3, v5, v4}, Lcom/google/zxing/c/a/c;->a(II[I)V
move v3, v1
:goto_1f
if-ge v3, v7, :cond_9d
aget v5, v4, v3
packed-switch v0, :pswitch_data_a6
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_2b
if-ge v5, v7, :cond_32
add-int/lit8 v0, v5, 0x1
:goto_2f
add-int/lit8 v3, v3, 0x1
goto :goto_1f
:cond_32
sget-object v6, Lcom/google/zxing/c/a/c;->a:[C
array-length v6, v6
if-ge v5, v6, :cond_49
sget-object v6, Lcom/google/zxing/c/a/c;->a:[C
aget-char v5, v6, v5
if-eqz v2, :cond_45
add-int/lit16 v2, v5, 0x80
int-to-char v2, v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
goto :goto_2f
:cond_45
invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_49
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_4e
if-eqz v2, :cond_59
add-int/lit16 v0, v5, 0x80
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
:goto_57
move v0, v1
goto :goto_2f
:cond_59
int-to-char v0, v5
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_57
:pswitch_5e
sget-object v0, Lcom/google/zxing/c/a/c;->b:[C
array-length v0, v0
if-ge v5, v0, :cond_76
sget-object v0, Lcom/google/zxing/c/a/c;->b:[C
aget-char v0, v0, v5
if-eqz v2, :cond_72
add-int/lit16 v0, v0, 0x80
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
:goto_70
move v0, v1
goto :goto_2f
:cond_72
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_70
:cond_76
const/16 v0, 0x1b
if-ne v5, v0, :cond_80
const/16 v0, 0x1d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_70
:cond_80
const/16 v0, 0x1e
if-ne v5, v0, :cond_86
const/4 v2, 0x1
goto :goto_70
:cond_86
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_8b
if-eqz v2, :cond_96
add-int/lit16 v0, v5, 0xe0
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
:goto_94
move v0, v1
goto :goto_2f
:cond_96
add-int/lit8 v0, v5, 0x60
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_94
:cond_9d
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v3
if-gtz v3, :cond_8
goto/16 :goto_e
nop
:pswitch_data_a6
.packed-switch 0x0
:pswitch_2b
:pswitch_4e
:pswitch_5e
:pswitch_8b
.end packed-switch
.end method
.method private static a(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;Ljava/util/Collection;)V
.registers 10
const/16 v6, 0x8
iget v0, p0, Lcom/google/zxing/b/c;->a:I
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v6}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
add-int/lit8 v1, v0, 0x1
invoke-static {v2, v0}, Lcom/google/zxing/c/a/c;->a(II)I
move-result v0
if-nez v0, :cond_20
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
div-int/lit8 v0, v0, 0x8
move v3, v0
:goto_19
if-gez v3, :cond_36
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_20
const/16 v2, 0xfa
if-lt v0, v2, :cond_7b
add-int/lit16 v0, v0, -0xf9
mul-int/lit16 v0, v0, 0xfa
invoke-virtual {p0, v6}, Lcom/google/zxing/b/c;->a(I)I
move-result v3
add-int/lit8 v2, v1, 0x1
invoke-static {v3, v1}, Lcom/google/zxing/c/a/c;->a(II)I
move-result v1
add-int/2addr v0, v1
move v3, v0
move v1, v2
goto :goto_19
:cond_36
new-array v4, v3, [B
const/4 v0, 0x0
:goto_39
if-ge v0, v3, :cond_57
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v2
if-ge v2, v6, :cond_46
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_46
invoke-virtual {p0, v6}, Lcom/google/zxing/b/c;->a(I)I
move-result v5
add-int/lit8 v2, v1, 0x1
invoke-static {v5, v1}, Lcom/google/zxing/c/a/c;->a(II)I
move-result v1
int-to-byte v1, v1
aput-byte v1, v4, v0
add-int/lit8 v0, v0, 0x1
move v1, v2
goto :goto_39
:cond_57
invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:try_start_5a
new-instance v0, Ljava/lang/String;
const-string v1, "ISO8859_1"
invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_64
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5a .. :try_end_64} :catch_65
return-void
:catch_65
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Platform does not support required encoding: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_7b
move v3, v0
goto :goto_19
.end method
.method private static b(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
.registers 11
const/16 v8, 0x8
const/4 v7, 0x3
const/4 v1, 0x0
new-array v4, v7, [I
move v0, v1
move v2, v1
:cond_8
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v3
if-ne v3, v8, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-virtual {p0, v8}, Lcom/google/zxing/b/c;->a(I)I
move-result v3
const/16 v5, 0xfe
if-eq v3, v5, :cond_e
invoke-virtual {p0, v8}, Lcom/google/zxing/b/c;->a(I)I
move-result v5
invoke-static {v3, v5, v4}, Lcom/google/zxing/c/a/c;->a(II[I)V
move v3, v1
:goto_1f
if-ge v3, v7, :cond_a8
aget v5, v4, v3
packed-switch v0, :pswitch_data_b0
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_2b
if-ge v5, v7, :cond_32
add-int/lit8 v0, v5, 0x1
:goto_2f
add-int/lit8 v3, v3, 0x1
goto :goto_1f
:cond_32
sget-object v6, Lcom/google/zxing/c/a/c;->c:[C
array-length v6, v6
if-ge v5, v6, :cond_49
sget-object v6, Lcom/google/zxing/c/a/c;->c:[C
aget-char v5, v6, v5
if-eqz v2, :cond_45
add-int/lit16 v2, v5, 0x80
int-to-char v2, v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
goto :goto_2f
:cond_45
invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_49
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_4e
if-eqz v2, :cond_59
add-int/lit16 v0, v5, 0x80
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
:goto_57
move v0, v1
goto :goto_2f
:cond_59
int-to-char v0, v5
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_57
:pswitch_5e
sget-object v0, Lcom/google/zxing/c/a/c;->b:[C
array-length v0, v0
if-ge v5, v0, :cond_76
sget-object v0, Lcom/google/zxing/c/a/c;->b:[C
aget-char v0, v0, v5
if-eqz v2, :cond_72
add-int/lit16 v0, v0, 0x80
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
:goto_70
move v0, v1
goto :goto_2f
:cond_72
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_70
:cond_76
const/16 v0, 0x1b
if-ne v5, v0, :cond_80
const/16 v0, 0x1d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_70
:cond_80
const/16 v0, 0x1e
if-ne v5, v0, :cond_86
const/4 v2, 0x1
goto :goto_70
:cond_86
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:pswitch_8b
sget-object v0, Lcom/google/zxing/c/a/c;->d:[C
array-length v0, v0
if-ge v5, v0, :cond_a3
sget-object v0, Lcom/google/zxing/c/a/c;->d:[C
aget-char v0, v0, v5
if-eqz v2, :cond_9f
add-int/lit16 v0, v0, 0x80
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v2, v1
:goto_9d
move v0, v1
goto :goto_2f
:cond_9f
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_9d
:cond_a3
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_a8
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v3
if-gtz v3, :cond_8
goto/16 :goto_e
:pswitch_data_b0
.packed-switch 0x0
:pswitch_2b
:pswitch_4e
:pswitch_5e
:pswitch_8b
.end packed-switch
.end method
.method private static c(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
.registers 8
const/16 v5, 0x8
const/4 v4, 0x3
new-array v1, v4, [I
:cond_5
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
if-ne v0, v5, :cond_c
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual {p0, v5}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
const/16 v2, 0xfe
if-eq v0, v2, :cond_b
invoke-virtual {p0, v5}, Lcom/google/zxing/b/c;->a(I)I
move-result v2
invoke-static {v0, v2, v1}, Lcom/google/zxing/c/a/c;->a(II[I)V
const/4 v0, 0x0
:goto_1c
if-ge v0, v4, :cond_5f
aget v2, v1, v0
if-nez v2, :cond_2a
const/16 v2, 0xd
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_27
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_2a
const/4 v3, 0x1
if-ne v2, v3, :cond_33
const/16 v2, 0x2a
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_27
:cond_33
const/4 v3, 0x2
if-ne v2, v3, :cond_3c
const/16 v2, 0x3e
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_27
:cond_3c
if-ne v2, v4, :cond_44
const/16 v2, 0x20
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_27
:cond_44
const/16 v3, 0xe
if-ge v2, v3, :cond_4f
add-int/lit8 v2, v2, 0x2c
int-to-char v2, v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_27
:cond_4f
const/16 v3, 0x28
if-ge v2, v3, :cond_5a
add-int/lit8 v2, v2, 0x33
int-to-char v2, v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_27
:cond_5a
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_5f
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
if-gtz v0, :cond_5
goto :goto_b
.end method
.method private static d(Lcom/google/zxing/b/c;Ljava/lang/StringBuilder;)V
.registers 5
:cond_0
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
const/16 v1, 0x10
if-gt v0, v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const/4 v0, 0x0
move v1, v0
:goto_b
const/4 v0, 0x4
if-ge v1, v0, :cond_31
const/4 v0, 0x6
invoke-virtual {p0, v0}, Lcom/google/zxing/b/c;->a(I)I
move-result v0
const/16 v2, 0x1f
if-ne v0, v2, :cond_23
iget v0, p0, Lcom/google/zxing/b/c;->b:I
rsub-int/lit8 v0, v0, 0x8
const/16 v1, 0x8
if-eq v0, v1, :cond_8
invoke-virtual {p0, v0}, Lcom/google/zxing/b/c;->a(I)I
goto :goto_8
:cond_23
and-int/lit8 v2, v0, 0x20
if-nez v2, :cond_29
or-int/lit8 v0, v0, 0x40
:cond_29
int-to-char v0, v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b
:cond_31
invoke-virtual {p0}, Lcom/google/zxing/b/c;->a()I
move-result v0
if-gtz v0, :cond_0
goto :goto_8
.end method