.class public final Lcom/userzoom/cj;
.super Lcom/userzoom/ch;
.field private static h:[B
.field private static final i:[B
.field private j:Ljava/io/OutputStream;
.field private k:[B
.field private l:I
.field private m:I
.field private n:I
.field private o:[C
.field private p:I
.field private q:Z
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v2, 0x4
invoke-static {}, Lcom/userzoom/cc;->c()[B
move-result-object v0
sput-object v0, Lcom/userzoom/cj;->h:[B
new-array v0, v2, [B
fill-array-data v0, :array_3c
sput-object v0, Lcom/userzoom/cj;->i:[B
new-array v0, v2, [B
const/16 v1, 0x74
aput-byte v1, v0, v3
const/16 v1, 0x72
aput-byte v1, v0, v4
const/16 v1, 0x75
aput-byte v1, v0, v5
const/16 v1, 0x65
aput-byte v1, v0, v6
const/4 v0, 0x5
new-array v0, v0, [B
const/16 v1, 0x66
aput-byte v1, v0, v3
const/16 v1, 0x61
aput-byte v1, v0, v4
const/16 v1, 0x6c
aput-byte v1, v0, v5
const/16 v1, 0x73
aput-byte v1, v0, v6
const/16 v1, 0x65
aput-byte v1, v0, v2
return-void
:array_3c
.array-data 0x1
0x6et
0x75t
0x6ct
0x6ct
.end array-data
.end method
.method public constructor <init>(Lcom/userzoom/cd;ILjava/io/OutputStream;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/userzoom/ch;-><init>(Lcom/userzoom/cd;I)V
const/4 v0, 0x0
iput v0, p0, Lcom/userzoom/cj;->l:I
iput-object p3, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/userzoom/cj;->q:Z
invoke-virtual {p1}, Lcom/userzoom/cd;->b()[B
move-result-object v0
iput-object v0, p0, Lcom/userzoom/cj;->k:[B
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
array-length v0, v0
iput v0, p0, Lcom/userzoom/cj;->m:I
iget v0, p0, Lcom/userzoom/cj;->m:I
shr-int/lit8 v0, v0, 0x3
iput v0, p0, Lcom/userzoom/cj;->n:I
invoke-virtual {p1}, Lcom/userzoom/cd;->c()[C
move-result-object v0
iput-object v0, p0, Lcom/userzoom/cj;->o:[C
iget-object v0, p0, Lcom/userzoom/cj;->o:[C
array-length v0, v0
iput v0, p0, Lcom/userzoom/cj;->p:I
sget-object v0, Lcom/userzoom/f;->g:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/userzoom/cj;->a()Lcom/userzoom/by;
:cond_32
return-void
.end method
.method private a(II)I
.registers 8
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
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
sget-object v3, Lcom/userzoom/cj;->h:[B
shr-int/lit8 v4, p1, 0xc
and-int/lit8 v4, v4, 0xf
aget-byte v3, v3, v4
aput-byte v3, v1, v2
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/userzoom/cj;->h:[B
shr-int/lit8 v4, p1, 0x8
and-int/lit8 v4, v4, 0xf
aget-byte v3, v3, v4
aput-byte v3, v1, v0
add-int/lit8 v3, v2, 0x1
sget-object v0, Lcom/userzoom/cj;->h:[B
shr-int/lit8 v4, p1, 0x4
and-int/lit8 v4, v4, 0xf
aget-byte v0, v0, v4
aput-byte v0, v1, v2
add-int/lit8 v0, v3, 0x1
sget-object v2, Lcom/userzoom/cj;->h:[B
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
.method private a(I[CII)I
.registers 10
const v1, 0xdfff
const v4, 0xdc00
const v3, 0xd800
if-lt p1, v3, :cond_8f
if-gt p1, v1, :cond_8f
if-lt p3, p4, :cond_14
const-string v0, "Split surrogate on writeRaw() input (last character)"
invoke-static {v0}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_14
aget-char v0, p2, p3
if-lt v0, v4, :cond_1a
if-le v0, v1, :cond_3e
:cond_1a
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Incomplete surrogate pair: first char 0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", second 0x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_3e
const/high16 v1, 0x1
sub-int v2, p1, v3
shl-int/lit8 v2, v2, 0xa
add-int/2addr v1, v2
sub-int/2addr v0, v4
add-int/2addr v0, v1
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v1, v1, 0x4
iget v2, p0, Lcom/userzoom/cj;->m:I
if-le v1, v2, :cond_52
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_52
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v3, v0, 0x12
or-int/lit16 v3, v3, 0xf0
int-to-byte v3, v3
aput-byte v3, v1, v2
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v3, v0, 0xc
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v3, v0, 0x6
and-int/lit8 v3, v3, 0x3f
or-int/lit16 v3, v3, 0x80
int-to-byte v3, v3
aput-byte v3, v1, v2
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/userzoom/cj;->l:I
and-int/lit8 v0, v0, 0x3f
or-int/lit16 v0, v0, 0x80
int-to-byte v0, v0
aput-byte v0, v1, v2
add-int/lit8 p3, p3, 0x1
:goto_8e
return p3
:cond_8f
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v2, p1, 0xc
or-int/lit16 v2, v2, 0xe0
int-to-byte v2, v2
aput-byte v2, v0, v1
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v2, p1, 0x6
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v0, v1
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
and-int/lit8 v2, p1, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v0, v1
goto :goto_8e
.end method
.method private a([BILcom/userzoom/ca;I)I
.registers 11
const/4 v5, 0x0
invoke-interface {p3}, Lcom/userzoom/ca;->b()[B
move-result-object v1
array-length v0, v1
const/4 v2, 0x6
if-le v0, v2, :cond_2f
iget v2, p0, Lcom/userzoom/cj;->m:I
array-length v3, v1
add-int v0, p2, v3
if-le v0, v2, :cond_34
iput p2, p0, Lcom/userzoom/cj;->l:I
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
iget v0, p0, Lcom/userzoom/cj;->l:I
array-length v4, p1
if-le v3, v4, :cond_20
iget-object v2, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
invoke-virtual {v2, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V
:goto_1f
:cond_1f
return v0
:cond_20
invoke-static {v1, v5, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v0, v3
:goto_24
mul-int/lit8 v1, p4, 0x6
add-int/2addr v1, v0
if-le v1, v2, :cond_1f
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
iget v0, p0, Lcom/userzoom/cj;->l:I
goto :goto_1f
:cond_2f
invoke-static {v1, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v0, p2
goto :goto_1f
:cond_34
move v0, p2
goto :goto_24
.end method
.method private final a([CII)V
.registers 7
:cond_0
iget v0, p0, Lcom/userzoom/cj;->n:I
invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I
move-result v0
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v1, v0
iget v2, p0, Lcom/userzoom/cj;->m:I
if-le v1, v2, :cond_10
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_10
invoke-direct {p0, p1, p2, v0}, Lcom/userzoom/cj;->b([CII)V
add-int/2addr p2, v0
sub-int/2addr p3, v0
if-gtz p3, :cond_0
return-void
.end method
.method private b(II)I
.registers 9
const/16 v4, 0x30
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
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
sget-object v0, Lcom/userzoom/cj;->h:[B
shr-int/lit8 v5, v3, 0x4
aget-byte v0, v0, v5
aput-byte v0, v1, v2
add-int/lit8 v0, v4, 0x1
sget-object v2, Lcom/userzoom/cj;->h:[B
and-int/lit8 v3, v3, 0xf
aget-byte v2, v2, v3
aput-byte v2, v1, v4
and-int/lit16 p1, p1, 0xff
:goto_2e
add-int/lit8 v2, v0, 0x1
sget-object v3, Lcom/userzoom/cj;->h:[B
shr-int/lit8 v4, p1, 0x4
aget-byte v3, v3, v4
aput-byte v3, v1, v0
add-int/lit8 v0, v2, 0x1
sget-object v3, Lcom/userzoom/cj;->h:[B
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
.method private final b([CII)V
.registers 16
const/16 v11, 0x7f
add-int v4, p3, p2
iget v0, p0, Lcom/userzoom/cj;->l:I
iget-object v3, p0, Lcom/userzoom/cj;->k:[B
iget-object v5, p0, Lcom/userzoom/cj;->d:[I
move v2, p2
:goto_b
if-ge v2, v4, :cond_1e
aget-char v6, p1, v2
if-gt v6, v11, :cond_1e
aget v1, v5, v6
if-nez v1, :cond_1e
add-int/lit8 v1, v0, 0x1
int-to-byte v6, v6
aput-byte v6, v3, v0
add-int/lit8 v2, v2, 0x1
move v0, v1
goto :goto_b
:cond_1e
iput v0, p0, Lcom/userzoom/cj;->l:I
if-ge v2, v4, :cond_d6
iget-object v0, p0, Lcom/userzoom/cj;->f:Lcom/userzoom/o;
if-eqz v0, :cond_d7
iget v0, p0, Lcom/userzoom/cj;->l:I
sub-int v1, v4, v2
mul-int/lit8 v1, v1, 0x6
add-int/2addr v0, v1
iget v1, p0, Lcom/userzoom/cj;->m:I
if-le v0, v1, :cond_34
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_34
iget v1, p0, Lcom/userzoom/cj;->l:I
iget-object v5, p0, Lcom/userzoom/cj;->k:[B
iget-object v6, p0, Lcom/userzoom/cj;->d:[I
iget v0, p0, Lcom/userzoom/cj;->e:I
if-gtz v0, :cond_57
const v0, 0xffff
:goto_41
iget-object v7, p0, Lcom/userzoom/cj;->f:Lcom/userzoom/o;
:goto_43
if-ge v2, v4, :cond_d4
add-int/lit8 v3, v2, 0x1
aget-char v8, p1, v2
if-gt v8, v11, :cond_9e
aget v2, v6, v8
if-nez v2, :cond_5a
add-int/lit8 v2, v1, 0x1
int-to-byte v8, v8
aput-byte v8, v5, v1
move v1, v2
move v2, v3
goto :goto_43
:cond_57
iget v0, p0, Lcom/userzoom/cj;->e:I
goto :goto_41
:cond_5a
aget v2, v6, v8
if-lez v2, :cond_6b
add-int/lit8 v8, v1, 0x1
const/16 v9, 0x5c
aput-byte v9, v5, v1
add-int/lit8 v1, v8, 0x1
int-to-byte v2, v2
aput-byte v2, v5, v8
move v2, v3
goto :goto_43
:cond_6b
const/4 v9, -0x2
if-ne v2, v9, :cond_98
invoke-virtual {v7}, Lcom/userzoom/o;->a()Lcom/userzoom/ca;
move-result-object v2
if-nez v2, :cond_90
new-instance v9, Ljava/lang/StringBuilder;
const-string v10, "Invalid custom escape definitions; custom escape not found for character code 0x"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, ", although was supposed to have one"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_90
sub-int v8, v4, v3
invoke-direct {p0, v5, v1, v2, v8}, Lcom/userzoom/cj;->a([BILcom/userzoom/ca;I)I
move-result v1
move v2, v3
goto :goto_43
:cond_98
invoke-direct {p0, v8, v1}, Lcom/userzoom/cj;->b(II)I
move-result v1
move v2, v3
goto :goto_43
:cond_9e
if-le v8, v0, :cond_a6
invoke-direct {p0, v8, v1}, Lcom/userzoom/cj;->b(II)I
move-result v1
move v2, v3
goto :goto_43
:cond_a6
invoke-virtual {v7}, Lcom/userzoom/o;->a()Lcom/userzoom/ca;
move-result-object v2
if-eqz v2, :cond_b4
sub-int v8, v4, v3
invoke-direct {p0, v5, v1, v2, v8}, Lcom/userzoom/cj;->a([BILcom/userzoom/ca;I)I
move-result v1
move v2, v3
goto :goto_43
:cond_b4
const/16 v2, 0x7ff
if-gt v8, v2, :cond_cd
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v9, v8, 0x6
or-int/lit16 v9, v9, 0xc0
int-to-byte v9, v9
aput-byte v9, v5, v1
add-int/lit8 v1, v2, 0x1
and-int/lit8 v8, v8, 0x3f
or-int/lit16 v8, v8, 0x80
int-to-byte v8, v8
aput-byte v8, v5, v2
move v2, v3
goto/16 :goto_43
:cond_cd
invoke-direct {p0, v8, v1}, Lcom/userzoom/cj;->a(II)I
move-result v1
move v2, v3
goto/16 :goto_43
:cond_d4
iput v1, p0, Lcom/userzoom/cj;->l:I
:goto_d6
:cond_d6
return-void
:cond_d7
iget v0, p0, Lcom/userzoom/cj;->e:I
if-nez v0, :cond_df
invoke-direct {p0, p1, v2, v4}, Lcom/userzoom/cj;->c([CII)V
goto :goto_d6
:cond_df
invoke-direct {p0, p1, v2, v4}, Lcom/userzoom/cj;->d([CII)V
goto :goto_d6
.end method
.method private final c([CII)V
.registers 11
iget v0, p0, Lcom/userzoom/cj;->l:I
sub-int v1, p3, p2
mul-int/lit8 v1, v1, 0x6
add-int/2addr v0, v1
iget v1, p0, Lcom/userzoom/cj;->m:I
if-le v0, v1, :cond_e
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_e
iget v0, p0, Lcom/userzoom/cj;->l:I
iget-object v3, p0, Lcom/userzoom/cj;->k:[B
iget-object v4, p0, Lcom/userzoom/cj;->d:[I
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
invoke-direct {p0, v5, v0}, Lcom/userzoom/cj;->b(II)I
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
invoke-direct {p0, v5, v0}, Lcom/userzoom/cj;->a(II)I
move-result v0
move p2, v2
goto :goto_14
:cond_5f
iput v0, p0, Lcom/userzoom/cj;->l:I
return-void
.end method
.method private final d([CII)V
.registers 12
iget v0, p0, Lcom/userzoom/cj;->l:I
sub-int v1, p3, p2
mul-int/lit8 v1, v1, 0x6
add-int/2addr v0, v1
iget v1, p0, Lcom/userzoom/cj;->m:I
if-le v0, v1, :cond_e
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_e
iget v0, p0, Lcom/userzoom/cj;->l:I
iget-object v3, p0, Lcom/userzoom/cj;->k:[B
iget-object v4, p0, Lcom/userzoom/cj;->d:[I
iget v5, p0, Lcom/userzoom/cj;->e:I
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
invoke-direct {p0, v6, v0}, Lcom/userzoom/cj;->b(II)I
move-result v0
move p2, v2
goto :goto_16
:cond_43
if-le v6, v5, :cond_4b
invoke-direct {p0, v6, v0}, Lcom/userzoom/cj;->b(II)I
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
invoke-direct {p0, v6, v0}, Lcom/userzoom/cj;->a(II)I
move-result v0
move p2, v2
goto :goto_16
:cond_69
iput v0, p0, Lcom/userzoom/cj;->l:I
return-void
.end method
.method private f(Ljava/lang/String;)V
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->i()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_22
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
invoke-static {v1}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_22
packed-switch v0, :pswitch_data_70
:goto_25
:cond_25
return-void
:pswitch_26
const/16 v0, 0x2c
:goto_28
iget v1, p0, Lcom/userzoom/cj;->l:I
iget v2, p0, Lcom/userzoom/cj;->m:I
if-lt v1, v2, :cond_31
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_31
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
iget v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v0, v1, v2
iget v0, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/userzoom/cj;->l:I
goto :goto_25
:pswitch_3e
const/16 v0, 0x3a
goto :goto_28
:pswitch_41
iget-object v0, p0, Lcom/userzoom/cj;->g:Lcom/userzoom/ca;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/userzoom/cj;->g:Lcom/userzoom/ca;
invoke-interface {v0}, Lcom/userzoom/ca;->b()[B
move-result-object v0
array-length v1, v0
if-lez v1, :cond_25
array-length v1, v0
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v2, v1
iget v3, p0, Lcom/userzoom/cj;->m:I
if-le v2, v3, :cond_63
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
const/16 v2, 0x200
if-le v1, v2, :cond_63
iget-object v2, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
invoke-virtual {v2, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
goto :goto_25
:cond_63
iget-object v2, p0, Lcom/userzoom/cj;->k:[B
iget v3, p0, Lcom/userzoom/cj;->l:I
invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v0, v1
iput v0, p0, Lcom/userzoom/cj;->l:I
goto :goto_25
:pswitch_data_70
.packed-switch 0x1
:pswitch_26
:pswitch_3e
:pswitch_41
.end packed-switch
.end method
.method private g()V
.registers 5
const/4 v3, 0x0
iget v0, p0, Lcom/userzoom/cj;->l:I
if-lez v0, :cond_e
iput v3, p0, Lcom/userzoom/cj;->l:I
iget-object v1, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
iget-object v2, p0, Lcom/userzoom/cj;->k:[B
invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
:cond_e
return-void
.end method
.method private final g(Ljava/lang/String;)V
.registers 9
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget-object v3, p0, Lcom/userzoom/cj;->o:[C
move v2, v0
move v0, v1
:goto_9
if-lez v2, :cond_26
iget v4, p0, Lcom/userzoom/cj;->n:I
invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I
move-result v4
add-int v5, v0, v4
invoke-virtual {p1, v0, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V
iget v5, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v5, v4
iget v6, p0, Lcom/userzoom/cj;->m:I
if-le v5, v6, :cond_20
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_20
invoke-direct {p0, v3, v1, v4}, Lcom/userzoom/cj;->b([CII)V
add-int/2addr v0, v4
sub-int/2addr v2, v4
goto :goto_9
:cond_26
return-void
.end method
.method public final a(F)V
.registers 15
const/16 v12, 0x800
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/userzoom/cj;->a:Z
if-nez v0, :cond_1b
invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z
move-result v0
if-nez v0, :cond_13
invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z
move-result v0
if-eqz v0, :cond_23
:cond_13
sget-object v0, Lcom/userzoom/f;->d:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_23
:cond_1b
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->b(Ljava/lang/String;)V
:cond_22
return-void
:cond_23
const-string v0, "write number"
invoke-direct {p0, v0}, Lcom/userzoom/cj;->f(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v1
move v5, v3
:goto_31
if-lez v1, :cond_22
iget-object v7, p0, Lcom/userzoom/cj;->o:[C
array-length v0, v7
if-ge v1, v0, :cond_39
move v0, v1
:cond_39
add-int v2, v5, v0
invoke-virtual {v6, v5, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V
add-int v2, v0, v0
add-int/2addr v2, v0
iget v4, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v4, v2
iget v8, p0, Lcom/userzoom/cj;->m:I
if-le v4, v8, :cond_a7
iget v4, p0, Lcom/userzoom/cj;->m:I
if-ge v4, v2, :cond_a4
iget v8, p0, Lcom/userzoom/cj;->m:I
iget-object v9, p0, Lcom/userzoom/cj;->k:[B
move v2, v3
:goto_51
if-ge v2, v0, :cond_6d
:cond_53
aget-char v4, v7, v2
const/16 v10, 0x80
if-ge v4, v10, :cond_72
iget v10, p0, Lcom/userzoom/cj;->l:I
if-lt v10, v8, :cond_60
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_60
iget v10, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lcom/userzoom/cj;->l:I
int-to-byte v4, v4
aput-byte v4, v9, v10
add-int/lit8 v2, v2, 0x1
if-lt v2, v0, :cond_53
:cond_6d
add-int v2, v5, v0
sub-int/2addr v1, v0
move v5, v2
goto :goto_31
:cond_72
iget v4, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v4, v4, 0x3
iget v10, p0, Lcom/userzoom/cj;->m:I
if-lt v4, v10, :cond_7d
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_7d
add-int/lit8 v4, v2, 0x1
aget-char v2, v7, v2
if-ge v2, v12, :cond_9f
iget v10, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v11, v2, 0x6
or-int/lit16 v11, v11, 0xc0
int-to-byte v11, v11
aput-byte v11, v9, v10
iget v10, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lcom/userzoom/cj;->l:I
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v9, v10
move v2, v4
goto :goto_51
:cond_9f
invoke-direct {p0, v2, v7, v4, v0}, Lcom/userzoom/cj;->a(I[CII)I
move v2, v4
goto :goto_51
:cond_a4
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_a7
add-int/lit8 v8, v0, 0x0
move v2, v3
:goto_aa
if-ge v2, v8, :cond_6d
:goto_ac
aget-char v4, v7, v2
const/16 v9, 0x7f
if-gt v4, v9, :cond_c2
iget-object v9, p0, Lcom/userzoom/cj;->k:[B
iget v10, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lcom/userzoom/cj;->l:I
int-to-byte v4, v4
aput-byte v4, v9, v10
add-int/lit8 v2, v2, 0x1
if-ge v2, v8, :cond_6d
goto :goto_ac
:cond_c2
add-int/lit8 v4, v2, 0x1
aget-char v2, v7, v2
if-ge v2, v12, :cond_e8
iget-object v9, p0, Lcom/userzoom/cj;->k:[B
iget v10, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lcom/userzoom/cj;->l:I
shr-int/lit8 v11, v2, 0x6
or-int/lit16 v11, v11, 0xc0
int-to-byte v11, v11
aput-byte v11, v9, v10
iget-object v9, p0, Lcom/userzoom/cj;->k:[B
iget v10, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v11, v10, 0x1
iput v11, p0, Lcom/userzoom/cj;->l:I
and-int/lit8 v2, v2, 0x3f
or-int/lit16 v2, v2, 0x80
int-to-byte v2, v2
aput-byte v2, v9, v10
move v2, v4
goto :goto_aa
:cond_e8
invoke-direct {p0, v2, v7, v4, v8}, Lcom/userzoom/cj;->a(I[CII)I
move v2, v4
goto :goto_aa
.end method
.method public final a(I)V
.registers 6
const/16 v3, 0x22
const-string v0, "write number"
invoke-direct {p0, v0}, Lcom/userzoom/cj;->f(Ljava/lang/String;)V
iget v0, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v0, v0, 0xb
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_12
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_12
iget-boolean v0, p0, Lcom/userzoom/cj;->a:Z
if-eqz v0, :cond_40
iget v0, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v0, v0, 0xd
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_21
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_21
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v3, v0, v1
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
invoke-static {p1, v0, v1}, Lcom/userzoom/cf;->a(I[BI)I
move-result v0
iput v0, p0, Lcom/userzoom/cj;->l:I
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v3, v0, v1
:goto_3f
return-void
:cond_40
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
invoke-static {p1, v0, v1}, Lcom/userzoom/cf;->a(I[BI)I
move-result v0
iput v0, p0, Lcom/userzoom/cj;->l:I
goto :goto_3f
.end method
.method public final a(Ljava/lang/String;)V
.registers 7
const/16 v4, 0x22
const/4 v3, 0x0
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0, p1}, Lcom/userzoom/ci;->a(Ljava/lang/String;)I
move-result v0
const/4 v1, 0x4
if-ne v0, v1, :cond_11
const-string v1, "Can not write a field name, expecting a value"
invoke-static {v1}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_11
const/4 v1, 0x1
if-ne v0, v1, :cond_29
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_1d
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_1d
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
const/16 v2, 0x2c
aput-byte v2, v0, v1
:cond_29
sget-object v0, Lcom/userzoom/f;->c:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-nez v0, :cond_35
invoke-direct {p0, p1}, Lcom/userzoom/cj;->g(Ljava/lang/String;)V
:goto_34
return-void
:cond_35
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_3e
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_3e
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v0, v1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/userzoom/cj;->p:I
if-gt v0, v1, :cond_82
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/userzoom/cj;->n:I
if-gt v0, v1, :cond_7c
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v1, v0
iget v2, p0, Lcom/userzoom/cj;->m:I
if-le v1, v2, :cond_63
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_63
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
invoke-direct {p0, v1, v3, v0}, Lcom/userzoom/cj;->b([CII)V
:goto_68
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_71
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_71
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v0, v1
goto :goto_34
:cond_7c
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
invoke-direct {p0, v1, v3, v0}, Lcom/userzoom/cj;->a([CII)V
goto :goto_68
:cond_82
invoke-direct {p0, p1}, Lcom/userzoom/cj;->g(Ljava/lang/String;)V
goto :goto_68
.end method
.method public final b()V
.registers 4
const-string v0, "start an array"
invoke-direct {p0, v0}, Lcom/userzoom/cj;->f(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->f()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_16
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_16
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
const/16 v2, 0x5b
aput-byte v2, v0, v1
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
const/16 v4, 0x22
const-string v0, "write text value"
invoke-direct {p0, v0}, Lcom/userzoom/cj;->f(Ljava/lang/String;)V
if-nez p1, :cond_26
iget v0, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v0, v0, 0x4
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_15
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_15
sget-object v0, Lcom/userzoom/cj;->i:[B
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
iget v2, p0, Lcom/userzoom/cj;->l:I
const/4 v3, 0x4
invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/userzoom/cj;->l:I
:goto_25
return-void
:cond_26
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
iget v1, p0, Lcom/userzoom/cj;->p:I
if-le v0, v1, :cond_58
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_37
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_37
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v0, v1
invoke-direct {p0, p1}, Lcom/userzoom/cj;->g(Ljava/lang/String;)V
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_4d
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_4d
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v0, v1
goto :goto_25
:cond_58
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
invoke-virtual {p1, v5, v0, v1, v5}, Ljava/lang/String;->getChars(II[CI)V
iget v1, p0, Lcom/userzoom/cj;->n:I
if-le v0, v1, :cond_8f
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
iget v1, p0, Lcom/userzoom/cj;->l:I
iget v2, p0, Lcom/userzoom/cj;->m:I
if-lt v1, v2, :cond_6c
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_6c
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v1, v2
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
invoke-direct {p0, v1, v5, v0}, Lcom/userzoom/cj;->a([CII)V
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_84
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_84
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v0, v1
goto :goto_25
:cond_8f
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/2addr v1, v0
iget v2, p0, Lcom/userzoom/cj;->m:I
if-lt v1, v2, :cond_99
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_99
iget-object v1, p0, Lcom/userzoom/cj;->k:[B
iget v2, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v1, v2
iget-object v1, p0, Lcom/userzoom/cj;->o:[C
invoke-direct {p0, v1, v5, v0}, Lcom/userzoom/cj;->b([CII)V
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_b1
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_b1
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
aput-byte v4, v0, v1
goto/16 :goto_25
.end method
.method public final c()V
.registers 4
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->a()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current context not an ARRAY but "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v1}, Lcom/userzoom/ci;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_20
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_29
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_29
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
const/16 v2, 0x5d
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->h()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
return-void
.end method
.method public final close()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Lcom/userzoom/ch;->close()V
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
if-eqz v0, :cond_28
sget-object v0, Lcom/userzoom/f;->b:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_28
:goto_10
invoke-virtual {p0}, Lcom/userzoom/cj;->f()Lcom/userzoom/ci;
move-result-object v0
invoke-virtual {v0}, Lcom/userzoom/bz;->a()Z
move-result v1
if-eqz v1, :cond_1e
invoke-virtual {p0}, Lcom/userzoom/cj;->c()V
goto :goto_10
:cond_1e
invoke-virtual {v0}, Lcom/userzoom/bz;->b()Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p0}, Lcom/userzoom/cj;->e()V
goto :goto_10
:cond_28
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
iget-object v0, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/userzoom/cj;->c:Lcom/userzoom/cd;
invoke-virtual {v0}, Lcom/userzoom/cd;->a()Z
move-result v0
if-nez v0, :cond_3f
sget-object v0, Lcom/userzoom/f;->a:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_5f
:cond_3f
iget-object v0, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:goto_44
:cond_44
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
if-eqz v0, :cond_53
iget-boolean v1, p0, Lcom/userzoom/cj;->q:Z
if-eqz v1, :cond_53
iput-object v2, p0, Lcom/userzoom/cj;->k:[B
iget-object v1, p0, Lcom/userzoom/cj;->c:Lcom/userzoom/cd;
invoke-virtual {v1, v0}, Lcom/userzoom/cd;->a([B)V
:cond_53
iget-object v0, p0, Lcom/userzoom/cj;->o:[C
if-eqz v0, :cond_5e
iput-object v2, p0, Lcom/userzoom/cj;->o:[C
iget-object v1, p0, Lcom/userzoom/cj;->c:Lcom/userzoom/cd;
invoke-virtual {v1, v0}, Lcom/userzoom/cd;->a([C)V
:cond_5e
return-void
:cond_5f
sget-object v0, Lcom/userzoom/f;->f:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
goto :goto_44
.end method
.method public final d()V
.registers 4
const-string v0, "start an object"
invoke-direct {p0, v0}, Lcom/userzoom/cj;->f(Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->g()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_16
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_16
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
const/16 v2, 0x7b
aput-byte v2, v0, v1
return-void
.end method
.method public final e()V
.registers 4
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->b()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current context not an object but "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v1}, Lcom/userzoom/ci;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/userzoom/cj;->e(Ljava/lang/String;)V
:cond_20
iget v0, p0, Lcom/userzoom/cj;->l:I
iget v1, p0, Lcom/userzoom/cj;->m:I
if-lt v0, v1, :cond_29
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
:cond_29
iget-object v0, p0, Lcom/userzoom/cj;->k:[B
iget v1, p0, Lcom/userzoom/cj;->l:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/userzoom/cj;->l:I
const/16 v2, 0x7d
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
invoke-virtual {v0}, Lcom/userzoom/ci;->h()Lcom/userzoom/ci;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/cj;->b:Lcom/userzoom/ci;
return-void
.end method
.method public final flush()V
.registers 2
invoke-direct {p0}, Lcom/userzoom/cj;->g()V
iget-object v0, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
if-eqz v0, :cond_14
sget-object v0, Lcom/userzoom/f;->f:Lcom/userzoom/f;
invoke-virtual {p0, v0}, Lcom/userzoom/cj;->a(Lcom/userzoom/f;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/userzoom/cj;->j:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:cond_14
return-void
.end method