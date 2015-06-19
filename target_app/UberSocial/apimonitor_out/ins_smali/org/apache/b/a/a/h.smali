.class final Lorg/apache/b/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:B = 0x9t
.field private static final b:B = 0x20t
.field private static final c:B = 0x3dt
.field private static final d:B = 0xdt
.field private static final e:B = 0xat
.field private static final f:B = 0x7et
.field private static final g:I = 0x4c
.field private static final h:I = 0x3
.field private static final i:[B
.field private final j:[B
.field private final k:[B
.field private final l:Z
.field private m:Z
.field private n:Z
.field private o:Z
.field private p:I
.field private q:I
.field private r:Ljava/io/OutputStream;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [B
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/b/a/a/h;->i:[B
return-void
:array_a
.array-data 0x1
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
0x41t
0x42t
0x43t
0x44t
0x45t
0x46t
.end array-data
.end method
.method public constructor <init>(IZ)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, p1, [B
iput-object v0, p0, Lorg/apache/b/a/a/h;->j:[B
mul-int/lit8 v0, p1, 0x3
new-array v0, v0, [B
iput-object v0, p0, Lorg/apache/b/a/a/h;->k:[B
iput v1, p0, Lorg/apache/b/a/a/h;->q:I
const/16 v0, 0x4d
iput v0, p0, Lorg/apache/b/a/a/h;->p:I
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/a/h;->r:Ljava/io/OutputStream;
iput-boolean p2, p0, Lorg/apache/b/a/a/h;->l:Z
iput-boolean v1, p0, Lorg/apache/b/a/a/h;->m:Z
iput-boolean v1, p0, Lorg/apache/b/a/a/h;->n:Z
iput-boolean v1, p0, Lorg/apache/b/a/a/h;->o:Z
return-void
.end method
.method private a(B)V
.registers 6
const/16 v3, 0x9
const/16 v2, 0x20
const/4 v1, 0x1
const/16 v0, 0xa
if-ne p1, v0, :cond_35
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->l:Z
if-eqz v0, :cond_14
invoke-direct {p0}, Lorg/apache/b/a/a/h;->c()V
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
:goto_13
return-void
:cond_14
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->o:Z
if-eqz v0, :cond_2e
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->m:Z
if-eqz v0, :cond_26
invoke-direct {p0, v2}, Lorg/apache/b/a/a/h;->c(B)V
:goto_1f
:cond_1f
invoke-direct {p0}, Lorg/apache/b/a/a/h;->f()V
invoke-direct {p0}, Lorg/apache/b/a/a/h;->d()V
goto :goto_13
:cond_26
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->n:Z
if-eqz v0, :cond_1f
invoke-direct {p0, v3}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_1f
:cond_2e
invoke-direct {p0}, Lorg/apache/b/a/a/h;->c()V
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->b(B)V
goto :goto_13
:cond_35
const/16 v0, 0xd
if-ne p1, v0, :cond_44
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->l:Z
if-eqz v0, :cond_41
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_13
:cond_41
iput-boolean v1, p0, Lorg/apache/b/a/a/h;->o:Z
goto :goto_13
:cond_44
invoke-direct {p0}, Lorg/apache/b/a/a/h;->c()V
if-ne p1, v2, :cond_54
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->l:Z
if-eqz v0, :cond_51
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_13
:cond_51
iput-boolean v1, p0, Lorg/apache/b/a/a/h;->m:Z
goto :goto_13
:cond_54
if-ne p1, v3, :cond_61
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->l:Z
if-eqz v0, :cond_5e
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_13
:cond_5e
iput-boolean v1, p0, Lorg/apache/b/a/a/h;->n:Z
goto :goto_13
:cond_61
if-ge p1, v2, :cond_67
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_13
:cond_67
const/16 v0, 0x7e
if-le p1, v0, :cond_6f
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_13
:cond_6f
const/16 v0, 0x3d
if-ne p1, v0, :cond_77
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->c(B)V
goto :goto_13
:cond_77
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->b(B)V
goto :goto_13
.end method
.method private b(B)V
.registers 4
iget v0, p0, Lorg/apache/b/a/a/h;->p:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lorg/apache/b/a/a/h;->p:I
const/4 v1, 0x1
if-gt v0, v1, :cond_c
invoke-direct {p0}, Lorg/apache/b/a/a/h;->e()V
:cond_c
invoke-direct {p0, p1}, Lorg/apache/b/a/a/h;->d(B)V
return-void
.end method
.method private c()V
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->m:Z
if-eqz v0, :cond_d
const/16 v0, 0x20
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->b(B)V
:cond_9
:goto_9
invoke-direct {p0}, Lorg/apache/b/a/a/h;->d()V
return-void
:cond_d
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->n:Z
if-eqz v0, :cond_17
const/16 v0, 0x9
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->b(B)V
goto :goto_9
:cond_17
iget-boolean v0, p0, Lorg/apache/b/a/a/h;->o:Z
if-eqz v0, :cond_9
const/16 v0, 0xd
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->b(B)V
goto :goto_9
.end method
.method private c(B)V
.registers 5
iget v0, p0, Lorg/apache/b/a/a/h;->p:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lorg/apache/b/a/a/h;->p:I
const/4 v1, 0x3
if-gt v0, v1, :cond_c
invoke-direct {p0}, Lorg/apache/b/a/a/h;->e()V
:cond_c
and-int/lit16 v0, p1, 0xff
const/16 v1, 0x3d
invoke-direct {p0, v1}, Lorg/apache/b/a/a/h;->d(B)V
iget v1, p0, Lorg/apache/b/a/a/h;->p:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lorg/apache/b/a/a/h;->p:I
sget-object v1, Lorg/apache/b/a/a/h;->i:[B
shr-int/lit8 v2, v0, 0x4
aget-byte v1, v1, v2
invoke-direct {p0, v1}, Lorg/apache/b/a/a/h;->d(B)V
iget v1, p0, Lorg/apache/b/a/a/h;->p:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lorg/apache/b/a/a/h;->p:I
sget-object v1, Lorg/apache/b/a/a/h;->i:[B
rem-int/lit8 v0, v0, 0x10
aget-byte v0, v1, v0
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->d(B)V
return-void
.end method
.method private d()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/b/a/a/h;->m:Z
iput-boolean v0, p0, Lorg/apache/b/a/a/h;->n:Z
iput-boolean v0, p0, Lorg/apache/b/a/a/h;->o:Z
return-void
.end method
.method private d(B)V
.registers 5
iget-object v0, p0, Lorg/apache/b/a/a/h;->k:[B
iget v1, p0, Lorg/apache/b/a/a/h;->q:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/apache/b/a/a/h;->q:I
aput-byte p1, v0, v1
iget v0, p0, Lorg/apache/b/a/a/h;->q:I
iget-object v1, p0, Lorg/apache/b/a/a/h;->k:[B
array-length v1, v1
if-lt v0, v1, :cond_14
invoke-virtual {p0}, Lorg/apache/b/a/a/h;->b()V
:cond_14
return-void
.end method
.method private e()V
.registers 2
const/16 v0, 0x3d
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->d(B)V
invoke-direct {p0}, Lorg/apache/b/a/a/h;->f()V
return-void
.end method
.method private f()V
.registers 2
const/16 v0, 0xd
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->d(B)V
const/16 v0, 0xa
invoke-direct {p0, v0}, Lorg/apache/b/a/a/h;->d(B)V
const/16 v0, 0x4c
iput v0, p0, Lorg/apache/b/a/a/h;->p:I
return-void
.end method
.method  a()V
.registers 1
invoke-direct {p0}, Lorg/apache/b/a/a/h;->c()V
invoke-virtual {p0}, Lorg/apache/b/a/a/h;->b()V
return-void
.end method
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 6
invoke-virtual {p0, p2}, Lorg/apache/b/a/a/h;->a(Ljava/io/OutputStream;)V
:goto_3
iget-object v0, p0, Lorg/apache/b/a/a/h;->j:[B
invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
move-result v0
const/4 v1, -0x1
if-le v0, v1, :cond_13
iget-object v1, p0, Lorg/apache/b/a/a/h;->j:[B
const/4 v2, 0x0
invoke-virtual {p0, v1, v2, v0}, Lorg/apache/b/a/a/h;->a([BII)V
goto :goto_3
:cond_13
invoke-virtual {p0}, Lorg/apache/b/a/a/h;->a()V
return-void
.end method
.method  a(Ljava/io/OutputStream;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lorg/apache/b/a/a/h;->r:Ljava/io/OutputStream;
iput-boolean v0, p0, Lorg/apache/b/a/a/h;->m:Z
iput-boolean v0, p0, Lorg/apache/b/a/a/h;->n:Z
iput-boolean v0, p0, Lorg/apache/b/a/a/h;->o:Z
const/16 v0, 0x4d
iput v0, p0, Lorg/apache/b/a/a/h;->p:I
return-void
.end method
.method  a([BII)V
.registers 6
move v0, p2
:goto_1
add-int v1, p3, p2
if-ge v0, v1, :cond_d
aget-byte v1, p1, v0
invoke-direct {p0, v1}, Lorg/apache/b/a/a/h;->a(B)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_d
return-void
.end method
.method  b()V
.registers 5
const/4 v3, 0x0
iget v0, p0, Lorg/apache/b/a/a/h;->q:I
iget-object v1, p0, Lorg/apache/b/a/a/h;->k:[B
array-length v1, v1
if-ge v0, v1, :cond_14
iget-object v0, p0, Lorg/apache/b/a/a/h;->r:Ljava/io/OutputStream;
iget-object v1, p0, Lorg/apache/b/a/a/h;->k:[B
iget v2, p0, Lorg/apache/b/a/a/h;->q:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
:goto_11
iput v3, p0, Lorg/apache/b/a/a/h;->q:I
return-void
:cond_14
iget-object v0, p0, Lorg/apache/b/a/a/h;->r:Ljava/io/OutputStream;
iget-object v1, p0, Lorg/apache/b/a/a/h;->k:[B
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
goto :goto_11
.end method