.class public final Lcom/google/a/d;
.super Ljava/lang/Object;
.field private static e:I = 0x80
.field private static f:I = 0x4
.field private static g:I = 0x8
.field private final a:[B
.field private final b:I
.field private c:I
.field private final d:Ljava/io/OutputStream;
.method private constructor <init>(Ljava/io/OutputStream;[B)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
iput-object p2, p0, Lcom/google/a/d;->a:[B
const/4 v0, 0x0
iput v0, p0, Lcom/google/a/d;->c:I
array-length v0, p2
iput v0, p0, Lcom/google/a/d;->b:I
return-void
.end method
.method private constructor <init>([BII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
iput-object p1, p0, Lcom/google/a/d;->a:[B
iput p2, p0, Lcom/google/a/d;->c:I
add-int v0, p2, p3
iput v0, p0, Lcom/google/a/d;->b:I
return-void
.end method
.method public static a()I
.registers 1
const/16 v0, 0x8
return v0
.end method
.method public static a(Ljava/io/OutputStream;)Lcom/google/a/d;
.registers 3
new-instance v0, Lcom/google/a/d;
const/16 v1, 0x80
new-array v1, v1, [B
invoke-direct {v0, p0, v1}, Lcom/google/a/d;-><init>(Ljava/io/OutputStream;[B)V
return-object v0
.end method
.method private static a(Ljava/io/OutputStream;I)Lcom/google/a/d;
.registers 4
new-instance v0, Lcom/google/a/d;
const/16 v1, 0x80
new-array v1, v1, [B
invoke-direct {v0, p0, v1}, Lcom/google/a/d;-><init>(Ljava/io/OutputStream;[B)V
return-object v0
.end method
.method public static a([B)Lcom/google/a/d;
.registers 4
array-length v0, p0
new-instance v1, Lcom/google/a/d;
const/4 v2, 0x0
invoke-direct {v1, p0, v2, v0}, Lcom/google/a/d;-><init>([BII)V
return-object v1
.end method
.method private static a([BII)Lcom/google/a/d;
.registers 5
new-instance v0, Lcom/google/a/d;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p2}, Lcom/google/a/d;-><init>([BII)V
return-object v0
.end method
.method private a(B)V
.registers 5
iget v0, p0, Lcom/google/a/d;->c:I
iget v1, p0, Lcom/google/a/d;->b:I
if-ne v0, v1, :cond_9
invoke-direct {p0}, Lcom/google/a/d;->i()V
:cond_9
iget-object v0, p0, Lcom/google/a/d;->a:[B
iget v1, p0, Lcom/google/a/d;->c:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/google/a/d;->c:I
aput-byte p1, v0, v1
return-void
.end method
.method private a(ID)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/a/d;->a(D)V
return-void
.end method
.method private a(IF)V
.registers 4
const/4 v0, 0x5
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->a(F)V
return-void
.end method
.method private a(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-direct {p0, p2, p3}, Lcom/google/a/d;->k(J)V
return-void
.end method
.method private a(ILcom/google/a/b;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->a(Lcom/google/a/b;)V
return-void
.end method
.method private a(ILcom/google/a/g;)V
.registers 4
const/4 v0, 0x3
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p2, p0}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
const/4 v0, 0x4
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
return-void
.end method
.method private a(ILjava/lang/String;Lcom/google/a/b;)V
.registers 5
if-nez p3, :cond_6
invoke-static {p2}, Lcom/google/a/b;->a(Ljava/lang/String;)Lcom/google/a/b;
move-result-object p3
:cond_6
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p3}, Lcom/google/a/d;->a(Lcom/google/a/b;)V
return-void
.end method
.method public static b()I
.registers 1
const/4 v0, 0x4
return v0
.end method
.method private static b(ID)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x8
return v0
.end method
.method private static b(IF)I
.registers 3
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x4
return v0
.end method
.method private static b(ILcom/google/a/b;)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->b(Lcom/google/a/b;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(ILjava/lang/String;)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->b(Ljava/lang/String;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(IZ)I
.registers 3
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x1
return v0
.end method
.method public static b(Lcom/google/a/b;)I
.registers 3
invoke-virtual {p0}, Lcom/google/a/b;->a()I
move-result v0
invoke-static {v0}, Lcom/google/a/d;->m(I)I
move-result v0
invoke-virtual {p0}, Lcom/google/a/b;->a()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(Lcom/google/a/g;)I
.registers 3
invoke-virtual {p0}, Lcom/google/a/g;->c()I
move-result v0
invoke-static {v0}, Lcom/google/a/d;->m(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static b(Ljava/lang/String;)I
.registers 3
:try_start_0
const-string/jumbo v0, "UTF-8"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
invoke-static {v1}, Lcom/google/a/d;->m(I)I
move-result v1
array-length v0, v0
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f
add-int/2addr v0, v1
return v0
:catch_f
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "UTF-8 not supported."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private b(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-direct {p0, p2, p3}, Lcom/google/a/d;->k(J)V
return-void
.end method
.method private b(ILcom/google/a/g;)V
.registers 4
const/4 v0, 0x3
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p2, p0}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
const/4 v0, 0x4
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
return-void
.end method
.method private b([B)V
.registers 7
const/4 v4, 0x0
array-length v0, p1
iget v1, p0, Lcom/google/a/d;->b:I
iget v2, p0, Lcom/google/a/d;->c:I
sub-int/2addr v1, v2
if-lt v1, v0, :cond_16
iget-object v1, p0, Lcom/google/a/d;->a:[B
iget v2, p0, Lcom/google/a/d;->c:I
invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v1, p0, Lcom/google/a/d;->c:I
add-int/2addr v0, v1
iput v0, p0, Lcom/google/a/d;->c:I
:goto_15
return-void
:cond_16
iget v1, p0, Lcom/google/a/d;->b:I
iget v2, p0, Lcom/google/a/d;->c:I
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/google/a/d;->a:[B
iget v3, p0, Lcom/google/a/d;->c:I
invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v2, v1, 0x0
sub-int/2addr v0, v1
iget v1, p0, Lcom/google/a/d;->b:I
iput v1, p0, Lcom/google/a/d;->c:I
invoke-direct {p0}, Lcom/google/a/d;->i()V
iget v1, p0, Lcom/google/a/d;->b:I
if-gt v0, v1, :cond_38
iget-object v1, p0, Lcom/google/a/d;->a:[B
invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput v0, p0, Lcom/google/a/d;->c:I
goto :goto_15
:cond_38
iget-object v1, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
goto :goto_15
.end method
.method private b([BII)V
.registers 8
const/4 v3, 0x0
iget v0, p0, Lcom/google/a/d;->b:I
iget v1, p0, Lcom/google/a/d;->c:I
sub-int/2addr v0, v1
if-lt v0, p3, :cond_15
iget-object v0, p0, Lcom/google/a/d;->a:[B
iget v1, p0, Lcom/google/a/d;->c:I
invoke-static {p1, v3, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget v0, p0, Lcom/google/a/d;->c:I
add-int/2addr v0, p3
iput v0, p0, Lcom/google/a/d;->c:I
:goto_14
return-void
:cond_15
iget v0, p0, Lcom/google/a/d;->b:I
iget v1, p0, Lcom/google/a/d;->c:I
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/google/a/d;->a:[B
iget v2, p0, Lcom/google/a/d;->c:I
invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v1, v0, 0x0
sub-int v0, p3, v0
iget v2, p0, Lcom/google/a/d;->b:I
iput v2, p0, Lcom/google/a/d;->c:I
invoke-direct {p0}, Lcom/google/a/d;->i()V
iget v2, p0, Lcom/google/a/d;->b:I
if-gt v0, v2, :cond_38
iget-object v2, p0, Lcom/google/a/d;->a:[B
invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput v0, p0, Lcom/google/a/d;->c:I
goto :goto_14
:cond_38
iget-object v2, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V
goto :goto_14
.end method
.method public static c()I
.registers 1
const/16 v0, 0x8
return v0
.end method
.method public static c(II)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->g(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private c(IJ)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-direct {p0, p2, p3}, Lcom/google/a/d;->l(J)V
return-void
.end method
.method private c(ILcom/google/a/g;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->a(Lcom/google/a/g;)V
return-void
.end method
.method private c(Lcom/google/a/g;)V
.registers 2
invoke-virtual {p1, p0}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
return-void
.end method
.method public static d()I
.registers 1
const/4 v0, 0x4
return v0
.end method
.method public static d(II)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->m(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private static d(ILcom/google/a/g;)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
shl-int/lit8 v0, v0, 0x1
invoke-virtual {p1}, Lcom/google/a/g;->c()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private d(IJ)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-direct {p0, p2, p3}, Lcom/google/a/d;->l(J)V
return-void
.end method
.method private d(Lcom/google/a/g;)V
.registers 2
invoke-virtual {p1, p0}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
return-void
.end method
.method public static e()I
.registers 1
const/4 v0, 0x1
return v0
.end method
.method private static e(ILcom/google/a/g;)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
shl-int/lit8 v0, v0, 0x1
invoke-virtual {p1}, Lcom/google/a/g;->c()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private static e(Lcom/google/a/g;)I
.registers 2
invoke-virtual {p0}, Lcom/google/a/g;->c()I
move-result v0
return v0
.end method
.method private e(IJ)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2, p3}, Lcom/google/a/d;->e(J)V
return-void
.end method
.method public static f()I
.registers 1
const/4 v0, 0x4
return v0
.end method
.method private static f(IJ)I
.registers 5
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/a/d;->i(J)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private static f(ILcom/google/a/g;)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->b(Lcom/google/a/g;)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static f(J)I
.registers 3
invoke-static {p0, p1}, Lcom/google/a/d;->i(J)I
move-result v0
return v0
.end method
.method private static f(Lcom/google/a/g;)I
.registers 2
invoke-virtual {p0}, Lcom/google/a/g;->c()I
move-result v0
return v0
.end method
.method private f(II)V
.registers 4
const/4 v0, 0x5
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-direct {p0, p2}, Lcom/google/a/d;->q(I)V
return-void
.end method
.method public static g()I
.registers 1
const/16 v0, 0x8
return v0
.end method
.method public static g(I)I
.registers 2
if-ltz p0, :cond_7
invoke-static {p0}, Lcom/google/a/d;->m(I)I
move-result v0
:goto_6
return v0
:cond_7
const/16 v0, 0xa
goto :goto_6
.end method
.method private static g(IJ)I
.registers 5
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/a/d;->i(J)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static g(J)I
.registers 3
invoke-static {p0, p1}, Lcom/google/a/d;->i(J)I
move-result v0
return v0
.end method
.method private g(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->l(I)V
return-void
.end method
.method public static h(I)I
.registers 2
invoke-static {p0}, Lcom/google/a/d;->m(I)I
move-result v0
return v0
.end method
.method private static h(IJ)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x8
return v0
.end method
.method public static h(J)I
.registers 4
invoke-static {p0, p1}, Lcom/google/a/d;->j(J)J
move-result-wide v0
invoke-static {v0, v1}, Lcom/google/a/d;->i(J)I
move-result v0
return v0
.end method
.method private h(II)V
.registers 4
const/4 v0, 0x5
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-direct {p0, p2}, Lcom/google/a/d;->q(I)V
return-void
.end method
.method public static i(I)I
.registers 2
invoke-static {p0}, Lcom/google/a/d;->m(I)I
move-result v0
return v0
.end method
.method private static i(IJ)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x8
return v0
.end method
.method public static i(J)I
.registers 6
const-wide/16 v2, 0x0
const-wide/16 v0, -0x80
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const-wide/16 v0, -0x4000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_14
const/4 v0, 0x2
goto :goto_a
:cond_14
const-wide/32 v0, -0x200000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_1e
const/4 v0, 0x3
goto :goto_a
:cond_1e
const-wide/32 v0, -0x10000000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_28
const/4 v0, 0x4
goto :goto_a
:cond_28
const-wide v0, -0x800000000L
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_34
const/4 v0, 0x5
goto :goto_a
:cond_34
const-wide v0, -0x40000000000L
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_40
const/4 v0, 0x6
goto :goto_a
:cond_40
const-wide/high16 v0, -0x2
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_49
const/4 v0, 0x7
goto :goto_a
:cond_49
const-wide/high16 v0, -0x100
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_53
const/16 v0, 0x8
goto :goto_a
:cond_53
const-wide/high16 v0, -0x8000
and-long/2addr v0, p0
cmp-long v0, v0, v2
if-nez v0, :cond_5d
const/16 v0, 0x9
goto :goto_a
:cond_5d
const/16 v0, 0xa
goto :goto_a
.end method
.method private i()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
if-nez v0, :cond_b
new-instance v0, Lcom/google/a/d$a;
invoke-direct {v0}, Lcom/google/a/d$a;-><init>()V
throw v0
:cond_b
iget-object v0, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/google/a/d;->a:[B
iget v2, p0, Lcom/google/a/d;->c:I
invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
iput v3, p0, Lcom/google/a/d;->c:I
return-void
.end method
.method private i(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->f(I)V
return-void
.end method
.method private j()I
.registers 3
iget-object v0, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
if-nez v0, :cond_a
iget v0, p0, Lcom/google/a/d;->b:I
iget v1, p0, Lcom/google/a/d;->c:I
sub-int/2addr v0, v1
return v0
:cond_a
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static j(I)I
.registers 2
invoke-static {p0}, Lcom/google/a/d;->n(I)I
move-result v0
invoke-static {v0}, Lcom/google/a/d;->m(I)I
move-result v0
return v0
.end method
.method private static j(II)I
.registers 3
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x4
return v0
.end method
.method private static j(IJ)I
.registers 6
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1, p2}, Lcom/google/a/d;->j(J)J
move-result-wide v1
invoke-static {v1, v2}, Lcom/google/a/d;->i(J)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static j(J)J
.registers 6
const/4 v0, 0x1
shl-long v0, p0, v0
const/16 v2, 0x3f
shr-long v2, p0, v2
xor-long/2addr v0, v2
return-wide v0
.end method
.method public static k(I)I
.registers 3
const/4 v0, 0x0
shl-int/lit8 v1, p0, 0x3
or-int/2addr v0, v1
invoke-static {v0}, Lcom/google/a/d;->m(I)I
move-result v0
return v0
.end method
.method private static k(II)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->m(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method private k()V
.registers 3
iget-object v0, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
if-nez v0, :cond_14
iget v0, p0, Lcom/google/a/d;->b:I
iget v1, p0, Lcom/google/a/d;->c:I
sub-int/2addr v0, v1
if-eqz v0, :cond_1d
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Did not write as much data as expected."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1d
return-void
.end method
.method private k(J)V
.registers 7
:goto_0
const-wide/16 v0, -0x80
and-long/2addr v0, p1
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_e
long-to-int v0, p1
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
return-void
:cond_e
long-to-int v0, p1
and-int/lit8 v0, v0, 0x7f
or-int/lit16 v0, v0, 0x80
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/4 v0, 0x7
ushr-long/2addr p1, v0
goto :goto_0
.end method
.method private static l(II)I
.registers 3
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
add-int/lit8 v0, v0, 0x4
return v0
.end method
.method private l(J)V
.registers 5
long-to-int v0, p1
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x8
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x10
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x18
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x20
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x28
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x30
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
const/16 v0, 0x38
shr-long v0, p1, v0
long-to-int v0, v0
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
return-void
.end method
.method public static m(I)I
.registers 2
and-int/lit8 v0, p0, -0x80
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
and-int/lit16 v0, p0, -0x4000
if-nez v0, :cond_c
const/4 v0, 0x2
goto :goto_5
:cond_c
const/high16 v0, -0x20
and-int/2addr v0, p0
if-nez v0, :cond_13
const/4 v0, 0x3
goto :goto_5
:cond_13
const/high16 v0, -0x1000
and-int/2addr v0, p0
if-nez v0, :cond_1a
const/4 v0, 0x4
goto :goto_5
:cond_1a
const/4 v0, 0x5
goto :goto_5
.end method
.method private static m(II)I
.registers 4
invoke-static {p0}, Lcom/google/a/d;->k(I)I
move-result v0
invoke-static {p1}, Lcom/google/a/d;->n(I)I
move-result v1
invoke-static {v1}, Lcom/google/a/d;->m(I)I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public static n(I)I
.registers 3
shl-int/lit8 v0, p0, 0x1
shr-int/lit8 v1, p0, 0x1f
xor-int/2addr v0, v1
return v0
.end method
.method private static o(I)I
.registers 2
const/16 v0, 0x80
if-le p0, v0, :cond_5
move p0, v0
:cond_5
return p0
.end method
.method private p(I)V
.registers 6
int-to-byte v0, p1
iget v1, p0, Lcom/google/a/d;->c:I
iget v2, p0, Lcom/google/a/d;->b:I
if-ne v1, v2, :cond_a
invoke-direct {p0}, Lcom/google/a/d;->i()V
:cond_a
iget-object v1, p0, Lcom/google/a/d;->a:[B
iget v2, p0, Lcom/google/a/d;->c:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/google/a/d;->c:I
aput-byte v0, v1, v2
return-void
.end method
.method private q(I)V
.registers 3
and-int/lit16 v0, p1, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
shr-int/lit8 v0, p1, 0x8
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
shr-int/lit8 v0, p1, 0x10
and-int/lit16 v0, v0, 0xff
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
ushr-int/lit8 v0, p1, 0x18
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
return-void
.end method
.method public final a(D)V
.registers 5
invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/google/a/d;->l(J)V
return-void
.end method
.method public final a(F)V
.registers 3
invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
invoke-direct {p0, v0}, Lcom/google/a/d;->q(I)V
return-void
.end method
.method public final a(I)V
.registers 4
if-ltz p1, :cond_6
invoke-virtual {p0, p1}, Lcom/google/a/d;->l(I)V
:goto_5
return-void
:cond_6
int-to-long v0, p1
invoke-direct {p0, v0, v1}, Lcom/google/a/d;->k(J)V
goto :goto_5
.end method
.method public final a(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->a(I)V
return-void
.end method
.method public final a(ILjava/lang/String;)V
.registers 4
const/4 v0, 0x2
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(IZ)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->a(Z)V
return-void
.end method
.method public final a(J)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/a/d;->k(J)V
return-void
.end method
.method public final a(Lcom/google/a/b;)V
.registers 4
invoke-virtual {p1}, Lcom/google/a/b;->b()[B
move-result-object v0
array-length v1, v0
invoke-virtual {p0, v1}, Lcom/google/a/d;->l(I)V
invoke-direct {p0, v0}, Lcom/google/a/d;->b([B)V
return-void
.end method
.method public final a(Lcom/google/a/g;)V
.registers 3
invoke-virtual {p1}, Lcom/google/a/g;->c()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/a/d;->l(I)V
invoke-virtual {p1, p0}, Lcom/google/a/g;->a(Lcom/google/a/d;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
const-string/jumbo v0, "UTF-8"
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
array-length v1, v0
invoke-virtual {p0, v1}, Lcom/google/a/d;->l(I)V
invoke-direct {p0, v0}, Lcom/google/a/d;->b([B)V
return-void
.end method
.method public final a(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x1
:goto_3
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
return-void
:cond_7
const/4 v0, 0x0
goto :goto_3
.end method
.method public final b(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/a/d;->q(I)V
return-void
.end method
.method public final b(II)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/a/d;->e(II)V
invoke-virtual {p0, p2}, Lcom/google/a/d;->l(I)V
return-void
.end method
.method public final b(J)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/a/d;->k(J)V
return-void
.end method
.method public final c(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/google/a/d;->l(I)V
return-void
.end method
.method public final c(J)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/a/d;->l(J)V
return-void
.end method
.method public final d(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/google/a/d;->l(I)V
return-void
.end method
.method public final d(J)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/a/d;->l(J)V
return-void
.end method
.method public final e(I)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/a/d;->q(I)V
return-void
.end method
.method public final e(II)V
.registers 4
shl-int/lit8 v0, p1, 0x3
or-int/2addr v0, p2
invoke-virtual {p0, v0}, Lcom/google/a/d;->l(I)V
return-void
.end method
.method public final e(J)V
.registers 5
invoke-static {p1, p2}, Lcom/google/a/d;->j(J)J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/google/a/d;->k(J)V
return-void
.end method
.method public final f(I)V
.registers 3
invoke-static {p1}, Lcom/google/a/d;->n(I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/a/d;->l(I)V
return-void
.end method
.method public final h()V
.registers 2
iget-object v0, p0, Lcom/google/a/d;->d:Ljava/io/OutputStream;
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/google/a/d;->i()V
:cond_7
return-void
.end method
.method public final l(I)V
.registers 3
:goto_0
and-int/lit8 v0, p1, -0x80
if-nez v0, :cond_8
invoke-direct {p0, p1}, Lcom/google/a/d;->p(I)V
return-void
:cond_8
and-int/lit8 v0, p1, 0x7f
or-int/lit16 v0, v0, 0x80
invoke-direct {p0, v0}, Lcom/google/a/d;->p(I)V
ushr-int/lit8 p1, p1, 0x7
goto :goto_0
.end method