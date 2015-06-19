.class public Lcom/igexin/push/c/a/c;
.super Lcom/igexin/a/a/b/c;
.field private e:[B
.field private f:Z
.field private g:Z
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/igexin/a/a/b/c;-><init>(Ljava/lang/String;Z)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/igexin/push/c/a/c;->e:[B
iput-boolean v1, p0, Lcom/igexin/push/c/a/c;->f:Z
iput-boolean v1, p0, Lcom/igexin/push/c/a/c;->g:Z
return-void
.end method
.method public static a()Lcom/igexin/a/a/b/c;
.registers 3
new-instance v0, Lcom/igexin/push/c/a/c;
const-string/jumbo v1, "socketProtocol"
invoke-direct {v0, v1}, Lcom/igexin/push/c/a/c;-><init>(Ljava/lang/String;)V
new-instance v1, Lcom/igexin/push/c/a/a;
const-string/jumbo v2, "command"
invoke-direct {v1, v2, v0}, Lcom/igexin/push/c/a/a;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V
return-object v0
.end method
.method static a(I)Lcom/igexin/push/c/c/g;
.registers 4
const/4 v2, 0x0
new-instance v0, Lcom/igexin/push/c/c/g;
invoke-direct {v0}, Lcom/igexin/push/c/c/g;-><init>()V
const v1, 0x73ea68fb
iput v1, v0, Lcom/igexin/push/c/c/g;->b:I
const/4 v1, 0x3
iput v1, v0, Lcom/igexin/push/c/c/g;->c:I
sget v1, Lcom/igexin/push/c/c/g;->a:I
iput v1, v0, Lcom/igexin/push/c/c/g;->d:I
iput-byte v2, v0, Lcom/igexin/push/c/c/g;->i:B
iput-byte v2, v0, Lcom/igexin/push/c/c/g;->h:B
iput p0, v0, Lcom/igexin/push/c/c/g;->f:I
invoke-static {}, Lcom/igexin/a/a/b/d;->e()V
return-object v0
.end method
.method static a(IB)Lcom/igexin/push/c/c/g;
.registers 5
new-instance v0, Lcom/igexin/push/c/c/g;
invoke-direct {v0}, Lcom/igexin/push/c/c/g;-><init>()V
const v1, 0x73ea68fb
iput v1, v0, Lcom/igexin/push/c/c/g;->b:I
invoke-virtual {v0, p1}, Lcom/igexin/push/c/c/g;->a(B)V
const/4 v1, 0x3
iput v1, v0, Lcom/igexin/push/c/c/g;->c:I
iget-byte v1, v0, Lcom/igexin/push/c/c/g;->h:B
const/16 v2, 0x30
if-ne v1, v2, :cond_26
iget v1, v0, Lcom/igexin/push/c/c/g;->c:I
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v2
invoke-virtual {v2}, Lcom/igexin/a/a/b/d;->a()[B
move-result-object v2
array-length v2, v2
add-int/lit8 v2, v2, 0x1
add-int/2addr v1, v2
iput v1, v0, Lcom/igexin/push/c/c/g;->c:I
:cond_26
sget v1, Lcom/igexin/push/c/c/g;->a:I
iput v1, v0, Lcom/igexin/push/c/c/g;->d:I
iput p0, v0, Lcom/igexin/push/c/c/g;->f:I
invoke-static {}, Lcom/igexin/a/a/b/d;->e()V
return-object v0
.end method
.method public a(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.registers 11
const v6, 0x73ea68fb
const/16 v5, 0x30
const/4 v1, 0x0
instance-of v0, p3, Lcom/igexin/push/c/c/b;
if-eqz v0, :cond_b8
check-cast p3, Lcom/igexin/push/c/c/b;
iget-byte v0, p3, Lcom/igexin/push/c/c/b;->b:B
if-lez v0, :cond_b3
const/4 v0, 0x1
:goto_11
iget-byte v2, p3, Lcom/igexin/push/c/c/b;->c:B
invoke-static {v0, v2}, Lcom/igexin/push/c/a/c;->a(IB)Lcom/igexin/push/c/c/g;
move-result-object v3
iget-byte v0, p3, Lcom/igexin/push/c/c/b;->b:B
if-lez v0, :cond_47
iget v0, p3, Lcom/igexin/push/c/c/b;->a:I
if-lez v0, :cond_47
iget-byte v0, v3, Lcom/igexin/push/c/c/g;->g:B
and-int/lit16 v0, v0, 0xc0
const/16 v2, 0x80
if-ne v0, v2, :cond_30
iget-object v0, p3, Lcom/igexin/push/c/c/b;->d:[B
invoke-static {v0}, Lcom/igexin/a/a/b/g;->a([B)[B
move-result-object v0
invoke-virtual {p3, v0}, Lcom/igexin/push/c/c/b;->a([B)V
:cond_30
iget-byte v0, v3, Lcom/igexin/push/c/c/g;->h:B
and-int/lit8 v0, v0, 0x30
if-ne v0, v5, :cond_47
iget-object v0, p3, Lcom/igexin/push/c/c/b;->d:[B
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v2
invoke-virtual {v2}, Lcom/igexin/a/a/b/d;->b()[B
move-result-object v2
invoke-static {v0, v2}, Lcom/igexin/a/a/a/a;->a([B[B)[B
move-result-object v0
invoke-virtual {p3, v0}, Lcom/igexin/push/c/c/b;->a([B)V
:cond_47
iget v0, v3, Lcom/igexin/push/c/c/g;->c:I
add-int/lit8 v2, v0, 0x5
iget-byte v0, p3, Lcom/igexin/push/c/c/b;->b:B
if-lez v0, :cond_b6
iget v0, p3, Lcom/igexin/push/c/c/b;->a:I
add-int/lit8 v0, v0, 0x3
:goto_53
add-int/2addr v0, v2
new-array v2, v0, [B
invoke-static {v6, v2, v1}, Lcom/igexin/a/a/b/g;->a(I[BI)I
move-result v0
iget v4, v3, Lcom/igexin/push/c/c/g;->c:I
invoke-static {v4, v2, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v4
add-int/2addr v0, v4
iget v4, v3, Lcom/igexin/push/c/c/g;->d:I
invoke-static {v4, v2, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v4
add-int/2addr v0, v4
invoke-virtual {v3}, Lcom/igexin/push/c/c/g;->c()I
move-result v4
invoke-static {v4, v2, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v4
add-int/2addr v0, v4
iget v4, v3, Lcom/igexin/push/c/c/g;->f:I
invoke-static {v4, v2, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v4
add-int/2addr v0, v4
iget-byte v3, v3, Lcom/igexin/push/c/c/g;->h:B
and-int/lit8 v3, v3, 0x30
if-ne v3, v5, :cond_92
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/a/a/b/d;->a()[B
move-result-object v3
array-length v4, v3
invoke-static {v4, v2, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v4
add-int/2addr v0, v4
array-length v4, v3
invoke-static {v3, v1, v2, v0, v4}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v3
add-int/2addr v0, v3
:cond_92
iget-byte v3, p3, Lcom/igexin/push/c/c/b;->b:B
if-lez v3, :cond_b1
iget v3, p3, Lcom/igexin/push/c/c/b;->a:I
invoke-static {v3, v2, v0}, Lcom/igexin/a/a/b/g;->b(I[BI)I
move-result v3
add-int/2addr v0, v3
iget-byte v3, p3, Lcom/igexin/push/c/c/b;->b:B
invoke-static {v3, v2, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v3
add-int/2addr v0, v3
iget v3, p3, Lcom/igexin/push/c/c/b;->a:I
if-lez v3, :cond_b1
iget-object v3, p3, Lcom/igexin/push/c/c/b;->d:[B
iget v4, p3, Lcom/igexin/push/c/c/b;->a:I
invoke-static {v3, v1, v2, v0, v4}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v1
add-int/2addr v0, v1
:cond_b1
move-object v0, v2
:goto_b2
return-object v0
:cond_b3
move v0, v1
goto/16 :goto_11
:cond_b6
move v0, v1
goto :goto_53
:cond_b8
check-cast p3, [Lcom/igexin/push/c/c/b;
check-cast p3, [Lcom/igexin/push/c/c/b;
array-length v0, p3
invoke-static {v0}, Lcom/igexin/push/c/a/c;->a(I)Lcom/igexin/push/c/c/g;
move-result-object v4
move v0, v1
move v2, v1
:goto_c3
array-length v3, p3
if-ge v0, v3, :cond_d0
aget-object v3, p3, v0
iget v3, v3, Lcom/igexin/push/c/c/b;->a:I
add-int/lit8 v3, v3, 0x3
add-int/2addr v2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_c3
:cond_d0
add-int/lit8 v0, v2, 0x5
iget v2, v4, Lcom/igexin/push/c/c/g;->c:I
add-int/2addr v0, v2
new-array v3, v0, [B
invoke-static {v6, v3, v1}, Lcom/igexin/a/a/b/g;->a(I[BI)I
move-result v0
iget v2, v4, Lcom/igexin/push/c/c/g;->c:I
invoke-static {v2, v3, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v2
add-int/2addr v0, v2
iget v2, v4, Lcom/igexin/push/c/c/g;->d:I
invoke-static {v2, v3, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v2
add-int/2addr v0, v2
invoke-virtual {v4}, Lcom/igexin/push/c/c/g;->c()I
move-result v2
invoke-static {v2, v3, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v2
add-int/2addr v0, v2
iget v2, v4, Lcom/igexin/push/c/c/g;->f:I
invoke-static {v2, v3, v0}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v2
add-int/2addr v0, v2
move v2, v0
move v0, v1
:goto_fb
array-length v4, p3
if-ge v0, v4, :cond_120
aget-object v4, p3, v0
iget v4, v4, Lcom/igexin/push/c/c/b;->a:I
invoke-static {v4, v3, v2}, Lcom/igexin/a/a/b/g;->b(I[BI)I
move-result v4
add-int/2addr v2, v4
aget-object v4, p3, v0
iget-byte v4, v4, Lcom/igexin/push/c/c/b;->b:B
invoke-static {v4, v3, v2}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v4
add-int/2addr v2, v4
aget-object v4, p3, v0
iget-object v4, v4, Lcom/igexin/push/c/c/b;->d:[B
aget-object v5, p3, v0
iget v5, v5, Lcom/igexin/push/c/c/b;->a:I
invoke-static {v4, v1, v3, v2, v5}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v4
add-int/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_fb
:cond_120
move-object v0, v3
goto :goto_b2
.end method
.method public b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
.registers 14
const/4 v7, 0x4
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {p2}, Lcom/igexin/a/a/b/e;->b()Lcom/igexin/a/a/d/a/a;
move-result-object v0
if-nez v0, :cond_13
new-instance v0, Lcom/igexin/push/c/a/b;
invoke-direct {v0}, Lcom/igexin/push/c/a/b;-><init>()V
invoke-virtual {p2, v0}, Lcom/igexin/a/a/b/e;->a(Lcom/igexin/a/a/d/a/a;)V
:cond_13
invoke-virtual {p2}, Lcom/igexin/a/a/b/e;->b()Lcom/igexin/a/a/d/a/a;
move-result-object v0
check-cast v0, Lcom/igexin/push/c/a/b;
instance-of v1, p3, [B
if-eqz v1, :cond_9a
check-cast p3, [B
check-cast p3, [B
invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
move-result-object p3
:goto_25
iget v1, v0, Lcom/igexin/push/c/a/b;->a:I
if-nez v1, :cond_e7
iget v1, v0, Lcom/igexin/push/c/a/b;->d:I
if-nez v1, :cond_33
const/16 v1, 0x8
new-array v1, v1, [B
iput-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
:cond_33
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
if-lez v1, :cond_9d
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B
move-result v1
iget-object v2, v0, Lcom/igexin/push/c/a/b;->f:[B
iget v5, v0, Lcom/igexin/push/c/a/b;->d:I
add-int/lit8 v6, v5, 0x1
iput v6, v0, Lcom/igexin/push/c/a/b;->d:I
aput-byte v1, v2, v5
iget v1, v0, Lcom/igexin/push/c/a/b;->d:I
if-ne v1, v7, :cond_58
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
invoke-static {v1, v4}, Lcom/igexin/a/a/b/g;->c([BI)I
move-result v1
const v2, 0x73ea68fb
if-eq v1, v2, :cond_58
iput v4, v0, Lcom/igexin/push/c/a/b;->d:I
:cond_58
iget v1, v0, Lcom/igexin/push/c/a/b;->d:I
const/16 v2, 0x8
if-lt v1, v2, :cond_33
new-instance v2, Lcom/igexin/push/c/c/g;
invoke-direct {v2}, Lcom/igexin/push/c/c/g;-><init>()V
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
aget-byte v1, v1, v7
and-int/lit16 v1, v1, 0xff
iput v1, v2, Lcom/igexin/push/c/c/g;->c:I
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
const/4 v5, 0x5
aget-byte v1, v1, v5
and-int/lit16 v1, v1, 0xff
iput v1, v2, Lcom/igexin/push/c/c/g;->d:I
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
const/4 v5, 0x6
aget-byte v1, v1, v5
invoke-virtual {v2, v1}, Lcom/igexin/push/c/c/g;->a(B)V
iget-byte v1, v2, Lcom/igexin/push/c/c/g;->h:B
const/16 v5, 0x30
if-ne v1, v5, :cond_9f
iput-boolean v8, p0, Lcom/igexin/push/c/a/c;->g:Z
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B
move-result v5
new-array v1, v5, [B
iput-object v1, p0, Lcom/igexin/push/c/a/c;->e:[B
move v1, v4
:goto_8d
if-ge v1, v5, :cond_a1
iget-object v6, p0, Lcom/igexin/push/c/a/c;->e:[B
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B
move-result v7
aput-byte v7, v6, v1
add-int/lit8 v1, v1, 0x1
goto :goto_8d
:cond_9a
check-cast p3, Ljava/nio/ByteBuffer;
goto :goto_25
:cond_9d
move-object v0, v3
:goto_9e
return-object v0
:cond_9f
iput-boolean v4, p0, Lcom/igexin/push/c/a/c;->g:Z
:cond_a1
iget-byte v1, v2, Lcom/igexin/push/c/c/g;->g:B
const/16 v5, -0x80
if-ne v1, v5, :cond_c6
iput-boolean v8, p0, Lcom/igexin/push/c/a/c;->f:Z
:goto_a9
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
const/4 v5, 0x7
aget-byte v1, v1, v5
and-int/lit16 v1, v1, 0xff
iput v1, v2, Lcom/igexin/push/c/c/g;->f:I
iget v1, v2, Lcom/igexin/push/c/c/g;->f:I
invoke-virtual {v0, v1}, Lcom/igexin/push/c/a/b;->a(I)V
iput v4, v0, Lcom/igexin/push/c/a/b;->d:I
iput-object v3, v0, Lcom/igexin/push/c/a/b;->f:[B
iget v1, v2, Lcom/igexin/push/c/c/g;->f:I
if-lez v1, :cond_c9
iput v8, v0, Lcom/igexin/push/c/a/b;->a:I
invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/c/a/c;->b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
move-result-object v0
goto :goto_9e
:cond_c6
iput-boolean v4, p0, Lcom/igexin/push/c/a/c;->f:Z
goto :goto_a9
:cond_c9
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
new-instance v1, Lcom/igexin/push/c/c/h;
invoke-direct {v1}, Lcom/igexin/push/c/c/h;-><init>()V
invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_1b4
invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/c/a/c;->b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
move-result-object v0
goto :goto_9e
:cond_e7
:goto_e7
iget v1, v0, Lcom/igexin/push/c/a/b;->a:I
if-ne v1, v8, :cond_19d
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
if-lez v1, :cond_19d
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B
move-result v1
iget v2, v0, Lcom/igexin/push/c/a/b;->d:I
if-nez v2, :cond_fd
new-array v2, v9, [B
iput-object v2, v0, Lcom/igexin/push/c/a/b;->f:[B
:cond_fd
iget-object v2, v0, Lcom/igexin/push/c/a/b;->f:[B
iget v5, v0, Lcom/igexin/push/c/a/b;->d:I
add-int/lit8 v6, v5, 0x1
iput v6, v0, Lcom/igexin/push/c/a/b;->d:I
aput-byte v1, v2, v5
iget v1, v0, Lcom/igexin/push/c/a/b;->d:I
if-lt v1, v9, :cond_e7
iget v1, v0, Lcom/igexin/push/c/a/b;->d:I
if-ne v1, v9, :cond_129
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
invoke-static {v1, v4}, Lcom/igexin/a/a/b/g;->b([BI)I
move-result v1
iput v1, v0, Lcom/igexin/push/c/a/b;->e:I
iput-object v3, v0, Lcom/igexin/push/c/a/b;->f:[B
iget v1, v0, Lcom/igexin/push/c/a/b;->e:I
add-int/lit8 v1, v1, 0x3
new-array v1, v1, [B
iput-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
iget v1, v0, Lcom/igexin/push/c/a/b;->e:I
iget-object v2, v0, Lcom/igexin/push/c/a/b;->f:[B
invoke-static {v1, v2, v4}, Lcom/igexin/a/a/b/g;->b(I[BI)I
goto :goto_e7
:cond_129
iget v1, v0, Lcom/igexin/push/c/a/b;->d:I
iget v2, v0, Lcom/igexin/push/c/a/b;->e:I
add-int/lit8 v2, v2, 0x3
if-lt v1, v2, :cond_e7
new-instance v5, Lcom/igexin/push/c/c/b;
invoke-direct {v5}, Lcom/igexin/push/c/c/b;-><init>()V
iget v1, v0, Lcom/igexin/push/c/a/b;->e:I
iput v1, v5, Lcom/igexin/push/c/c/b;->a:I
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
aget-byte v1, v1, v9
iput-byte v1, v5, Lcom/igexin/push/c/c/b;->b:B
iget v1, v5, Lcom/igexin/push/c/c/b;->a:I
if-lez v1, :cond_16f
iget v1, v5, Lcom/igexin/push/c/c/b;->a:I
new-array v2, v1, [B
iget-object v1, v0, Lcom/igexin/push/c/a/b;->f:[B
const/4 v6, 0x3
iget v7, v5, Lcom/igexin/push/c/c/b;->a:I
invoke-static {v1, v6, v2, v4, v7}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
iget-boolean v1, p0, Lcom/igexin/push/c/a/c;->g:Z
if-eqz v1, :cond_1b7
iget-object v1, p0, Lcom/igexin/push/c/a/c;->e:[B
if-nez v1, :cond_196
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/a/a/b/d;->b()[B
move-result-object v1
:goto_160
invoke-static {v2, v1}, Lcom/igexin/a/a/a/a;->a([B[B)[B
move-result-object v1
:goto_164
iget-boolean v2, p0, Lcom/igexin/push/c/a/c;->f:Z
if-eqz v2, :cond_16c
invoke-static {v1}, Lcom/igexin/a/a/b/g;->b([B)[B
move-result-object v1
:cond_16c
invoke-virtual {v5, v1}, Lcom/igexin/push/c/c/b;->a([B)V
:cond_16f
iput v4, v0, Lcom/igexin/push/c/a/b;->e:I
iput v4, v0, Lcom/igexin/push/c/a/b;->d:I
iput-object v3, v0, Lcom/igexin/push/c/a/b;->f:[B
iget-object v1, p0, Lcom/igexin/push/c/a/c;->b:Lcom/igexin/a/a/b/c;
if-eqz v1, :cond_186
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v1
iget-object v2, p0, Lcom/igexin/push/c/a/c;->b:Lcom/igexin/a/a/b/c;
invoke-virtual {v2, p1, p2, v5}, Lcom/igexin/a/a/b/c;->c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z
:cond_186
iget v1, v0, Lcom/igexin/push/c/a/b;->b:I
add-int/lit8 v1, v1, 0x1
iput v1, v0, Lcom/igexin/push/c/a/b;->b:I
iget v1, v0, Lcom/igexin/push/c/a/b;->b:I
iget v2, v0, Lcom/igexin/push/c/a/b;->c:I
if-ne v1, v2, :cond_e7
iput v4, v0, Lcom/igexin/push/c/a/b;->a:I
goto/16 :goto_e7
:cond_196
iget-object v1, p0, Lcom/igexin/push/c/a/c;->e:[B
invoke-static {v1}, Lcom/igexin/a/b/a;->a([B)[B
move-result-object v1
goto :goto_160
:cond_19d
iget v0, v0, Lcom/igexin/push/c/a/b;->b:I
if-lez v0, :cond_1a8
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V
:cond_1a8
invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I
move-result v0
if-lez v0, :cond_1b4
invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/c/a/c;->b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
move-result-object v0
goto/16 :goto_9e
:cond_1b4
move-object v0, v3
goto/16 :goto_9e
:cond_1b7
move-object v1, v2
goto :goto_164
.end method
.method public synthetic c(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/push/c/a/c;->b(Lcom/igexin/a/a/b/f;Lcom/igexin/a/a/b/e;Ljava/lang/Object;)Lcom/igexin/a/a/d/a/f;
move-result-object v0
return-object v0
.end method