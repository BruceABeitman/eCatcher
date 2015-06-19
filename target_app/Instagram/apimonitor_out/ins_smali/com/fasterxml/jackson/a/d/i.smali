.class public final Lcom/fasterxml/jackson/a/d/i;
.super Lcom/fasterxml/jackson/a/d/c;
.source "UTF8JsonGenerator.java"
.field static final l:[B
.field private static final u:[B
.field private static final v:[B
.field private static final w:[B
.field protected final m:Ljava/io/OutputStream;
.field protected n:[B
.field protected o:I
.field protected final p:I
.field protected final q:I
.field protected r:[C
.field protected final s:I
.field protected t:Z
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x4
invoke-static {}, Lcom/fasterxml/jackson/a/c/b;->h()[B
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/a/d/i;->l:[B
new-array v0, v1, [B
fill-array-data v0, :array_1e
sput-object v0, Lcom/fasterxml/jackson/a/d/i;->u:[B
new-array v0, v1, [B
fill-array-data v0, :array_24
sput-object v0, Lcom/fasterxml/jackson/a/d/i;->v:[B
const/4 v0, 0x5
new-array v0, v0, [B
fill-array-data v0, :array_2a
sput-object v0, Lcom/fasterxml/jackson/a/d/i;->w:[B
return-void
:array_1e
.array-data 0x1
0x6et
0x75t
0x6ct
0x6ct
.end array-data
:array_24
.array-data 0x1
0x74t
0x72t
0x75t
0x65t
.end array-data
:array_2a
.array-data 0x1
0x66t
0x61t
0x6ct
0x73t
0x65t
.end array-data
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;Ljava/io/OutputStream;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/c;-><init>(Lcom/fasterxml/jackson/a/c/d;ILcom/fasterxml/jackson/a/s;)V
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iput-object p4, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->t:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->f()[B
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
array-length v0, v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
shr-int/lit8 v0, v0, 0x3
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->i()[C
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
array-length v0, v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->s:I
sget-object v0, Lcom/fasterxml/jackson/a/i;->g:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_34
const/16 v0, 0x7f
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/a/h;
:cond_34
return-void
.end method
.method private a(I[CII)I
.registers 8
const v0, 0xd800
if-lt p1, v0, :cond_19
const v0, 0xdfff
if-gt p1, v0, :cond_19
if-lt p3, p4, :cond_11
const-string v0, "Split surrogate on writeRaw() input (last character)"
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_11
aget-char v0, p2, p3
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/i;->a(II)V
add-int/lit8 p3, p3, 0x1
:goto_18
return p3
:cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v2, p1, 0xc
or-int/lit16 v2, v2, 0xe0
int-to-byte v2, v2
aput-byte v2, v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v2, p1, 0x6
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
and-int/lit8 v2, p1, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v0, v1
goto :goto_18
.end method
.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[B)I
.registers 15
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, -0x3
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
add-int/lit8 v8, v1, -0x6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v1
shr-int/lit8 v2, v1, 0x2
move v6, v2
move v5, v3
move v1, v3
move v2, v3
:goto_11
if-le v2, v0, :cond_1e
array-length v0, p3
invoke-static {p2, p3, v2, v1, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/io/InputStream;[BIII)I
move-result v1
const/4 v0, 0x3
if-lt v1, v0, :cond_6c
add-int/lit8 v0, v1, -0x3
move v2, v3
:cond_1e
iget v7, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-le v7, v8, :cond_25
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_25
add-int/lit8 v7, v2, 0x1
aget-byte v2, p3, v2
shl-int/lit8 v2, v2, 0x8
add-int/lit8 v9, v7, 0x1
aget-byte v7, p3, v7
and-int/lit16 v7, v7, 0xff
or-int/2addr v2, v7
shl-int/lit8 v2, v2, 0x8
add-int/lit8 v7, v9, 0x1
aget-byte v9, p3, v9
and-int/lit16 v9, v9, 0xff
or-int/2addr v2, v9
add-int/lit8 v5, v5, 0x3
iget-object v9, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v10, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-virtual {p1, v2, v9, v10}, Lcom/fasterxml/jackson/a/a;->a(I[BI)I
move-result v2
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v6, -0x1
if-gtz v2, :cond_69
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v6, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v9, v6, 0x1
iput v9, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v9, 0x5c
aput-byte v9, v2, v6
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v6, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v9, v6, 0x1
iput v9, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v9, 0x6e
aput-byte v9, v2, v6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v2
shr-int/lit8 v2, v2, 0x2
:cond_69
move v6, v2
move v2, v7
goto :goto_11
:cond_6c
if-lez v1, :cond_93
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-le v0, v8, :cond_75
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_75
aget-byte v0, p3, v3
shl-int/lit8 v0, v0, 0x10
if-ge v4, v1, :cond_91
aget-byte v1, p3, v4
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
const/4 v1, 0x2
:goto_83
add-int v2, v5, v1
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-virtual {p1, v0, v1, v3, v4}, Lcom/fasterxml/jackson/a/a;->a(II[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
move v0, v2
:goto_90
return v0
:cond_91
move v1, v4
goto :goto_83
:cond_93
move v0, v5
goto :goto_90
.end method
.method private a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[BI)I
.registers 14
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v0, -0x3
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
add-int/lit8 v6, v2, -0x6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v2
shr-int/lit8 v2, v2, 0x2
move v4, v2
move v2, v3
move v3, p4
:goto_10
const/4 v5, 0x2
if-le v3, v5, :cond_6d
if-le v2, v0, :cond_1f
invoke-static {p2, p3, v2, v1, v3}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/io/InputStream;[BIII)I
move-result v1
const/4 v2, 0x0
const/4 v0, 0x3
if-lt v1, v0, :cond_6d
add-int/lit8 v0, v1, -0x3
:cond_1f
iget v5, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-le v5, v6, :cond_26
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_26
add-int/lit8 v5, v2, 0x1
aget-byte v2, p3, v2
shl-int/lit8 v2, v2, 0x8
add-int/lit8 v7, v5, 0x1
aget-byte v5, p3, v5
and-int/lit16 v5, v5, 0xff
or-int/2addr v2, v5
shl-int/lit8 v2, v2, 0x8
add-int/lit8 v5, v7, 0x1
aget-byte v7, p3, v7
and-int/lit16 v7, v7, 0xff
or-int/2addr v2, v7
add-int/lit8 v3, v3, -0x3
iget-object v7, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v8, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-virtual {p1, v2, v7, v8}, Lcom/fasterxml/jackson/a/a;->a(I[BI)I
move-result v2
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v4, -0x1
if-gtz v2, :cond_6a
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v7, 0x5c
aput-byte v7, v2, v4
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v7, v4, 0x1
iput v7, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v7, 0x6e
aput-byte v7, v2, v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v2
shr-int/lit8 v2, v2, 0x2
:cond_6a
move v4, v2
move v2, v5
goto :goto_10
:cond_6d
if-lez v3, :cond_9c
invoke-static {p2, p3, v2, v1, v3}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/io/InputStream;[BIII)I
move-result v1
if-lez v1, :cond_9c
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-le v0, v6, :cond_7c
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_7c
const/4 v0, 0x0
aget-byte v0, p3, v0
shl-int/lit8 v0, v0, 0x10
const/4 v2, 0x1
if-ge v2, v1, :cond_9a
const/4 v1, 0x1
aget-byte v1, p3, v1
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
const/4 v1, 0x2
:goto_8d
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-virtual {p1, v0, v1, v2, v4}, Lcom/fasterxml/jackson/a/a;->a(II[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
sub-int v0, v3, v1
:goto_99
return v0
:cond_9a
const/4 v1, 0x1
goto :goto_8d
:cond_9c
move v0, v3
goto :goto_99
.end method
.method private static a(Ljava/io/InputStream;[BIII)I
.registers 9
const/4 v0, 0x0
:goto_1
if-ge p2, p3, :cond_e
add-int/lit8 v1, v0, 0x1
add-int/lit8 v2, p2, 0x1
aget-byte v3, p1, p2
aput-byte v3, p1, v0
move v0, v1
move p2, v2
goto :goto_1
:cond_e
array-length v1, p1
invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_13
sub-int v2, v1, v0
if-eqz v2, :cond_1d
invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I
move-result v2
if-gez v2, :cond_1e
:goto_1d
:cond_1d
return v0
:cond_1e
add-int/2addr v0, v2
const/4 v2, 0x3
if-lt v0, v2, :cond_13
goto :goto_1d
.end method
.method private a([BII[BI)I
.registers 10
const/4 v3, 0x0
array-length v1, p4
add-int v0, p2, v1
if-le v0, p3, :cond_25
iput p2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
array-length v2, p1
if-le v1, v2, :cond_16
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
invoke-virtual {v2, p4, v3, v1}, Ljava/io/OutputStream;->write([BII)V
:goto_15
:cond_15
return v0
:cond_16
invoke-static {p4, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v0, v1
:goto_1a
mul-int/lit8 v1, p5, 0x6
add-int/2addr v1, v0
if-le v1, p3, :cond_15
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_15
:cond_25
move v0, p2
goto :goto_1a
.end method
.method private a([BILcom/fasterxml/jackson/a/u;I)I
.registers 11
invoke-interface {p3}, Lcom/fasterxml/jackson/a/u;->c()[B
move-result-object v4
array-length v0, v4
const/4 v1, 0x6
if-le v0, v1, :cond_13
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
move-object v0, p0
move-object v1, p1
move v2, p2
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/d/i;->a([BII[BI)I
move-result v0
:goto_12
return v0
:cond_13
const/4 v1, 0x0
invoke-static {v4, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v0, p2
goto :goto_12
.end method
.method private a(I)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
const/4 v1, 0x0
invoke-direct {p0, v0, v1, p1}, Lcom/fasterxml/jackson/a/d/i;->b([CII)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_24
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method private a(II)V
.registers 7
invoke-static {p1, p2}, Lcom/fasterxml/jackson/a/d/i;->c(II)I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v1, v1, 0x4
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v1, v2, :cond_f
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_f
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v3, v0, 0x12
or-int/lit16 v3, v3, 0xf0
int-to-byte v3, v3
aput-byte v3, v1, v2
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v3, v0, 0xc
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v3, v0, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v1, v2
return-void
.end method
.method private a(J)V
.registers 7
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x17
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_d
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method private a(Lcom/fasterxml/jackson/a/a;[BII)V
.registers 11
add-int/lit8 v1, p4, -0x3
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
add-int/lit8 v2, v0, -0x6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v0
shr-int/lit8 v0, v0, 0x2
:cond_c
:goto_c
if-gt p3, v1, :cond_58
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-le v3, v2, :cond_15
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_15
add-int/lit8 v3, p3, 0x1
aget-byte v4, p2, p3
shl-int/lit8 v4, v4, 0x8
add-int/lit8 v5, v3, 0x1
aget-byte v3, p2, v3
and-int/lit16 v3, v3, 0xff
or-int/2addr v3, v4
shl-int/lit8 v3, v3, 0x8
add-int/lit8 p3, v5, 0x1
aget-byte v4, p2, v5
and-int/lit16 v4, v4, 0xff
or-int/2addr v3, v4
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v5, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-virtual {p1, v3, v4, v5}, Lcom/fasterxml/jackson/a/a;->a(I[BI)I
move-result v3
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, -0x1
if-gtz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v4, 0x5c
aput-byte v4, v0, v3
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v4, 0x6e
aput-byte v4, v0, v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/a;->c()I
move-result v0
shr-int/lit8 v0, v0, 0x2
goto :goto_c
:cond_58
sub-int v1, p4, p3
if-lez v1, :cond_7d
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-le v0, v2, :cond_63
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_63
add-int/lit8 v2, p3, 0x1
aget-byte v0, p2, p3
shl-int/lit8 v0, v0, 0x10
const/4 v3, 0x2
if-ne v1, v3, :cond_73
aget-byte v2, p2, v2
and-int/lit16 v2, v2, 0xff
shl-int/lit8 v2, v2, 0x8
or-int/2addr v0, v2
:cond_73
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-virtual {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/a/a;->a(II[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
:cond_7d
return-void
.end method
.method private a(Lcom/fasterxml/jackson/a/u;)V
.registers 6
const/16 v3, 0x22
sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-nez v0, :cond_22
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/a/u;->a([BI)I
move-result v0
if-gez v0, :cond_1c
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->d()[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a([B)V
:goto_1b
return-void
:cond_1c
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_1b
:cond_22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_2b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_2b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/a/u;->a([BI)I
move-result v0
if-gez v0, :cond_5a
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->d()[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a([B)V
:goto_46
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_4f
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_4f
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
goto :goto_1b
:cond_5a
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_46
.end method
.method private a(Lcom/fasterxml/jackson/a/u;Z)V
.registers 8
const/16 v4, 0x22
if-eqz p2, :cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->c(Lcom/fasterxml/jackson/a/h;)V
:goto_9
sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_24
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v1, v2, :cond_1a
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_1a
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v1, v2
:cond_24
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->d()[B
move-result-object v1
invoke-direct {p0, v1}, Lcom/fasterxml/jackson/a/d/i;->a([B)V
if-eqz v0, :cond_40
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_36
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_36
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
:cond_40
return-void
:cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V
goto :goto_9
.end method
.method private a(Ljava/lang/Object;)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_25
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_25
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method private a(Ljava/lang/String;Z)V
.registers 8
const/16 v4, 0x22
const/4 v3, 0x0
if-eqz p2, :cond_59
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->c(Lcom/fasterxml/jackson/a/h;)V
:goto_a
sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_69
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_1b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->s:I
if-gt v0, v1, :cond_65
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
if-gt v0, v1, :cond_5f
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v1, v2, :cond_40
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_40
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/a/d/i;->c([CII)V
:goto_45
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_4e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_4e
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
:goto_58
return-void
:cond_59
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V
goto :goto_a
:cond_5f
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/a/d/i;->b([CII)V
goto :goto_45
:cond_65
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->e(Ljava/lang/String;)V
goto :goto_45
:cond_69
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->e(Ljava/lang/String;)V
goto :goto_58
.end method
.method private a(S)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x8
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_d
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method private final a([B)V
.registers 6
const/4 v3, 0x0
array-length v0, p1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v1, v2, :cond_16
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
const/16 v1, 0x200
if-le v0, v1, :cond_16
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
invoke-virtual {v1, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V
:goto_15
return-void
:cond_16
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_15
.end method
.method private final a([BII)V
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, p3
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v0, v1, :cond_14
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
const/16 v0, 0x200
if-le p3, v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_13
.end method
.method private final a([CII)V
.registers 10
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
move v0, p2
:goto_5
if-ge v0, p3, :cond_21
:cond_7
aget-char v3, p1, v0
const/16 v4, 0x80
if-ge v3, v4, :cond_22
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-lt v4, v1, :cond_14
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_14
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v5, v4, 0x1
iput v5, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
int-to-byte v3, v3
aput-byte v3, v2, v4
add-int/lit8 v0, v0, 0x1
if-lt v0, p3, :cond_7
:cond_21
return-void
:cond_22
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v3, 0x3
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v3, v4, :cond_2d
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_2d
add-int/lit8 p2, v0, 0x1
aget-char v0, p1, v0
const/16 v3, 0x800
if-ge v0, v3, :cond_51
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v4, v0, 0x6
or-int/lit16 v4, v4, 0xc0
int-to-byte v4, v4
aput-byte v4, v2, v3
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v2, v3
move v0, p2
goto :goto_5
:cond_51
invoke-direct {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->a(I[CII)I
move v0, p2
goto :goto_5
.end method
.method private b(II)I
.registers 8
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
const v0, 0xd800
if-lt p1, v0, :cond_47
const v0, 0xdfff
if-gt p1, v0, :cond_47
add-int/lit8 v0, p2, 0x1
const/16 v2, 0x5c
aput-byte v2, v1, p2
add-int/lit8 v2, v0, 0x1
const/16 v3, 0x75
aput-byte v3, v1, v0
add-int/lit8 v0, v2, 0x1
sget-object v3, Lcom/fasterxml/jackson/a/d/i;->l:[B
shr-int/lit8 v4, p1, 0xc
and-int/lit8 v4, v4, 0xf
aget-byte v3, v3, v4
aput-byte v3, v1, v2
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/fasterxml/jackson/a/d/i;->l:[B
shr-int/lit8 v4, p1, 0x8
and-int/lit8 v4, v4, 0xf
aget-byte v3, v3, v4
aput-byte v3, v1, v0
add-int/lit8 v3, v2, 0x1
sget-object v0, Lcom/fasterxml/jackson/a/d/i;->l:[B
shr-int/lit8 v4, p1, 0x4
and-int/lit8 v4, v4, 0xf
aget-byte v0, v0, v4
aput-byte v0, v1, v2
add-int/lit8 v0, v3, 0x1
sget-object v2, Lcom/fasterxml/jackson/a/d/i;->l:[B
and-int/lit8 v4, p1, 0xf
aget-byte v2, v2, v4
aput-byte v2, v1, v3
:goto_46
return v0
:cond_47
add-int/lit8 v0, p2, 0x1
shr-int/lit8 v2, p1, 0xc
or-int/lit16 v2, v2, 0xe0
int-to-byte v2, v2
aput-byte v2, v1, p2
add-int/lit8 v2, v0, 0x1
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v0
add-int/lit8 v0, v2, 0x1
and-int/lit8 v3, p1, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
goto :goto_46
.end method
.method private b(I)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0xd
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_d
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method private b([BII)V
.registers 5
:cond_0
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/a/d/i;->c([BII)V
add-int/2addr p2, v0
sub-int/2addr p3, v0
if-gtz p3, :cond_0
return-void
.end method
.method private final b([CII)V
.registers 7
:cond_0
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v1, v2, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/a/d/i;->c([CII)V
add-int/2addr p2, v0
sub-int/2addr p3, v0
if-gtz p3, :cond_0
return-void
.end method
.method private static c(II)I
.registers 5
const v2, 0xdc00
if-lt p1, v2, :cond_a
const v0, 0xdfff
if-le p1, v0, :cond_2e
:cond_a
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Incomplete surrogate pair: first char 0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", second 0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_2e
const/high16 v0, 0x1
const v1, 0xd800
sub-int v1, p0, v1
shl-int/lit8 v1, v1, 0xa
add-int/2addr v0, v1
sub-int v1, p1, v2
add-int/2addr v0, v1
return v0
.end method
.method private c(I)V
.registers 3
packed-switch p1, :pswitch_data_36
invoke-static {}, Lcom/fasterxml/jackson/a/d/i;->c()V
:goto_6
:cond_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->f(Lcom/fasterxml/jackson/a/h;)V
goto :goto_6
:pswitch_d
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->d(Lcom/fasterxml/jackson/a/h;)V
goto :goto_6
:pswitch_13
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->a(Lcom/fasterxml/jackson/a/h;)V
goto :goto_6
:pswitch_19
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inArray()Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->g(Lcom/fasterxml/jackson/a/h;)V
goto :goto_6
:cond_27
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inObject()Z
move-result v0
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->h(Lcom/fasterxml/jackson/a/h;)V
goto :goto_6
nop
:pswitch_data_36
.packed-switch 0x0
:pswitch_19
:pswitch_7
:pswitch_d
:pswitch_13
.end packed-switch
.end method
.method private c(Ljava/lang/String;)V
.registers 7
const/16 v4, 0x22
const/4 v3, 0x0
sget-object v0, Lcom/fasterxml/jackson/a/i;->c:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-nez v0, :cond_f
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->e(Ljava/lang/String;)V
:goto_e
return-void
:cond_f
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_18
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->s:I
if-gt v0, v1, :cond_5c
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
if-gt v0, v1, :cond_56
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v1, v2, :cond_3d
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_3d
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/a/d/i;->c([CII)V
:goto_42
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_4b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_4b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
goto :goto_e
:cond_56
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/a/d/i;->b([CII)V
goto :goto_42
:cond_5c
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->e(Ljava/lang/String;)V
goto :goto_42
.end method
.method private c([BII)V
.registers 8
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->h:[I
add-int v3, p2, p3
move v0, p2
:goto_5
if-ge v0, v3, :cond_17
add-int/lit8 v1, v0, 0x1
aget-byte v0, p1, v0
if-ltz v0, :cond_15
aget v0, v2, v0
if-eqz v0, :cond_15
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->d([BII)V
:goto_14
return-void
:cond_15
move v0, v1
goto :goto_5
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, p3
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v0, v1, :cond_21
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_21
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, p3
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_14
.end method
.method private final c([CII)V
.registers 10
add-int v2, p3, p2
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->h:[I
:goto_8
if-ge p2, v2, :cond_1d
aget-char v5, p1, p2
const/16 v1, 0x7f
if-gt v5, v1, :cond_1d
aget v1, v4, v5
if-nez v1, :cond_1d
add-int/lit8 v1, v0, 0x1
int-to-byte v5, v5
aput-byte v5, v3, v0
add-int/lit8 p2, p2, 0x1
move v0, v1
goto :goto_8
:cond_1d
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-ge p2, v2, :cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->j:Lcom/fasterxml/jackson/a/c/c;
if-eqz v0, :cond_29
invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/a/d/i;->f([CII)V
:cond_28
:goto_28
return-void
:cond_29
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->i:I
if-nez v0, :cond_31
invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/a/d/i;->d([CII)V
goto :goto_28
:cond_31
invoke-direct {p0, p1, p2, v2}, Lcom/fasterxml/jackson/a/d/i;->e([CII)V
goto :goto_28
.end method
.method private d(II)I
.registers 9
const/16 v4, 0x30
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
add-int/lit8 v0, p2, 0x1
const/16 v2, 0x5c
aput-byte v2, v1, p2
add-int/lit8 v2, v0, 0x1
const/16 v3, 0x75
aput-byte v3, v1, v0
const/16 v0, 0xff
if-le p1, v0, :cond_43
shr-int/lit8 v0, p1, 0x8
and-int/lit16 v3, v0, 0xff
add-int/lit8 v4, v2, 0x1
sget-object v0, Lcom/fasterxml/jackson/a/d/i;->l:[B
shr-int/lit8 v5, v3, 0x4
aget-byte v0, v0, v5
aput-byte v0, v1, v2
add-int/lit8 v0, v4, 0x1
sget-object v2, Lcom/fasterxml/jackson/a/d/i;->l:[B
and-int/lit8 v3, v3, 0xf
aget-byte v2, v2, v3
aput-byte v2, v1, v4
and-int/lit16 p1, p1, 0xff
:goto_2e
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/fasterxml/jackson/a/d/i;->l:[B
shr-int/lit8 v4, p1, 0x4
aget-byte v3, v3, v4
aput-byte v3, v1, v0
add-int/lit8 v0, v2, 0x1
sget-object v3, Lcom/fasterxml/jackson/a/d/i;->l:[B
and-int/lit8 v4, p1, 0xf
aget-byte v3, v3, v4
aput-byte v3, v1, v2
return v0
:cond_43
add-int/lit8 v3, v2, 0x1
aput-byte v4, v1, v2
add-int/lit8 v0, v3, 0x1
aput-byte v4, v1, v3
goto :goto_2e
.end method
.method private d(Ljava/lang/String;)V
.registers 6
const/16 v3, 0x22
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->e(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_21
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_21
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method private d([BII)V
.registers 12
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
mul-int/lit8 v1, p3, 0x6
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v1, v2, :cond_e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
:cond_e
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->h:[I
add-int v5, p3, p2
:goto_14
if-ge p2, v5, :cond_3e
add-int/lit8 v2, p2, 0x1
aget-byte v6, p1, p2
if-ltz v6, :cond_20
aget v1, v4, v6
if-nez v1, :cond_27
:cond_20
add-int/lit8 v1, v0, 0x1
aput-byte v6, v3, v0
move v0, v1
move p2, v2
goto :goto_14
:cond_27
aget v1, v4, v6
if-lez v1, :cond_38
add-int/lit8 v6, v0, 0x1
const/16 v7, 0x5c
aput-byte v7, v3, v0
add-int/lit8 v0, v6, 0x1
int-to-byte v1, v1
aput-byte v1, v3, v6
move p2, v2
goto :goto_14
:cond_38
invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/a/d/i;->d(II)I
move-result v0
move p2, v2
goto :goto_14
:cond_3e
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
return-void
.end method
.method private final d([CII)V
.registers 11
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
sub-int v1, p3, p2
mul-int/lit8 v1, v1, 0x6
add-int/2addr v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v0, v1, :cond_e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_e
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->h:[I
:goto_14
if-ge p2, p3, :cond_5f
add-int/lit8 v2, p2, 0x1
aget-char v5, p1, p2
const/16 v1, 0x7f
if-gt v5, v1, :cond_41
aget v1, v4, v5
if-nez v1, :cond_2a
add-int/lit8 v1, v0, 0x1
int-to-byte v5, v5
aput-byte v5, v3, v0
move v0, v1
move p2, v2
goto :goto_14
:cond_2a
aget v1, v4, v5
if-lez v1, :cond_3b
add-int/lit8 v5, v0, 0x1
const/16 v6, 0x5c
aput-byte v6, v3, v0
add-int/lit8 v0, v5, 0x1
int-to-byte v1, v1
aput-byte v1, v3, v5
move p2, v2
goto :goto_14
:cond_3b
invoke-direct {p0, v5, v0}, Lcom/fasterxml/jackson/a/d/i;->d(II)I
move-result v0
move p2, v2
goto :goto_14
:cond_41
const/16 v1, 0x7ff
if-gt v5, v1, :cond_59
add-int/lit8 v1, v0, 0x1
shr-int/lit8 v6, v5, 0x6
or-int/lit16 v6, v6, 0xc0
int-to-byte v6, v6
aput-byte v6, v3, v0
add-int/lit8 v0, v1, 0x1
and-int/lit8 v5, v5, 0x3f
or-int/lit16 v5, v5, 0x80
int-to-byte v5, v5
aput-byte v5, v3, v1
move p2, v2
goto :goto_14
:cond_59
invoke-direct {p0, v5, v0}, Lcom/fasterxml/jackson/a/d/i;->b(II)I
move-result v0
move p2, v2
goto :goto_14
:cond_5f
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
return-void
.end method
.method private e()V
.registers 6
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_b
sget-object v0, Lcom/fasterxml/jackson/a/d/i;->u:[B
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/4 v4, 0x4
invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
return-void
.end method
.method private final e(Ljava/lang/String;)V
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
move v2, v0
move v0, v1
:goto_9
if-lez v2, :cond_26
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I
move-result v4
add-int v5, v0, v4
invoke-virtual {p1, v0, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V
iget v5, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v5, v4
iget v6, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v5, v6, :cond_20
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_20
invoke-direct {p0, v3, v1, v4}, Lcom/fasterxml/jackson/a/d/i;->c([CII)V
add-int/2addr v0, v4
sub-int/2addr v2, v4
goto :goto_9
:cond_26
return-void
.end method
.method private final e([CII)V
.registers 12
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
sub-int v1, p3, p2
mul-int/lit8 v1, v1, 0x6
add-int/2addr v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v0, v1, :cond_e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_e
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->h:[I
iget v5, p0, Lcom/fasterxml/jackson/a/d/i;->i:I
:goto_16
if-ge p2, p3, :cond_69
add-int/lit8 v2, p2, 0x1
aget-char v6, p1, p2
const/16 v1, 0x7f
if-gt v6, v1, :cond_43
aget v1, v4, v6
if-nez v1, :cond_2c
add-int/lit8 v1, v0, 0x1
int-to-byte v6, v6
aput-byte v6, v3, v0
move v0, v1
move p2, v2
goto :goto_16
:cond_2c
aget v1, v4, v6
if-lez v1, :cond_3d
add-int/lit8 v6, v0, 0x1
const/16 v7, 0x5c
aput-byte v7, v3, v0
add-int/lit8 v0, v6, 0x1
int-to-byte v1, v1
aput-byte v1, v3, v6
move p2, v2
goto :goto_16
:cond_3d
invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/a/d/i;->d(II)I
move-result v0
move p2, v2
goto :goto_16
:cond_43
if-le v6, v5, :cond_4b
invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/a/d/i;->d(II)I
move-result v0
move p2, v2
goto :goto_16
:cond_4b
const/16 v1, 0x7ff
if-gt v6, v1, :cond_63
add-int/lit8 v1, v0, 0x1
shr-int/lit8 v7, v6, 0x6
or-int/lit16 v7, v7, 0xc0
int-to-byte v7, v7
aput-byte v7, v3, v0
add-int/lit8 v0, v1, 0x1
and-int/lit8 v6, v6, 0x3f
or-int/lit16 v6, v6, 0x80
int-to-byte v6, v6
aput-byte v6, v3, v1
move p2, v2
goto :goto_16
:cond_63
invoke-direct {p0, v6, v0}, Lcom/fasterxml/jackson/a/d/i;->b(II)I
move-result v0
move p2, v2
goto :goto_16
:cond_69
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
return-void
.end method
.method private f()V
.registers 5
const/4 v3, 0x0
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
if-lez v0, :cond_e
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
:cond_e
return-void
.end method
.method private f([CII)V
.registers 14
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
sub-int v1, p3, p2
mul-int/lit8 v1, v1, 0x6
add-int/2addr v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v0, v1, :cond_e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_e
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v5, p0, Lcom/fasterxml/jackson/a/d/i;->h:[I
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->i:I
if-gtz v0, :cond_33
const v0, 0xffff
:goto_1b
iget-object v6, p0, Lcom/fasterxml/jackson/a/d/i;->j:Lcom/fasterxml/jackson/a/c/c;
:goto_1d
if-ge p2, p3, :cond_b0
add-int/lit8 v3, p2, 0x1
aget-char v7, p1, p2
const/16 v2, 0x7f
if-gt v7, v2, :cond_7a
aget v2, v5, v7
if-nez v2, :cond_36
add-int/lit8 v2, v1, 0x1
int-to-byte v7, v7
aput-byte v7, v4, v1
move v1, v2
move p2, v3
goto :goto_1d
:cond_33
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->i:I
goto :goto_1b
:cond_36
aget v2, v5, v7
if-lez v2, :cond_47
add-int/lit8 v7, v1, 0x1
const/16 v8, 0x5c
aput-byte v8, v4, v1
add-int/lit8 v1, v7, 0x1
int-to-byte v2, v2
aput-byte v2, v4, v7
move p2, v3
goto :goto_1d
:cond_47
const/4 v8, -0x2
if-ne v2, v8, :cond_74
invoke-virtual {v6}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;
move-result-object v2
if-nez v2, :cond_6c
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "Invalid custom escape definitions; custom escape not found for character code 0x"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, ", although was supposed to have one"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_6c
sub-int v7, p3, v3
invoke-direct {p0, v4, v1, v2, v7}, Lcom/fasterxml/jackson/a/d/i;->a([BILcom/fasterxml/jackson/a/u;I)I
move-result v1
move p2, v3
goto :goto_1d
:cond_74
invoke-direct {p0, v7, v1}, Lcom/fasterxml/jackson/a/d/i;->d(II)I
move-result v1
move p2, v3
goto :goto_1d
:cond_7a
if-le v7, v0, :cond_82
invoke-direct {p0, v7, v1}, Lcom/fasterxml/jackson/a/d/i;->d(II)I
move-result v1
move p2, v3
goto :goto_1d
:cond_82
invoke-virtual {v6}, Lcom/fasterxml/jackson/a/c/c;->b()Lcom/fasterxml/jackson/a/u;
move-result-object v2
if-eqz v2, :cond_90
sub-int v7, p3, v3
invoke-direct {p0, v4, v1, v2, v7}, Lcom/fasterxml/jackson/a/d/i;->a([BILcom/fasterxml/jackson/a/u;I)I
move-result v1
move p2, v3
goto :goto_1d
:cond_90
const/16 v2, 0x7ff
if-gt v7, v2, :cond_a9
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v8, v7, 0x6
or-int/lit16 v8, v8, 0xc0
int-to-byte v8, v8
aput-byte v8, v4, v1
add-int/lit8 v1, v2, 0x1
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v4, v2
move p2, v3
goto/16 :goto_1d
:cond_a9
invoke-direct {p0, v7, v1}, Lcom/fasterxml/jackson/a/d/i;->b(II)I
move-result v1
move p2, v3
goto/16 :goto_1d
:cond_b0
iput v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
return-void
.end method
.method protected final a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->e()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_21
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", expecting field name"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_21
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-nez v1, :cond_55
packed-switch v0, :pswitch_data_5a
:cond_28
:goto_28
return-void
:pswitch_29
const/16 v0, 0x2c
:goto_2b
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v1, v2, :cond_34
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_34
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v0, v1, v2
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_28
:pswitch_41
const/16 v0, 0x3a
goto :goto_2b
:pswitch_44
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->k:Lcom/fasterxml/jackson/a/u;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->k:Lcom/fasterxml/jackson/a/u;
invoke-interface {v0}, Lcom/fasterxml/jackson/a/u;->c()[B
move-result-object v0
array-length v1, v0
if-lez v1, :cond_28
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a([B)V
goto :goto_28
:cond_55
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->c(I)V
goto :goto_28
nop
:pswitch_data_5a
.packed-switch 0x1
:pswitch_29
:pswitch_41
:pswitch_44
.end packed-switch
.end method
.method protected final b()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
if-eqz v0, :cond_10
iget-boolean v1, p0, Lcom/fasterxml/jackson/a/d/i;->t:Z
if-eqz v1, :cond_10
iput-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->g:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->b([B)V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
if-eqz v0, :cond_1b
iput-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->g:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->b([C)V
:cond_1b
return-void
.end method
.method public final close()V
.registers 3
invoke-super {p0}, Lcom/fasterxml/jackson/a/d/c;->close()V
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
if-eqz v0, :cond_27
sget-object v0, Lcom/fasterxml/jackson/a/i;->b:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_27
:goto_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/i;->a()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/q;->inArray()Z
move-result v1
if-eqz v1, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/i;->writeEndArray()V
goto :goto_f
:cond_1d
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/q;->inObject()Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/i;->writeEndObject()V
goto :goto_f
:cond_27
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->g:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->c()Z
move-result v0
if-nez v0, :cond_3e
sget-object v0, Lcom/fasterxml/jackson/a/i;->a:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_47
:cond_3e
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:goto_43
:cond_43
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/d/i;->b()V
return-void
:cond_47
sget-object v0, Lcom/fasterxml/jackson/a/i;->f:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
goto :goto_43
.end method
.method public final flush()V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
if-eqz v0, :cond_14
sget-object v0, Lcom/fasterxml/jackson/a/i;->f:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:cond_14
return-void
.end method
.method public final getOutputTarget()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->m:Ljava/io/OutputStream;
return-object v0
.end method
.method public final writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
.registers 9
const/16 v4, 0x22
const-string v0, "write binary value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->g:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/c/d;->g()[B
move-result-object v1
if-gez p3, :cond_3f
:try_start_22
invoke-direct {p0, p1, p2, v1}, Lcom/fasterxml/jackson/a/d/i;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[B)I
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_68
move-result p3
:goto_26
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->g:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_34
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_34
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v4, v0, v1
return p3
:try_start_3f
:cond_3f
invoke-direct {p0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/a/d/i;->a(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;[BI)I
move-result v0
if-lez v0, :cond_26
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Too few bytes available: missing "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " bytes (out of "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:try_end_67
.catchall {:try_start_3f .. :try_end_67} :catchall_68
goto :goto_26
:catchall_68
move-exception v0
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->g:Lcom/fasterxml/jackson/a/c/d;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/c/d;->c([B)V
throw v0
.end method
.method public final writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
.registers 9
const/16 v3, 0x22
const-string v0, "write binary value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
add-int v0, p3, p4
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Lcom/fasterxml/jackson/a/a;[BII)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_28
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_28
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method public final writeBoolean(Z)V
.registers 7
const-string v0, "write boolean value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x5
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
if-eqz p1, :cond_23
sget-object v0, Lcom/fasterxml/jackson/a/d/i;->v:[B
:goto_14
array-length v1, v0
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
return-void
:cond_23
sget-object v0, Lcom/fasterxml/jackson/a/d/i;->w:[B
goto :goto_14
.end method
.method public final writeEndArray()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inArray()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current context not an ARRAY but "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getEntryCount()I
move-result v1
invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/a/t;->b(Lcom/fasterxml/jackson/a/h;I)V
:goto_2f
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
return-void
:cond_38
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_41
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v2, 0x5d
aput-byte v2, v0, v1
goto :goto_2f
.end method
.method public final writeEndObject()V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->inObject()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current context not an object but "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getTypeDesc()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/e;->getEntryCount()I
move-result v1
invoke-interface {v0, p0, v1}, Lcom/fasterxml/jackson/a/t;->a(Lcom/fasterxml/jackson/a/h;I)V
:goto_2f
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
return-void
:cond_38
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_41
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v2, 0x7d
aput-byte v2, v0, v1
goto :goto_2f
.end method
.method public final writeFieldName(Lcom/fasterxml/jackson/a/u;)V
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_13
const-string v2, "Can not write a field name, expecting a value"
invoke-static {v2}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_13
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-eqz v2, :cond_1f
if-ne v1, v0, :cond_1d
:goto_19
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Lcom/fasterxml/jackson/a/u;Z)V
:goto_1c
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_19
:cond_1f
if-ne v1, v0, :cond_36
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_2a
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_2a
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v2, 0x2c
aput-byte v2, v0, v1
:cond_36
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->a(Lcom/fasterxml/jackson/a/u;)V
goto :goto_1c
.end method
.method public final writeFieldName(Ljava/lang/String;)V
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x4
if-ne v1, v2, :cond_f
const-string v2, "Can not write a field name, expecting a value"
invoke-static {v2}, Lcom/fasterxml/jackson/a/d/i;->b(Ljava/lang/String;)V
:cond_f
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-eqz v2, :cond_1b
if-ne v1, v0, :cond_19
:goto_15
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;Z)V
:goto_18
return-void
:cond_19
const/4 v0, 0x0
goto :goto_15
:cond_1b
if-ne v1, v0, :cond_32
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_26
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v2, 0x2c
aput-byte v2, v0, v1
:cond_32
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->c(Ljava/lang/String;)V
goto :goto_18
.end method
.method public final writeNull()V
.registers 2
const-string v0, "write null value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->e()V
return-void
.end method
.method public final writeNumber(D)V
.registers 4
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-nez v0, :cond_18
invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z
move-result v0
if-nez v0, :cond_10
invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z
move-result v0
if-eqz v0, :cond_20
:cond_10
sget-object v0, Lcom/fasterxml/jackson/a/i;->d:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_20
:cond_18
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeString(Ljava/lang/String;)V
:goto_1f
return-void
:cond_20
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public final writeNumber(F)V
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-nez v0, :cond_18
invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z
move-result v0
if-nez v0, :cond_10
invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z
move-result v0
if-eqz v0, :cond_20
:cond_10
sget-object v0, Lcom/fasterxml/jackson/a/i;->d:Lcom/fasterxml/jackson/a/i;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->isEnabled(Lcom/fasterxml/jackson/a/i;)Z
move-result v0
if-eqz v0, :cond_20
:cond_18
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeString(Ljava/lang/String;)V
:goto_1f
return-void
:cond_20
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public final writeNumber(I)V
.registers 4
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0xb
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-eqz v0, :cond_18
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->b(I)V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_17
.end method
.method public final writeNumber(J)V
.registers 5
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/a/d/i;->a(J)V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x15
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_18
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_c
.end method
.method public final writeNumber(Ljava/lang/String;)V
.registers 3
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-eqz v0, :cond_d
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/Object;)V
:goto_c
return-void
:cond_d
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->writeRaw(Ljava/lang/String;)V
goto :goto_c
.end method
.method public final writeNumber(Ljava/math/BigDecimal;)V
.registers 3
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
if-nez p1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->e()V
:goto_a
return-void
:cond_b
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-eqz v0, :cond_13
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/Object;)V
goto :goto_a
:cond_13
invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw(Ljava/lang/String;)V
goto :goto_a
.end method
.method public final writeNumber(Ljava/math/BigInteger;)V
.registers 3
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
if-nez p1, :cond_b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->e()V
:goto_a
return-void
:cond_b
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-eqz v0, :cond_13
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/Object;)V
goto :goto_a
:cond_13
invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw(Ljava/lang/String;)V
goto :goto_a
.end method
.method public final writeNumber(S)V
.registers 4
const-string v0, "write number"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x6
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/d/i;->c:Z
if-eqz v0, :cond_18
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->a(S)V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(I[BI)I
move-result v0
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_17
.end method
.method public final writeRaw(C)V
.registers 5
const/4 v2, 0x0
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v0, v0, 0x3
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_c
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
const/16 v1, 0x7f
if-gt p1, v1, :cond_1c
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
int-to-byte v2, p1
aput-byte v2, v0, v1
:goto_1b
return-void
:cond_1c
const/16 v1, 0x800
if-ge p1, v1, :cond_3b
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v2, p1, 0x6
or-int/lit16 v2, v2, 0xc0
int-to-byte v2, v2
aput-byte v2, v0, v1
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
and-int/lit8 v2, p1, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v0, v1
goto :goto_1b
:cond_3b
const/4 v0, 0x0
invoke-direct {p0, p1, v0, v2, v2}, Lcom/fasterxml/jackson/a/d/i;->a(I[CII)I
goto :goto_1b
.end method
.method public final writeRaw(Lcom/fasterxml/jackson/a/u;)V
.registers 4
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->c()[B
move-result-object v0
array-length v1, v0
if-lez v1, :cond_a
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a([B)V
:cond_a
return-void
.end method
.method public final writeRaw(Ljava/lang/String;)V
.registers 8
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
move v2, v3
:goto_6
if-lez v1, :cond_19
iget-object v4, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
array-length v0, v4
if-ge v1, v0, :cond_e
move v0, v1
:cond_e
add-int v5, v2, v0
invoke-virtual {p1, v2, v5, v4, v3}, Ljava/lang/String;->getChars(II[CI)V
invoke-virtual {p0, v4, v3, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw([CII)V
add-int/2addr v2, v0
sub-int/2addr v1, v0
goto :goto_6
:cond_19
return-void
.end method
.method public final writeRaw(Ljava/lang/String;II)V
.registers 8
const/4 v3, 0x0
:goto_1
if-lez p3, :cond_14
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
array-length v0, v1
if-ge p3, v0, :cond_9
move v0, p3
:cond_9
add-int v2, p2, v0
invoke-virtual {p1, p2, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V
invoke-virtual {p0, v1, v3, v0}, Lcom/fasterxml/jackson/a/d/i;->writeRaw([CII)V
add-int/2addr p2, v0
sub-int/2addr p3, v0
goto :goto_1
:cond_14
return-void
.end method
.method public final writeRaw([CII)V
.registers 9
add-int v1, p3, p3
add-int/2addr v1, p3
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v2, v1
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v2, v3, :cond_15
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-ge v2, v1, :cond_12
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->a([CII)V
:cond_11
return-void
:cond_12
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_15
add-int/2addr p3, p2
:goto_16
if-ge p2, p3, :cond_11
:goto_18
aget-char v1, p1, p2
const/16 v2, 0x7f
if-gt v1, v2, :cond_2e
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
int-to-byte v1, v1
aput-byte v1, v2, v3
add-int/lit8 p2, p2, 0x1
if-ge p2, p3, :cond_11
goto :goto_18
:cond_2e
add-int/lit8 v0, p2, 0x1
aget-char v1, p1, p2
const/16 v2, 0x800
if-ge v1, v2, :cond_56
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
shr-int/lit8 v4, v1, 0x6
or-int/lit16 v4, v4, 0xc0
int-to-byte v4, v4
aput-byte v4, v2, v3
iget-object v2, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v4, v3, 0x1
iput v4, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
aput-byte v1, v2, v3
move p2, v0
goto :goto_16
:cond_56
invoke-direct {p0, v1, p1, v0, p3}, Lcom/fasterxml/jackson/a/d/i;->a(I[CII)I
move p2, v0
goto :goto_16
.end method
.method public final writeRawUTF8String([BII)V
.registers 8
const/16 v3, 0x22
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->a([BII)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_26
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
.end method
.method public final writeStartArray()V
.registers 4
const-string v0, "start an array"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->b()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->e(Lcom/fasterxml/jackson/a/h;)V
:goto_16
return-void
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_20
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v2, 0x5b
aput-byte v2, v0, v1
goto :goto_16
.end method
.method public final writeStartObject()V
.registers 4
const-string v0, "start an object"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->c()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->d:Lcom/fasterxml/jackson/a/d/e;
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/a/t;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/a/t;->b(Lcom/fasterxml/jackson/a/h;)V
:goto_16
return-void
:cond_17
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_20
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
const/16 v2, 0x7b
aput-byte v2, v0, v1
goto :goto_16
.end method
.method public final writeString(Lcom/fasterxml/jackson/a/u;)V
.registers 6
const/16 v3, 0x22
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
invoke-interface {p1, v0, v1}, Lcom/fasterxml/jackson/a/u;->a([BI)I
move-result v0
if-gez v0, :cond_3f
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->d()[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a([B)V
:goto_2b
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_34
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_34
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
:cond_3f
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
goto :goto_2b
.end method
.method public final writeString(Ljava/lang/String;)V
.registers 8
const/16 v5, 0x22
const/4 v4, 0x0
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
if-nez p1, :cond_e
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->e()V
:goto_d
return-void
:cond_e
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->s:I
if-le v0, v1, :cond_1a
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/d/i;->d(Ljava/lang/String;)V
goto :goto_d
:cond_1a
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
if-le v0, v1, :cond_29
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(I)V
goto :goto_d
:cond_29
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v1, v0
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v1, v2, :cond_33
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_33
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v5, v1, v2
iget-object v1, p0, Lcom/fasterxml/jackson/a/d/i;->r:[C
invoke-direct {p0, v1, v4, v0}, Lcom/fasterxml/jackson/a/d/i;->c([CII)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_4b
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_4b
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v5, v0, v1
goto :goto_d
.end method
.method public final writeString([CII)V
.registers 8
const/16 v3, 0x22
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
if-gt p3, v0, :cond_3f
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/2addr v0, p3
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-le v0, v1, :cond_28
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_28
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->c([CII)V
:goto_2b
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_34
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_34
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
:cond_3f
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->b([CII)V
goto :goto_2b
.end method
.method public final writeUTF8String([BII)V
.registers 8
const/16 v3, 0x22
const-string v0, "write text value"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/d/i;->a(Ljava/lang/String;)V
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_10
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->q:I
if-gt p3, v0, :cond_35
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->c([BII)V
:goto_21
iget v0, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->p:I
if-lt v0, v1, :cond_2a
invoke-direct {p0}, Lcom/fasterxml/jackson/a/d/i;->f()V
:cond_2a
iget-object v0, p0, Lcom/fasterxml/jackson/a/d/i;->n:[B
iget v1, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/fasterxml/jackson/a/d/i;->o:I
aput-byte v3, v0, v1
return-void
:cond_35
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/d/i;->b([BII)V
goto :goto_21
.end method