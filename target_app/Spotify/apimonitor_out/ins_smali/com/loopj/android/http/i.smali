.class final Lcom/loopj/android/http/i;
.super Lcom/loopj/android/http/h;
.source "SourceFile"
.field private static final g:[B
.field private static final h:[B
.field  c:I
.field public final d:Z
.field public final e:Z
.field public final f:Z
.field private final i:[B
.field private j:I
.field private final k:[B
.method static constructor <clinit>()V
.registers 2
const/16 v1, 0x40
new-array v0, v1, [B
fill-array-data v0, :array_12
sput-object v0, Lcom/loopj/android/http/i;->g:[B
new-array v0, v1, [B
fill-array-data v0, :array_36
sput-object v0, Lcom/loopj/android/http/i;->h:[B
return-void
nop
:array_36
.array-data 0x1
0x41t
0x42t
0x43t
0x44t
0x45t
0x46t
0x47t
0x48t
0x49t
0x4at
0x4bt
0x4ct
0x4dt
0x4et
0x4ft
0x50t
0x51t
0x52t
0x53t
0x54t
0x55t
0x56t
0x57t
0x58t
0x59t
0x5at
0x61t
0x62t
0x63t
0x64t
0x65t
0x66t
0x67t
0x68t
0x69t
0x6at
0x6bt
0x6ct
0x6dt
0x6et
0x6ft
0x70t
0x71t
0x72t
0x73t
0x74t
0x75t
0x76t
0x77t
0x78t
0x79t
0x7at
0x30t
0x31t
0x32t
0x33t
0x34t
0x35t
0x36t
0x37t
0x38t
0x39t
0x2dt
0x5ft
.end array-data
:array_12
.array-data 0x1
0x41t
0x42t
0x43t
0x44t
0x45t
0x46t
0x47t
0x48t
0x49t
0x4at
0x4bt
0x4ct
0x4dt
0x4et
0x4ft
0x50t
0x51t
0x52t
0x53t
0x54t
0x55t
0x56t
0x57t
0x58t
0x59t
0x5at
0x61t
0x62t
0x63t
0x64t
0x65t
0x66t
0x67t
0x68t
0x69t
0x6at
0x6bt
0x6ct
0x6dt
0x6et
0x6ft
0x70t
0x71t
0x72t
0x73t
0x74t
0x75t
0x76t
0x77t
0x78t
0x79t
0x7at
0x30t
0x31t
0x32t
0x33t
0x34t
0x35t
0x36t
0x37t
0x38t
0x39t
0x2bt
0x2ft
.end array-data
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/loopj/android/http/h;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/loopj/android/http/i;->a:[B
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/loopj/android/http/i;->d:Z
iput-boolean v1, p0, Lcom/loopj/android/http/i;->e:Z
iput-boolean v1, p0, Lcom/loopj/android/http/i;->f:Z
sget-object v0, Lcom/loopj/android/http/i;->g:[B
iput-object v0, p0, Lcom/loopj/android/http/i;->k:[B
const/4 v0, 0x2
new-array v0, v0, [B
iput-object v0, p0, Lcom/loopj/android/http/i;->i:[B
iput v1, p0, Lcom/loopj/android/http/i;->c:I
iget-boolean v0, p0, Lcom/loopj/android/http/i;->e:Z
if-eqz v0, :cond_22
const/16 v0, 0x13
:goto_1f
iput v0, p0, Lcom/loopj/android/http/i;->j:I
return-void
:cond_22
const/4 v0, -0x1
goto :goto_1f
.end method
.method public final a(I)I
.registers 3
mul-int/lit8 v0, p1, 0x8
div-int/lit8 v0, v0, 0x5
add-int/lit8 v0, v0, 0xa
return v0
.end method
.method public final a([BIIZ)Z
.registers 14
iget-object v6, p0, Lcom/loopj/android/http/i;->k:[B
iget-object v7, p0, Lcom/loopj/android/http/i;->a:[B
const/4 v4, 0x0
iget v1, p0, Lcom/loopj/android/http/i;->j:I
add-int v8, p3, p2
const/4 v0, -0x1
iget v2, p0, Lcom/loopj/android/http/i;->c:I
packed-switch v2, :pswitch_data_22a
:cond_f
move v3, v0
move v2, p2
:goto_11
const/4 v0, -0x1
if-eq v3, v0, :cond_226
const/4 v0, 0x0
shr-int/lit8 v4, v3, 0x12
and-int/lit8 v4, v4, 0x3f
aget-byte v4, v6, v4
aput-byte v4, v7, v0
const/4 v0, 0x1
shr-int/lit8 v4, v3, 0xc
and-int/lit8 v4, v4, 0x3f
aget-byte v4, v6, v4
aput-byte v4, v7, v0
const/4 v0, 0x2
shr-int/lit8 v4, v3, 0x6
and-int/lit8 v4, v4, 0x3f
aget-byte v4, v6, v4
aput-byte v4, v7, v0
const/4 v4, 0x3
const/4 v0, 0x4
and-int/lit8 v3, v3, 0x3f
aget-byte v3, v6, v3
aput-byte v3, v7, v4
add-int/lit8 v1, v1, -0x1
if-nez v1, :cond_222
iget-boolean v1, p0, Lcom/loopj/android/http/i;->f:Z
if-eqz v1, :cond_45
const/4 v1, 0x4
const/4 v0, 0x5
const/16 v3, 0xd
aput-byte v3, v7, v1
:cond_45
add-int/lit8 v4, v0, 0x1
const/16 v1, 0xa
aput-byte v1, v7, v0
const/16 v0, 0x13
move v5, v0
:goto_4e
add-int/lit8 v0, v2, 0x3
if-gt v0, v8, :cond_f4
aget-byte v0, p1, v2
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v0, v0, 0x10
add-int/lit8 v1, v2, 0x1
aget-byte v1, p1, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
add-int/lit8 v1, v2, 0x2
aget-byte v1, p1, v1
and-int/lit16 v1, v1, 0xff
or-int/2addr v0, v1
shr-int/lit8 v1, v0, 0x12
and-int/lit8 v1, v1, 0x3f
aget-byte v1, v6, v1
aput-byte v1, v7, v4
add-int/lit8 v1, v4, 0x1
shr-int/lit8 v3, v0, 0xc
and-int/lit8 v3, v3, 0x3f
aget-byte v3, v6, v3
aput-byte v3, v7, v1
add-int/lit8 v1, v4, 0x2
shr-int/lit8 v3, v0, 0x6
and-int/lit8 v3, v3, 0x3f
aget-byte v3, v6, v3
aput-byte v3, v7, v1
add-int/lit8 v1, v4, 0x3
and-int/lit8 v0, v0, 0x3f
aget-byte v0, v6, v0
aput-byte v0, v7, v1
add-int/lit8 v2, v2, 0x3
add-int/lit8 v1, v4, 0x4
add-int/lit8 v0, v5, -0x1
if-nez v0, :cond_21e
iget-boolean v0, p0, Lcom/loopj/android/http/i;->f:Z
if-eqz v0, :cond_21b
add-int/lit8 v0, v1, 0x1
const/16 v3, 0xd
aput-byte v3, v7, v1
:goto_9e
add-int/lit8 v4, v0, 0x1
const/16 v1, 0xa
aput-byte v1, v7, v0
const/16 v0, 0x13
move v5, v0
goto :goto_4e
:pswitch_a8
move v3, v0
move v2, p2
goto/16 :goto_11
:pswitch_ac
add-int/lit8 v2, p2, 0x2
if-gt v2, v8, :cond_f
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
const/4 v2, 0x0
aget-byte v0, v0, v2
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v0, v0, 0x10
add-int/lit8 v2, p2, 0x1
aget-byte v3, p1, p2
and-int/lit16 v3, v3, 0xff
shl-int/lit8 v3, v3, 0x8
or-int/2addr v0, v3
add-int/lit8 p2, v2, 0x1
aget-byte v2, p1, v2
and-int/lit16 v2, v2, 0xff
or-int/2addr v0, v2
const/4 v2, 0x0
iput v2, p0, Lcom/loopj/android/http/i;->c:I
move v3, v0
move v2, p2
goto/16 :goto_11
:pswitch_d0
add-int/lit8 v2, p2, 0x1
if-gt v2, v8, :cond_f
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
const/4 v2, 0x0
aget-byte v0, v0, v2
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v0, v0, 0x10
iget-object v2, p0, Lcom/loopj/android/http/i;->i:[B
const/4 v3, 0x1
aget-byte v2, v2, v3
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
or-int/2addr v0, v2
add-int/lit8 v2, p2, 0x1
aget-byte v3, p1, p2
and-int/lit16 v3, v3, 0xff
or-int/2addr v0, v3
const/4 v3, 0x0
iput v3, p0, Lcom/loopj/android/http/i;->c:I
move v3, v0
goto/16 :goto_11
:cond_f4
if-eqz p4, :cond_1e5
iget v0, p0, Lcom/loopj/android/http/i;->c:I
sub-int v0, v2, v0
add-int/lit8 v1, v8, -0x1
if-ne v0, v1, :cond_154
const/4 v1, 0x0
iget v0, p0, Lcom/loopj/android/http/i;->c:I
if-lez v0, :cond_151
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
const/4 v2, 0x0
const/4 v1, 0x1
aget-byte v0, v0, v2
:goto_109
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v2, v0, 0x4
iget v0, p0, Lcom/loopj/android/http/i;->c:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/loopj/android/http/i;->c:I
add-int/lit8 v1, v4, 0x1
shr-int/lit8 v0, v2, 0x6
and-int/lit8 v0, v0, 0x3f
aget-byte v0, v6, v0
aput-byte v0, v7, v4
add-int/lit8 v0, v1, 0x1
and-int/lit8 v2, v2, 0x3f
aget-byte v2, v6, v2
aput-byte v2, v7, v1
iget-boolean v1, p0, Lcom/loopj/android/http/i;->d:Z
if-eqz v1, :cond_134
add-int/lit8 v1, v0, 0x1
const/16 v2, 0x3d
aput-byte v2, v7, v0
add-int/lit8 v0, v1, 0x1
const/16 v2, 0x3d
aput-byte v2, v7, v1
:cond_134
iget-boolean v1, p0, Lcom/loopj/android/http/i;->e:Z
if-eqz v1, :cond_14a
iget-boolean v1, p0, Lcom/loopj/android/http/i;->f:Z
if-eqz v1, :cond_143
add-int/lit8 v1, v0, 0x1
const/16 v2, 0xd
aput-byte v2, v7, v0
move v0, v1
:cond_143
add-int/lit8 v1, v0, 0x1
const/16 v2, 0xa
aput-byte v2, v7, v0
move v0, v1
:cond_14a
move v4, v0
:goto_14b
:cond_14b
iput v4, p0, Lcom/loopj/android/http/i;->b:I
iput v5, p0, Lcom/loopj/android/http/i;->j:I
const/4 v0, 0x1
return v0
:cond_151
aget-byte v0, p1, v2
goto :goto_109
:cond_154
iget v0, p0, Lcom/loopj/android/http/i;->c:I
sub-int v0, v2, v0
add-int/lit8 v1, v8, -0x2
if-ne v0, v1, :cond_1c9
const/4 v1, 0x0
iget v0, p0, Lcom/loopj/android/http/i;->c:I
const/4 v3, 0x1
if-le v0, v3, :cond_1c0
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
const/4 v3, 0x0
const/4 v1, 0x1
aget-byte v0, v0, v3
:goto_168
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v3, v0, 0xa
iget v0, p0, Lcom/loopj/android/http/i;->c:I
if-lez v0, :cond_1c6
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
add-int/lit8 v2, v1, 0x1
aget-byte v0, v0, v1
move v1, v2
:goto_177
and-int/lit16 v0, v0, 0xff
shl-int/lit8 v0, v0, 0x2
or-int/2addr v0, v3
iget v2, p0, Lcom/loopj/android/http/i;->c:I
sub-int v1, v2, v1
iput v1, p0, Lcom/loopj/android/http/i;->c:I
add-int/lit8 v1, v4, 0x1
shr-int/lit8 v2, v0, 0xc
and-int/lit8 v2, v2, 0x3f
aget-byte v2, v6, v2
aput-byte v2, v7, v4
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v3, v0, 0x6
and-int/lit8 v3, v3, 0x3f
aget-byte v3, v6, v3
aput-byte v3, v7, v1
add-int/lit8 v1, v2, 0x1
and-int/lit8 v0, v0, 0x3f
aget-byte v0, v6, v0
aput-byte v0, v7, v2
iget-boolean v0, p0, Lcom/loopj/android/http/i;->d:Z
if-eqz v0, :cond_219
add-int/lit8 v0, v1, 0x1
const/16 v2, 0x3d
aput-byte v2, v7, v1
:goto_1a8
iget-boolean v1, p0, Lcom/loopj/android/http/i;->e:Z
if-eqz v1, :cond_1be
iget-boolean v1, p0, Lcom/loopj/android/http/i;->f:Z
if-eqz v1, :cond_1b7
add-int/lit8 v1, v0, 0x1
const/16 v2, 0xd
aput-byte v2, v7, v0
move v0, v1
:cond_1b7
add-int/lit8 v1, v0, 0x1
const/16 v2, 0xa
aput-byte v2, v7, v0
move v0, v1
:cond_1be
move v4, v0
goto :goto_14b
:cond_1c0
add-int/lit8 v3, v2, 0x1
aget-byte v0, p1, v2
move v2, v3
goto :goto_168
:cond_1c6
aget-byte v0, p1, v2
goto :goto_177
:cond_1c9
iget-boolean v0, p0, Lcom/loopj/android/http/i;->e:Z
if-eqz v0, :cond_14b
if-lez v4, :cond_14b
const/16 v0, 0x13
if-eq v5, v0, :cond_14b
iget-boolean v0, p0, Lcom/loopj/android/http/i;->f:Z
if-eqz v0, :cond_217
add-int/lit8 v0, v4, 0x1
const/16 v1, 0xd
aput-byte v1, v7, v4
:goto_1dd
add-int/lit8 v4, v0, 0x1
const/16 v1, 0xa
aput-byte v1, v7, v0
goto/16 :goto_14b
:cond_1e5
add-int/lit8 v0, v8, -0x1
if-ne v2, v0, :cond_1f7
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
iget v1, p0, Lcom/loopj/android/http/i;->c:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lcom/loopj/android/http/i;->c:I
aget-byte v2, p1, v2
aput-byte v2, v0, v1
goto/16 :goto_14b
:cond_1f7
add-int/lit8 v0, v8, -0x2
if-ne v2, v0, :cond_14b
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
iget v1, p0, Lcom/loopj/android/http/i;->c:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lcom/loopj/android/http/i;->c:I
aget-byte v3, p1, v2
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/loopj/android/http/i;->i:[B
iget v1, p0, Lcom/loopj/android/http/i;->c:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lcom/loopj/android/http/i;->c:I
add-int/lit8 v2, v2, 0x1
aget-byte v2, p1, v2
aput-byte v2, v0, v1
goto/16 :goto_14b
:cond_217
move v0, v4
goto :goto_1dd
:cond_219
move v0, v1
goto :goto_1a8
:cond_21b
move v0, v1
goto/16 :goto_9e
:cond_21e
move v5, v0
move v4, v1
goto/16 :goto_4e
:cond_222
move v5, v1
move v4, v0
goto/16 :goto_4e
:cond_226
move v5, v1
goto/16 :goto_4e
nop
:pswitch_data_22a
.packed-switch 0x0
:pswitch_a8
:pswitch_ac
:pswitch_d0
.end packed-switch
.end method