.class public final Lcom/userzoom/ce;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/ThreadLocal;
.field private b:Lcom/userzoom/l;
.field private c:[C
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/userzoom/cc;->b()[C
invoke-static {}, Lcom/userzoom/cc;->c()[B
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Lcom/userzoom/ce;->a:Ljava/lang/ThreadLocal;
return-void
.end method
.method public constructor <init>()V
.registers 5
const/16 v3, 0x30
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x6
new-array v0, v0, [C
iput-object v0, p0, Lcom/userzoom/ce;->c:[C
iget-object v0, p0, Lcom/userzoom/ce;->c:[C
const/4 v1, 0x0
const/16 v2, 0x5c
aput-char v2, v0, v1
iget-object v0, p0, Lcom/userzoom/ce;->c:[C
const/4 v1, 0x2
aput-char v3, v0, v1
iget-object v0, p0, Lcom/userzoom/ce;->c:[C
const/4 v1, 0x3
aput-char v3, v0, v1
return-void
.end method
.method public static a()Lcom/userzoom/ce;
.registers 3
sget-object v0, Lcom/userzoom/ce;->a:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
if-nez v0, :cond_1d
const/4 v0, 0x0
:goto_b
if-nez v0, :cond_1c
new-instance v0, Lcom/userzoom/ce;
invoke-direct {v0}, Lcom/userzoom/ce;-><init>()V
sget-object v1, Lcom/userzoom/ce;->a:Ljava/lang/ThreadLocal;
new-instance v2, Ljava/lang/ref/SoftReference;
invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:cond_1c
return-object v0
:cond_1d
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/userzoom/ce;
goto :goto_b
.end method
.method private static a(I)V
.registers 4
const v0, 0x10ffff
if-le p0, v0, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Illegal character point (0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") to output; max is 0x10FFFF as per RFC 4627"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
const v0, 0xd800
if-lt p0, v0, :cond_6c
const v0, 0xdbff
if-gt p0, v0, :cond_4d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unmatched first part of surrogate pair (0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unmatched second part of surrogate pair (0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Illegal character point (0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") to output"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final a(Ljava/lang/String;)[B
.registers 16
const v12, 0xdfff
const v11, 0xdc00
const v10, 0xd800
const/4 v4, 0x0
iget-object v0, p0, Lcom/userzoom/ce;->b:Lcom/userzoom/l;
if-nez v0, :cond_15
new-instance v0, Lcom/userzoom/l;
invoke-direct {v0, v4}, Lcom/userzoom/l;-><init>(B)V
iput-object v0, p0, Lcom/userzoom/ce;->b:Lcom/userzoom/l;
:cond_15
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v9
invoke-virtual {v0}, Lcom/userzoom/l;->a()[B
move-result-object v3
array-length v2, v3
move v1, v4
move v6, v4
:goto_20
if-ge v6, v9, :cond_12d
add-int/lit8 v7, v6, 0x1
invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C
move-result v6
move v13, v2
move-object v2, v3
move v3, v1
move v1, v13
:goto_2c
const/16 v5, 0x7f
if-gt v6, v5, :cond_48
if-lt v3, v1, :cond_38
invoke-virtual {v0}, Lcom/userzoom/l;->b()[B
move-result-object v2
array-length v1, v2
move v3, v4
:cond_38
add-int/lit8 v5, v3, 0x1
int-to-byte v6, v6
aput-byte v6, v2, v3
if-ge v7, v9, :cond_120
add-int/lit8 v3, v7, 0x1
invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
move-result v6
move v7, v3
move v3, v5
goto :goto_2c
:cond_48
if-lt v3, v1, :cond_12a
invoke-virtual {v0}, Lcom/userzoom/l;->b()[B
move-result-object v2
array-length v1, v2
move v5, v4
:goto_50
const/16 v3, 0x800
if-ge v6, v3, :cond_74
add-int/lit8 v3, v5, 0x1
shr-int/lit8 v8, v6, 0x6
or-int/lit16 v8, v8, 0xc0
int-to-byte v8, v8
aput-byte v8, v2, v5
move v5, v6
move v6, v7
:goto_5f
if-lt v3, v1, :cond_67
invoke-virtual {v0}, Lcom/userzoom/l;->b()[B
move-result-object v2
array-length v1, v2
move v3, v4
:cond_67
add-int/lit8 v7, v3, 0x1
and-int/lit8 v5, v5, 0x3f
or-int/lit16 v5, v5, 0x80
int-to-byte v5, v5
aput-byte v5, v2, v3
move-object v3, v2
move v2, v1
move v1, v7
goto :goto_20
:cond_74
if-lt v6, v10, :cond_78
if-le v6, v12, :cond_98
:cond_78
add-int/lit8 v3, v5, 0x1
shr-int/lit8 v8, v6, 0xc
or-int/lit16 v8, v8, 0xe0
int-to-byte v8, v8
aput-byte v8, v2, v5
if-lt v3, v1, :cond_89
invoke-virtual {v0}, Lcom/userzoom/l;->b()[B
move-result-object v2
array-length v1, v2
move v3, v4
:cond_89
add-int/lit8 v5, v3, 0x1
shr-int/lit8 v8, v6, 0x6
and-int/lit8 v8, v8, 0x3f
or-int/lit16 v8, v8, 0x80
int-to-byte v8, v8
aput-byte v8, v2, v3
move v3, v5
move v5, v6
move v6, v7
goto :goto_5f
:cond_98
const v3, 0xdbff
if-le v6, v3, :cond_a0
invoke-static {v6}, Lcom/userzoom/ce;->a(I)V
:cond_a0
if-lt v7, v9, :cond_a5
invoke-static {v6}, Lcom/userzoom/ce;->a(I)V
:cond_a5
add-int/lit8 v8, v7, 0x1
invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
move-result v3
if-lt v3, v11, :cond_af
if-le v3, v12, :cond_dc
:cond_af
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Broken surrogate pair: first char 0x"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", second 0x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; illegal combination"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_dc
const/high16 v7, 0x1
sub-int/2addr v6, v10
shl-int/lit8 v6, v6, 0xa
add-int/2addr v6, v7
sub-int/2addr v3, v11
add-int/2addr v6, v3
const v3, 0x10ffff
if-le v6, v3, :cond_ec
invoke-static {v6}, Lcom/userzoom/ce;->a(I)V
:cond_ec
add-int/lit8 v3, v5, 0x1
shr-int/lit8 v7, v6, 0x12
or-int/lit16 v7, v7, 0xf0
int-to-byte v7, v7
aput-byte v7, v2, v5
if-lt v3, v1, :cond_fd
invoke-virtual {v0}, Lcom/userzoom/l;->b()[B
move-result-object v2
array-length v1, v2
move v3, v4
:cond_fd
add-int/lit8 v5, v3, 0x1
shr-int/lit8 v7, v6, 0xc
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v2, v3
if-lt v5, v1, :cond_128
invoke-virtual {v0}, Lcom/userzoom/l;->b()[B
move-result-object v2
array-length v1, v2
move v3, v4
:goto_110
add-int/lit8 v5, v3, 0x1
shr-int/lit8 v7, v6, 0x6
and-int/lit8 v7, v7, 0x3f
or-int/lit16 v7, v7, 0x80
int-to-byte v7, v7
aput-byte v7, v2, v3
move v3, v5
move v5, v6
move v6, v8
goto/16 :goto_5f
:cond_120
move v0, v5
:goto_121
iget-object v1, p0, Lcom/userzoom/ce;->b:Lcom/userzoom/l;
invoke-virtual {v1, v0}, Lcom/userzoom/l;->a(I)[B
move-result-object v0
return-object v0
:cond_128
move v3, v5
goto :goto_110
:cond_12a
move v5, v3
goto/16 :goto_50
:cond_12d
move v0, v1
goto :goto_121
.end method