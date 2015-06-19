.class public Lcom/google/a/c;
.super Ljava/lang/Object;
.field private static final l:I = 0x40
.field private static final m:I = 0x4000000
.field private static final n:I = 0x1000
.field private final a:[B
.field private b:I
.field private c:I
.field private d:I
.field private final e:Ljava/io/InputStream;
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.field private k:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private constructor <init>(Ljava/io/InputStream;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7fffffff
iput v0, p0, Lcom/google/a/c;->h:I
const/16 v0, 0x40
iput v0, p0, Lcom/google/a/c;->j:I
const/high16 v0, 0x400
iput v0, p0, Lcom/google/a/c;->k:I
const/16 v0, 0x1000
new-array v0, v0, [B
iput-object v0, p0, Lcom/google/a/c;->a:[B
iput v1, p0, Lcom/google/a/c;->b:I
iput v1, p0, Lcom/google/a/c;->d:I
iput v1, p0, Lcom/google/a/c;->g:I
iput-object p1, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
return-void
.end method
.method private constructor <init>([BII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7fffffff
iput v0, p0, Lcom/google/a/c;->h:I
const/16 v0, 0x40
iput v0, p0, Lcom/google/a/c;->j:I
const/high16 v0, 0x400
iput v0, p0, Lcom/google/a/c;->k:I
iput-object p1, p0, Lcom/google/a/c;->a:[B
add-int v0, p2, p3
iput v0, p0, Lcom/google/a/c;->b:I
iput p2, p0, Lcom/google/a/c;->d:I
neg-int v0, p2
iput v0, p0, Lcom/google/a/c;->g:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
return-void
.end method
.method private A()Z
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/google/a/c;->d:I
iget v2, p0, Lcom/google/a/c;->b:I
if-ne v1, v2, :cond_e
invoke-direct {p0, v0}, Lcom/google/a/c;->a(Z)Z
move-result v1
if-nez v1, :cond_e
const/4 v0, 0x1
:cond_e
return v0
.end method
.method private B()I
.registers 3
iget v0, p0, Lcom/google/a/c;->g:I
iget v1, p0, Lcom/google/a/c;->d:I
add-int/2addr v0, v1
return v0
.end method
.method private C()B
.registers 4
iget v0, p0, Lcom/google/a/c;->d:I
iget v1, p0, Lcom/google/a/c;->b:I
if-ne v0, v1, :cond_a
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/a/c;->a(Z)Z
:cond_a
iget-object v0, p0, Lcom/google/a/c;->a:[B
iget v1, p0, Lcom/google/a/c;->d:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/google/a/c;->d:I
aget-byte v0, v0, v1
return v0
.end method
.method private static a(ILjava/io/InputStream;)I
.registers 6
const/4 v3, -0x1
and-int/lit16 v0, p0, 0x80
if-nez v0, :cond_6
:cond_5
return p0
:cond_6
and-int/lit8 p0, p0, 0x7f
const/4 v0, 0x7
:goto_9
const/16 v1, 0x20
if-lt v0, v1, :cond_1a
:goto_d
const/16 v1, 0x40
if-lt v0, v1, :cond_34
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "malformed varint."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v1
if-ne v1, v3, :cond_29
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
and-int/lit8 v2, v1, 0x7f
shl-int/2addr v2, v0
or-int/2addr p0, v2
and-int/lit16 v1, v1, 0x80
if-eqz v1, :cond_5
add-int/lit8 v0, v0, 0x7
goto :goto_9
:cond_34
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v1
if-ne v1, v3, :cond_43
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_43
and-int/lit16 v1, v1, 0x80
if-eqz v1, :cond_5
add-int/lit8 v0, v0, 0x7
goto :goto_d
.end method
.method private static a(J)J
.registers 6
const/4 v0, 0x1
ushr-long v0, p0, v0
const-wide/16 v2, 0x1
and-long/2addr v2, p0
neg-long v2, v2
xor-long/2addr v0, v2
return-wide v0
.end method
.method public static a(Ljava/io/InputStream;)Lcom/google/a/c;
.registers 2
new-instance v0, Lcom/google/a/c;
invoke-direct {v0, p0}, Lcom/google/a/c;-><init>(Ljava/io/InputStream;)V
return-object v0
.end method
.method public static a([B)Lcom/google/a/c;
.registers 4
array-length v0, p0
new-instance v1, Lcom/google/a/c;
const/4 v2, 0x0
invoke-direct {v1, p0, v2, v0}, Lcom/google/a/c;-><init>([BII)V
return-object v1
.end method
.method public static a([BII)Lcom/google/a/c;
.registers 5
new-instance v0, Lcom/google/a/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p2}, Lcom/google/a/c;-><init>([BII)V
return-object v0
.end method
.method private a(Z)Z
.registers 6
const/4 v1, -0x1
const/4 v2, 0x0
iget v0, p0, Lcom/google/a/c;->d:I
iget v3, p0, Lcom/google/a/c;->b:I
if-ge v0, v3, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "refillBuffer() called when buffer wasn\'t empty."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
iget v0, p0, Lcom/google/a/c;->g:I
iget v3, p0, Lcom/google/a/c;->b:I
add-int/2addr v0, v3
iget v3, p0, Lcom/google/a/c;->h:I
if-ne v0, v3, :cond_27
if-eqz p1, :cond_25
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
move v0, v2
:goto_26
return v0
:cond_27
iget v0, p0, Lcom/google/a/c;->g:I
iget v3, p0, Lcom/google/a/c;->b:I
add-int/2addr v0, v3
iput v0, p0, Lcom/google/a/c;->g:I
iput v2, p0, Lcom/google/a/c;->d:I
iget-object v0, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
if-nez v0, :cond_5e
move v0, v1
:goto_35
iput v0, p0, Lcom/google/a/c;->b:I
iget v0, p0, Lcom/google/a/c;->b:I
if-eqz v0, :cond_3f
iget v0, p0, Lcom/google/a/c;->b:I
if-ge v0, v1, :cond_67
:cond_3f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "InputStream#read(byte[]) returned invalid result: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/google/a/c;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "\nThe InputStream implementation is buggy."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_5e
iget-object v0, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
iget-object v3, p0, Lcom/google/a/c;->a:[B
invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I
move-result v0
goto :goto_35
:cond_67
iget v0, p0, Lcom/google/a/c;->b:I
if-ne v0, v1, :cond_7a
iput v2, p0, Lcom/google/a/c;->b:I
if-eqz p1, :cond_78
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_78
move v0, v2
goto :goto_26
:cond_7a
invoke-direct {p0}, Lcom/google/a/c;->z()V
iget v0, p0, Lcom/google/a/c;->g:I
iget v1, p0, Lcom/google/a/c;->b:I
add-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->c:I
add-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->k:I
if-gt v0, v1, :cond_8b
if-gez v0, :cond_94
:cond_8b
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Size limit exceeded."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_94
const/4 v0, 0x1
goto :goto_26
.end method
.method private static b(Ljava/io/InputStream;)I
.registers 3
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_10
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-static {v0, p0}, Lcom/google/a/c;->a(ILjava/io/InputStream;)I
move-result v0
return v0
.end method
.method private d(I)V
.registers 4
iget v0, p0, Lcom/google/a/c;->f:I
if-eq v0, p1, :cond_d
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Invalid end tag."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
return-void
.end method
.method private static e(I)I
.registers 3
ushr-int/lit8 v0, p0, 0x1
and-int/lit8 v1, p0, 0x1
neg-int v1, v1
xor-int/2addr v0, v1
return v0
.end method
.method private f(I)I
.registers 5
if-gez p1, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Recursion limit cannot be negative: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
iget v0, p0, Lcom/google/a/c;->j:I
iput p1, p0, Lcom/google/a/c;->j:I
return v0
.end method
.method private g(I)I
.registers 5
if-gez p1, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Size limit cannot be negative: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
iget v0, p0, Lcom/google/a/c;->k:I
iput p1, p0, Lcom/google/a/c;->k:I
return v0
.end method
.method private h(I)[B
.registers 13
const/16 v10, 0x1000
const/4 v5, 0x1
const/4 v3, -0x1
const/4 v1, 0x0
if-gez p1, :cond_10
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Negative size."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget v0, p0, Lcom/google/a/c;->g:I
iget v2, p0, Lcom/google/a/c;->d:I
add-int/2addr v0, v2
add-int/2addr v0, p1
iget v2, p0, Lcom/google/a/c;->h:I
if-le v0, v2, :cond_2e
iget v0, p0, Lcom/google/a/c;->h:I
iget v1, p0, Lcom/google/a/c;->g:I
sub-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/google/a/c;->i(I)V
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
iget v0, p0, Lcom/google/a/c;->b:I
iget v2, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v2
if-gt p1, v0, :cond_44
new-array v0, p1, [B
iget-object v2, p0, Lcom/google/a/c;->a:[B
iget v3, p0, Lcom/google/a/c;->d:I
invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lcom/google/a/c;->d:I
add-int/2addr v1, p1
iput v1, p0, Lcom/google/a/c;->d:I
:goto_43
return-object v0
:cond_44
if-ge p1, v10, :cond_80
new-array v2, p1, [B
iget v0, p0, Lcom/google/a/c;->b:I
iget v3, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v3
iget-object v3, p0, Lcom/google/a/c;->a:[B
iget v4, p0, Lcom/google/a/c;->d:I
invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v3, p0, Lcom/google/a/c;->b:I
iput v3, p0, Lcom/google/a/c;->d:I
invoke-direct {p0, v5}, Lcom/google/a/c;->a(Z)Z
:goto_5b
sub-int v3, p1, v0
iget v4, p0, Lcom/google/a/c;->b:I
if-gt v3, v4, :cond_6e
iget-object v3, p0, Lcom/google/a/c;->a:[B
sub-int v4, p1, v0
invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
sub-int v0, p1, v0
iput v0, p0, Lcom/google/a/c;->d:I
move-object v0, v2
goto :goto_43
:cond_6e
iget-object v3, p0, Lcom/google/a/c;->a:[B
iget v4, p0, Lcom/google/a/c;->b:I
invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v3, p0, Lcom/google/a/c;->b:I
add-int/2addr v0, v3
iget v3, p0, Lcom/google/a/c;->b:I
iput v3, p0, Lcom/google/a/c;->d:I
invoke-direct {p0, v5}, Lcom/google/a/c;->a(Z)Z
goto :goto_5b
:cond_80
iget v5, p0, Lcom/google/a/c;->d:I
iget v6, p0, Lcom/google/a/c;->b:I
iget v0, p0, Lcom/google/a/c;->g:I
iget v2, p0, Lcom/google/a/c;->b:I
add-int/2addr v0, v2
iput v0, p0, Lcom/google/a/c;->g:I
iput v1, p0, Lcom/google/a/c;->d:I
iput v1, p0, Lcom/google/a/c;->b:I
sub-int v0, v6, v5
sub-int v0, p1, v0
new-instance v7, Ljava/util/Vector;
invoke-direct {v7}, Ljava/util/Vector;-><init>()V
move v4, v0
:goto_99
if-gtz v4, :cond_ae
new-array v4, p1, [B
sub-int v0, v6, v5
iget-object v2, p0, Lcom/google/a/c;->a:[B
invoke-static {v2, v5, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move v2, v1
move v3, v0
:goto_a6
invoke-virtual {v7}, Ljava/util/Vector;->size()I
move-result v0
if-lt v2, v0, :cond_e0
move-object v0, v4
goto :goto_43
:cond_ae
invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I
move-result v0
new-array v8, v0, [B
move v0, v1
:goto_b5
array-length v2, v8
if-lt v0, v2, :cond_c0
array-length v0, v8
sub-int v0, v4, v0
invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
move v4, v0
goto :goto_99
:cond_c0
iget-object v2, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
if-nez v2, :cond_d0
move v2, v3
:goto_c5
if-ne v2, v3, :cond_d9
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d0
iget-object v2, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
array-length v9, v8
sub-int/2addr v9, v0
invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I
move-result v2
goto :goto_c5
:cond_d9
iget v9, p0, Lcom/google/a/c;->g:I
add-int/2addr v9, v2
iput v9, p0, Lcom/google/a/c;->g:I
add-int/2addr v0, v2
goto :goto_b5
:cond_e0
invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
array-length v5, v0
invoke-static {v0, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
array-length v0, v0
add-int/2addr v3, v0
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_a6
.end method
.method private i(I)V
.registers 6
const/4 v2, 0x0
if-gez p1, :cond_c
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Negative size."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget v0, p0, Lcom/google/a/c;->g:I
iget v1, p0, Lcom/google/a/c;->d:I
add-int/2addr v0, v1
add-int/2addr v0, p1
iget v1, p0, Lcom/google/a/c;->h:I
if-le v0, v1, :cond_2a
iget v0, p0, Lcom/google/a/c;->h:I
iget v1, p0, Lcom/google/a/c;->g:I
sub-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/google/a/c;->i(I)V
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
iget v0, p0, Lcom/google/a/c;->b:I
iget v1, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v1
if-gt p1, v0, :cond_37
iget v0, p0, Lcom/google/a/c;->d:I
add-int/2addr v0, p1
iput v0, p0, Lcom/google/a/c;->d:I
:cond_36
return-void
:cond_37
iget v0, p0, Lcom/google/a/c;->b:I
iget v1, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->g:I
add-int/2addr v1, v0
iput v1, p0, Lcom/google/a/c;->g:I
iput v2, p0, Lcom/google/a/c;->d:I
iput v2, p0, Lcom/google/a/c;->b:I
move v1, v0
:goto_46
if-ge v1, p1, :cond_36
iget-object v0, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
if-nez v0, :cond_58
const/4 v0, -0x1
:goto_4d
if-gtz v0, :cond_63
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_58
iget-object v0, p0, Lcom/google/a/c;->e:Ljava/io/InputStream;
sub-int v2, p1, v1
int-to-long v2, v2
invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J
move-result-wide v2
long-to-int v0, v2
goto :goto_4d
:cond_63
add-int/2addr v1, v0
iget v2, p0, Lcom/google/a/c;->g:I
add-int/2addr v0, v2
iput v0, p0, Lcom/google/a/c;->g:I
goto :goto_46
.end method
.method public static v()V
.registers 0
return-void
.end method
.method private w()V
.registers 2
:cond_0
invoke-virtual {p0}, Lcom/google/a/c;->a()I
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0, v0}, Lcom/google/a/c;->a(I)Z
move-result v0
if-nez v0, :cond_0
:cond_c
return-void
.end method
.method private x()J
.registers 7
const/4 v2, 0x0
const-wide/16 v0, 0x0
:goto_3
const/16 v3, 0x40
if-lt v2, v3, :cond_10
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "malformed varint."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v3
and-int/lit8 v4, v3, 0x7f
int-to-long v4, v4
shl-long/2addr v4, v2
or-long/2addr v0, v4
and-int/lit16 v3, v3, 0x80
if-nez v3, :cond_1e
return-wide v0
:cond_1e
add-int/lit8 v2, v2, 0x7
goto :goto_3
.end method
.method private y()V
.registers 2
iget v0, p0, Lcom/google/a/c;->d:I
neg-int v0, v0
iput v0, p0, Lcom/google/a/c;->g:I
return-void
.end method
.method private z()V
.registers 3
iget v0, p0, Lcom/google/a/c;->b:I
iget v1, p0, Lcom/google/a/c;->c:I
add-int/2addr v0, v1
iput v0, p0, Lcom/google/a/c;->b:I
iget v0, p0, Lcom/google/a/c;->g:I
iget v1, p0, Lcom/google/a/c;->b:I
add-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->h:I
if-le v0, v1, :cond_1d
iget v1, p0, Lcom/google/a/c;->h:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/google/a/c;->c:I
iget v0, p0, Lcom/google/a/c;->b:I
iget v1, p0, Lcom/google/a/c;->c:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/google/a/c;->b:I
:goto_1c
return-void
:cond_1d
const/4 v0, 0x0
iput v0, p0, Lcom/google/a/c;->c:I
goto :goto_1c
.end method
.method public final a()I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/google/a/c;->d:I
iget v2, p0, Lcom/google/a/c;->b:I
if-ne v1, v2, :cond_13
invoke-direct {p0, v0}, Lcom/google/a/c;->a(Z)Z
move-result v1
if-nez v1, :cond_13
const/4 v1, 0x1
:goto_e
if-eqz v1, :cond_15
iput v0, p0, Lcom/google/a/c;->f:I
:goto_12
return v0
:cond_13
move v1, v0
goto :goto_e
:cond_15
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
iput v0, p0, Lcom/google/a/c;->f:I
iget v0, p0, Lcom/google/a/c;->f:I
ushr-int/lit8 v0, v0, 0x3
if-nez v0, :cond_2a
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Invalid tag."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
iget v0, p0, Lcom/google/a/c;->f:I
goto :goto_12
.end method
.method public final a(Lcom/google/a/g;)V
.registers 5
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
iget v1, p0, Lcom/google/a/c;->i:I
iget v2, p0, Lcom/google/a/c;->j:I
if-lt v1, v2, :cond_13
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Recursion limit exceeded."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
invoke-virtual {p0, v0}, Lcom/google/a/c;->b(I)I
move-result v0
iget v1, p0, Lcom/google/a/c;->i:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/a/c;->i:I
invoke-virtual {p1, p0}, Lcom/google/a/g;->a(Lcom/google/a/c;)V
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/google/a/c;->d(I)V
iget v1, p0, Lcom/google/a/c;->i:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/google/a/c;->i:I
invoke-virtual {p0, v0}, Lcom/google/a/c;->c(I)V
return-void
.end method
.method public final a(I)Z
.registers 5
const/4 v0, 0x1
and-int/lit8 v1, p1, 0x7
packed-switch v1, :pswitch_data_4a
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Invalid wire type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
and-int/lit8 v2, p1, 0x7
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1e
invoke-virtual {p0}, Lcom/google/a/c;->r()I
:goto_21
return v0
:pswitch_22
invoke-virtual {p0}, Lcom/google/a/c;->t()J
goto :goto_21
:pswitch_26
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v1
invoke-direct {p0, v1}, Lcom/google/a/c;->i(I)V
goto :goto_21
:pswitch_2e
:cond_2e
invoke-virtual {p0}, Lcom/google/a/c;->a()I
move-result v1
if-eqz v1, :cond_3a
invoke-virtual {p0, v1}, Lcom/google/a/c;->a(I)Z
move-result v1
if-nez v1, :cond_2e
:cond_3a
ushr-int/lit8 v1, p1, 0x3
const/4 v2, 0x4
shl-int/lit8 v1, v1, 0x3
or-int/2addr v1, v2
invoke-direct {p0, v1}, Lcom/google/a/c;->d(I)V
goto :goto_21
:pswitch_44
const/4 v0, 0x0
goto :goto_21
:pswitch_46
invoke-virtual {p0}, Lcom/google/a/c;->s()I
goto :goto_21
:pswitch_data_4a
.packed-switch 0x0
:pswitch_1e
:pswitch_22
:pswitch_26
:pswitch_2e
:pswitch_44
:pswitch_46
.end packed-switch
.end method
.method public final b()D
.registers 3
invoke-virtual {p0}, Lcom/google/a/c;->t()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D
move-result-wide v0
return-wide v0
.end method
.method public final b(I)I
.registers 4
if-gez p1, :cond_b
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Negative size."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
iget v0, p0, Lcom/google/a/c;->g:I
iget v1, p0, Lcom/google/a/c;->d:I
add-int/2addr v0, v1
add-int/2addr v0, p1
iget v1, p0, Lcom/google/a/c;->h:I
if-le v0, v1, :cond_1e
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "Truncated message."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
iput v0, p0, Lcom/google/a/c;->h:I
invoke-direct {p0}, Lcom/google/a/c;->z()V
return v1
.end method
.method public final c()F
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->s()I
move-result v0
invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F
move-result v0
return v0
.end method
.method public final c(I)V
.registers 2
iput p1, p0, Lcom/google/a/c;->h:I
invoke-direct {p0}, Lcom/google/a/c;->z()V
return-void
.end method
.method public final d()J
.registers 3
invoke-direct {p0}, Lcom/google/a/c;->x()J
move-result-wide v0
return-wide v0
.end method
.method public final e()J
.registers 3
invoke-direct {p0}, Lcom/google/a/c;->x()J
move-result-wide v0
return-wide v0
.end method
.method public final f()I
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
return v0
.end method
.method public final g()J
.registers 3
invoke-virtual {p0}, Lcom/google/a/c;->t()J
move-result-wide v0
return-wide v0
.end method
.method public final h()I
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->s()I
move-result v0
return v0
.end method
.method public final i()Z
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final j()Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v1
iget v0, p0, Lcom/google/a/c;->b:I
iget v2, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v2
if-gt v1, v0, :cond_1f
if-lez v1, :cond_1f
new-instance v0, Ljava/lang/String;
iget-object v2, p0, Lcom/google/a/c;->a:[B
iget v3, p0, Lcom/google/a/c;->d:I
const-string/jumbo v4, "UTF-8"
invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
iget v2, p0, Lcom/google/a/c;->d:I
add-int/2addr v1, v2
iput v1, p0, Lcom/google/a/c;->d:I
:goto_1e
return-object v0
:cond_1f
new-instance v0, Ljava/lang/String;
invoke-direct {p0, v1}, Lcom/google/a/c;->h(I)[B
move-result-object v1
const-string/jumbo v2, "UTF-8"
invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
goto :goto_1e
.end method
.method public final k()Lcom/google/a/b;
.registers 4
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v1
iget v0, p0, Lcom/google/a/c;->b:I
iget v2, p0, Lcom/google/a/c;->d:I
sub-int/2addr v0, v2
if-gt v1, v0, :cond_1b
if-lez v1, :cond_1b
iget-object v0, p0, Lcom/google/a/c;->a:[B
iget v2, p0, Lcom/google/a/c;->d:I
invoke-static {v0, v2, v1}, Lcom/google/a/b;->a([BII)Lcom/google/a/b;
move-result-object v0
iget v2, p0, Lcom/google/a/c;->d:I
add-int/2addr v1, v2
iput v1, p0, Lcom/google/a/c;->d:I
:goto_1a
return-object v0
:cond_1b
invoke-direct {p0, v1}, Lcom/google/a/c;->h(I)[B
move-result-object v0
invoke-static {v0}, Lcom/google/a/b;->a([B)Lcom/google/a/b;
move-result-object v0
goto :goto_1a
.end method
.method public final l()I
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
return v0
.end method
.method public final m()I
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
return v0
.end method
.method public final n()I
.registers 2
invoke-virtual {p0}, Lcom/google/a/c;->s()I
move-result v0
return v0
.end method
.method public final o()J
.registers 3
invoke-virtual {p0}, Lcom/google/a/c;->t()J
move-result-wide v0
return-wide v0
.end method
.method public final p()I
.registers 3
invoke-virtual {p0}, Lcom/google/a/c;->r()I
move-result v0
ushr-int/lit8 v1, v0, 0x1
and-int/lit8 v0, v0, 0x1
neg-int v0, v0
xor-int/2addr v0, v1
return v0
.end method
.method public final q()J
.registers 7
invoke-direct {p0}, Lcom/google/a/c;->x()J
move-result-wide v0
const/4 v2, 0x1
ushr-long v2, v0, v2
const-wide/16 v4, 0x1
and-long/2addr v0, v4
neg-long v0, v0
xor-long/2addr v0, v2
return-wide v0
.end method
.method public final r()I
.registers 4
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v0
if-ltz v0, :cond_7
:goto_6
:cond_6
return v0
:cond_7
and-int/lit8 v0, v0, 0x7f
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v1
if-ltz v1, :cond_13
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
goto :goto_6
:cond_13
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0x7
or-int/2addr v0, v1
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v1
if-ltz v1, :cond_22
shl-int/lit8 v1, v1, 0xe
or-int/2addr v0, v1
goto :goto_6
:cond_22
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0xe
or-int/2addr v0, v1
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v1
if-ltz v1, :cond_31
shl-int/lit8 v1, v1, 0x15
or-int/2addr v0, v1
goto :goto_6
:cond_31
and-int/lit8 v1, v1, 0x7f
shl-int/lit8 v1, v1, 0x15
or-int/2addr v0, v1
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v1
shl-int/lit8 v2, v1, 0x1c
or-int/2addr v0, v2
if-gez v1, :cond_6
const/4 v1, 0x0
:goto_40
const/4 v2, 0x5
if-lt v1, v2, :cond_4c
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "malformed varint."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4c
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v2
if-gez v2, :cond_6
add-int/lit8 v1, v1, 0x1
goto :goto_40
.end method
.method public final s()I
.registers 5
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v0
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v1
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v2
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v3
and-int/lit16 v0, v0, 0xff
and-int/lit16 v1, v1, 0xff
shl-int/lit8 v1, v1, 0x8
or-int/2addr v0, v1
and-int/lit16 v1, v2, 0xff
shl-int/lit8 v1, v1, 0x10
or-int/2addr v0, v1
and-int/lit16 v1, v3, 0xff
shl-int/lit8 v1, v1, 0x18
or-int/2addr v0, v1
return v0
.end method
.method public final t()J
.registers 14
const-wide/16 v11, 0xff
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v0
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v1
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v2
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v3
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v4
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v5
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v6
invoke-direct {p0}, Lcom/google/a/c;->C()B
move-result v7
int-to-long v8, v0
and-long/2addr v8, v11
int-to-long v0, v1
and-long/2addr v0, v11
const/16 v10, 0x8
shl-long/2addr v0, v10
or-long/2addr v0, v8
int-to-long v8, v2
and-long/2addr v8, v11
const/16 v2, 0x10
shl-long/2addr v8, v2
or-long/2addr v0, v8
int-to-long v2, v3
and-long/2addr v2, v11
const/16 v8, 0x18
shl-long/2addr v2, v8
or-long/2addr v0, v2
int-to-long v2, v4
and-long/2addr v2, v11
const/16 v4, 0x20
shl-long/2addr v2, v4
or-long/2addr v0, v2
int-to-long v2, v5
and-long/2addr v2, v11
const/16 v4, 0x28
shl-long/2addr v2, v4
or-long/2addr v0, v2
int-to-long v2, v6
and-long/2addr v2, v11
const/16 v4, 0x30
shl-long/2addr v2, v4
or-long/2addr v0, v2
int-to-long v2, v7
and-long/2addr v2, v11
const/16 v4, 0x38
shl-long/2addr v2, v4
or-long/2addr v0, v2
return-wide v0
.end method
.method public final u()I
.registers 3
iget v0, p0, Lcom/google/a/c;->h:I
const v1, 0x7fffffff
if-ne v0, v1, :cond_9
const/4 v0, -0x1
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/google/a/c;->g:I
iget v1, p0, Lcom/google/a/c;->d:I
add-int/2addr v0, v1
iget v1, p0, Lcom/google/a/c;->h:I
sub-int v0, v1, v0
goto :goto_8
.end method