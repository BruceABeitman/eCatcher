.class public Lorg/apache/b/a/a/c;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"
.field static final a:I = 0x4c
.field static final b:[B = null
.field private static final c:[B = null
.field private static final d:B = 0x3dt
.field private static final e:[B = null
.field private static final f:I = 0x3f
.field private final g:I
.field private final h:[B
.field private final i:I
.field private j:[B
.field private k:I
.field private l:I
.field private m:I
.field private n:Z
.field private o:I
.field private final p:[B
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x2
new-array v0, v0, [B
fill-array-data v0, :array_1c
sput-object v0, Lorg/apache/b/a/a/c;->b:[B
const/16 v0, 0x40
new-array v0, v0, [B
fill-array-data v0, :array_22
sput-object v0, Lorg/apache/b/a/a/c;->c:[B
const/16 v0, 0x7b
new-array v0, v0, [B
fill-array-data v0, :array_46
sput-object v0, Lorg/apache/b/a/a/c;->e:[B
return-void
nop
:array_1c
.array-data 0x1
0xdt
0xat
.end array-data
nop
:array_46
.array-data 0x1
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0x3et
0xfft
0xfft
0xfft
0x3ft
0x34t
0x35t
0x36t
0x37t
0x38t
0x39t
0x3at
0x3bt
0x3ct
0x3dt
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0x0t
0x1t
0x2t
0x3t
0x4t
0x5t
0x6t
0x7t
0x8t
0x9t
0xat
0xbt
0xct
0xdt
0xet
0xft
0x10t
0x11t
0x12t
0x13t
0x14t
0x15t
0x16t
0x17t
0x18t
0x19t
0xfft
0xfft
0xfft
0xfft
0xfft
0xfft
0x1at
0x1bt
0x1ct
0x1dt
0x1et
0x1ft
0x20t
0x21t
0x22t
0x23t
0x24t
0x25t
0x26t
0x27t
0x28t
0x29t
0x2at
0x2bt
0x2ct
0x2dt
0x2et
0x2ft
0x30t
0x31t
0x32t
0x33t
.end array-data
:array_22
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
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 4
const/16 v0, 0x4c
sget-object v1, Lorg/apache/b/a/a/c;->b:[B
invoke-direct {p0, p1, v0, v1}, Lorg/apache/b/a/a/c;-><init>(Ljava/io/OutputStream;I[B)V
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;I)V
.registers 4
sget-object v0, Lorg/apache/b/a/a/c;->b:[B
invoke-direct {p0, p1, p2, v0}, Lorg/apache/b/a/a/c;-><init>(Ljava/io/OutputStream;I[B)V
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;I[B)V
.registers 8
const/4 v2, 0x0
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
const/16 v0, 0x400
new-array v0, v0, [B
iput-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iput-boolean v2, p0, Lorg/apache/b/a/a/c;->n:Z
const/4 v0, 0x1
new-array v0, v0, [B
iput-object v0, p0, Lorg/apache/b/a/a/c;->p:[B
iput p2, p0, Lorg/apache/b/a/a/c;->g:I
array-length v0, p3
new-array v0, v0, [B
iput-object v0, p0, Lorg/apache/b/a/a/c;->h:[B
iget-object v0, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v1, p3
invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
if-lez p2, :cond_51
array-length v0, p3
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lorg/apache/b/a/a/c;->i:I
:goto_25
invoke-static {p3}, Lorg/apache/b/a/a/c;->a([B)Z
move-result v0
if-eqz v0, :cond_5c
:try_start_2b
new-instance v0, Ljava/lang/String;
const-string v1, "UTF-8"
invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:goto_32
:try_end_32
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_32} :catch_55
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "lineSeperator must not contain base64 characters: ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_51
const/4 v0, 0x4
iput v0, p0, Lorg/apache/b/a/a/c;->i:I
goto :goto_25
:catch_55
move-exception v0
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V
goto :goto_32
:cond_5c
return-void
.end method
.method private a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
array-length v0, v0
mul-int/lit8 v0, v0, 0x2
new-array v0, v0, [B
iget-object v1, p0, Lorg/apache/b/a/a/c;->j:[B
iget-object v2, p0, Lorg/apache/b/a/a/c;->j:[B
array-length v2, v2
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
return-void
.end method
.method public static a(B)Z
.registers 3
const/16 v0, 0x3d
if-eq p0, v0, :cond_12
if-ltz p0, :cond_14
sget-object v0, Lorg/apache/b/a/a/c;->e:[B
array-length v0, v0
if-ge p0, v0, :cond_14
sget-object v0, Lorg/apache/b/a/a/c;->e:[B
aget-byte v0, v0, p0
const/4 v1, -0x1
if-eq v0, v1, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private static a([B)Z
.registers 4
const/4 v1, 0x0
move v0, v1
:goto_2
array-length v2, p0
if-ge v0, v2, :cond_e
aget-byte v2, p0, v0
invoke-static {v2}, Lorg/apache/b/a/a/c;->a(B)Z
move-result v2
if-eqz v2, :cond_f
const/4 v1, 0x1
:cond_e
return v1
:cond_f
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method private b()V
.registers 5
const/4 v3, 0x0
iget v0, p0, Lorg/apache/b/a/a/c;->k:I
if-lez v0, :cond_10
iget-object v0, p0, Lorg/apache/b/a/a/c;->out:Ljava/io/OutputStream;
iget-object v1, p0, Lorg/apache/b/a/a/c;->j:[B
iget v2, p0, Lorg/apache/b/a/a/c;->k:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
:cond_10
return-void
.end method
.method public close()V
.registers 5
const/4 v3, 0x1
iget-boolean v0, p0, Lorg/apache/b/a/a/c;->n:Z
if-eqz v0, :cond_6
:goto_5
return-void
:try_start_6
:cond_6
iget-object v0, p0, Lorg/apache/b/a/a/c;->p:[B
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {p0, v0, v1, v2}, Lorg/apache/b/a/a/c;->write([BII)V
invoke-virtual {p0}, Lorg/apache/b/a/a/c;->flush()V
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_13
iput-boolean v3, p0, Lorg/apache/b/a/a/c;->n:Z
goto :goto_5
:catchall_13
move-exception v0
iput-boolean v3, p0, Lorg/apache/b/a/a/c;->n:Z
throw v0
.end method
.method public flush()V
.registers 2
invoke-direct {p0}, Lorg/apache/b/a/a/c;->b()V
iget-object v0, p0, Lorg/apache/b/a/a/c;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public write(I)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lorg/apache/b/a/a/c;->p:[B
int-to-byte v1, p1
aput-byte v1, v0, v2
iget-object v0, p0, Lorg/apache/b/a/a/c;->p:[B
const/4 v1, 0x1
invoke-virtual {p0, v0, v2, v1}, Lorg/apache/b/a/a/c;->write([BII)V
return-void
.end method
.method public write([BII)V
.registers 11
const/16 v5, 0x3d
const/4 v2, 0x0
iget-boolean v0, p0, Lorg/apache/b/a/a/c;->n:Z
if-eqz v0, :cond_f
new-instance v0, Ljava/io/IOException;
const-string v1, "Base64OutputStream has been closed"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
if-nez p1, :cond_17
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_17
if-gez p3, :cond_e3
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/b/a/a/c;->n:Z
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
array-length v0, v0
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
sub-int/2addr v0, v1
iget v1, p0, Lorg/apache/b/a/a/c;->i:I
if-ge v0, v1, :cond_29
invoke-direct {p0}, Lorg/apache/b/a/a/c;->a()V
:cond_29
iget v0, p0, Lorg/apache/b/a/a/c;->m:I
packed-switch v0, :pswitch_data_1a8
:goto_2e
iget v0, p0, Lorg/apache/b/a/a/c;->g:I
if-lez v0, :cond_5a
iget-object v0, p0, Lorg/apache/b/a/a/c;->h:[B
iget-object v1, p0, Lorg/apache/b/a/a/c;->j:[B
iget v3, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v4, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v4, v4
invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v1, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v1, v1
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v0, p0, Lorg/apache/b/a/a/c;->h:[B
iget-object v1, p0, Lorg/apache/b/a/a/c;->j:[B
iget v3, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v4, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v4, v4
invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v1, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v1, v1
add-int/2addr v0, v1
iput v0, p0, Lorg/apache/b/a/a/c;->k:I
:cond_5a
invoke-direct {p0}, Lorg/apache/b/a/a/c;->b()V
return-void
:pswitch_5e
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v3, Lorg/apache/b/a/a/c;->c:[B
iget v4, p0, Lorg/apache/b/a/a/c;->o:I
shr-int/lit8 v4, v4, 0x2
and-int/lit8 v4, v4, 0x3f
aget-byte v3, v3, v4
aput-byte v3, v0, v1
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v3, Lorg/apache/b/a/a/c;->c:[B
iget v4, p0, Lorg/apache/b/a/a/c;->o:I
shl-int/lit8 v4, v4, 0x4
and-int/lit8 v4, v4, 0x3f
aget-byte v3, v3, v4
aput-byte v3, v0, v1
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
aput-byte v5, v0, v1
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
aput-byte v5, v0, v1
goto :goto_2e
:pswitch_9b
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v3, Lorg/apache/b/a/a/c;->c:[B
iget v4, p0, Lorg/apache/b/a/a/c;->o:I
shr-int/lit8 v4, v4, 0xa
and-int/lit8 v4, v4, 0x3f
aget-byte v3, v3, v4
aput-byte v3, v0, v1
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v3, Lorg/apache/b/a/a/c;->c:[B
iget v4, p0, Lorg/apache/b/a/a/c;->o:I
shr-int/lit8 v4, v4, 0x4
and-int/lit8 v4, v4, 0x3f
aget-byte v3, v3, v4
aput-byte v3, v0, v1
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v3, Lorg/apache/b/a/a/c;->c:[B
iget v4, p0, Lorg/apache/b/a/a/c;->o:I
shl-int/lit8 v4, v4, 0x2
and-int/lit8 v4, v4, 0x3f
aget-byte v3, v3, v4
aput-byte v3, v0, v1
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v1, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Lorg/apache/b/a/a/c;->k:I
aput-byte v5, v0, v1
goto/16 :goto_2e
:cond_e3
if-ltz p2, :cond_eb
if-ltz p3, :cond_eb
add-int v0, p2, p3
if-gez v0, :cond_f1
:cond_eb
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_f1
array-length v0, p1
if-gt p2, v0, :cond_f9
add-int v0, p2, p3
array-length v1, p1
if-le v0, v1, :cond_ff
:cond_f9
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_ff
if-lez p3, :cond_5a
move v1, v2
:goto_102
if-ge v1, p3, :cond_5a
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
array-length v0, v0
iget v3, p0, Lorg/apache/b/a/a/c;->k:I
sub-int/2addr v0, v3
iget v3, p0, Lorg/apache/b/a/a/c;->i:I
if-ge v0, v3, :cond_111
invoke-direct {p0}, Lorg/apache/b/a/a/c;->a()V
:cond_111
iget v0, p0, Lorg/apache/b/a/a/c;->m:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/a/c;->m:I
rem-int/lit8 v0, v0, 0x3
iput v0, p0, Lorg/apache/b/a/a/c;->m:I
add-int/lit8 v3, p2, 0x1
aget-byte v0, p1, p2
if-gez v0, :cond_123
add-int/lit16 v0, v0, 0x100
:cond_123
iget v4, p0, Lorg/apache/b/a/a/c;->o:I
shl-int/lit8 v4, v4, 0x8
add-int/2addr v0, v4
iput v0, p0, Lorg/apache/b/a/a/c;->o:I
iget v0, p0, Lorg/apache/b/a/a/c;->m:I
if-nez v0, :cond_1a2
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v4, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v5, Lorg/apache/b/a/a/c;->c:[B
iget v6, p0, Lorg/apache/b/a/a/c;->o:I
shr-int/lit8 v6, v6, 0x12
and-int/lit8 v6, v6, 0x3f
aget-byte v5, v5, v6
aput-byte v5, v0, v4
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v4, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v5, Lorg/apache/b/a/a/c;->c:[B
iget v6, p0, Lorg/apache/b/a/a/c;->o:I
shr-int/lit8 v6, v6, 0xc
and-int/lit8 v6, v6, 0x3f
aget-byte v5, v5, v6
aput-byte v5, v0, v4
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v4, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v5, Lorg/apache/b/a/a/c;->c:[B
iget v6, p0, Lorg/apache/b/a/a/c;->o:I
shr-int/lit8 v6, v6, 0x6
and-int/lit8 v6, v6, 0x3f
aget-byte v5, v5, v6
aput-byte v5, v0, v4
iget-object v0, p0, Lorg/apache/b/a/a/c;->j:[B
iget v4, p0, Lorg/apache/b/a/a/c;->k:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lorg/apache/b/a/a/c;->k:I
sget-object v5, Lorg/apache/b/a/a/c;->c:[B
iget v6, p0, Lorg/apache/b/a/a/c;->o:I
and-int/lit8 v6, v6, 0x3f
aget-byte v5, v5, v6
aput-byte v5, v0, v4
iget v0, p0, Lorg/apache/b/a/a/c;->l:I
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lorg/apache/b/a/a/c;->l:I
iget v0, p0, Lorg/apache/b/a/a/c;->g:I
if-lez v0, :cond_1a2
iget v0, p0, Lorg/apache/b/a/a/c;->g:I
iget v4, p0, Lorg/apache/b/a/a/c;->l:I
if-gt v0, v4, :cond_1a2
iget-object v0, p0, Lorg/apache/b/a/a/c;->h:[B
iget-object v4, p0, Lorg/apache/b/a/a/c;->j:[B
iget v5, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v6, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v6, v6
invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lorg/apache/b/a/a/c;->k:I
iget-object v4, p0, Lorg/apache/b/a/a/c;->h:[B
array-length v4, v4
add-int/2addr v0, v4
iput v0, p0, Lorg/apache/b/a/a/c;->k:I
iput v2, p0, Lorg/apache/b/a/a/c;->l:I
:cond_1a2
add-int/lit8 v0, v1, 0x1
move v1, v0
move p2, v3
goto/16 :goto_102
:pswitch_data_1a8
.packed-switch 0x1
:pswitch_5e
:pswitch_9b
.end packed-switch
.end method