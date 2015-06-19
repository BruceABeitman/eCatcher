.class public final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "HybiParser.java"
.field private static final o:Ljava/util/List;
.field private static final p:Ljava/util/List;
.field private a:Lcom/a/a/f;
.field private b:Lcom/a/a/j;
.field private c:Z
.field private d:I
.field private e:Z
.field private f:Z
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.field private k:[B
.field private l:[B
.field private m:Z
.field private n:Ljava/io/ByteArrayOutputStream;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Integer;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v4
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v5
const/16 v1, 0x8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v6
const/4 v1, 0x4
const/16 v2, 0x9
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
const/16 v2, 0xa
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/a/a/b;->o:Ljava/util/List;
new-array v0, v6, [Ljava/lang/Integer;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v4
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v5
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/a/a/b;->p:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lcom/a/a/f;Lcom/a/a/j;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/a/a/b;->c:Z
new-array v0, v1, [B
iput-object v0, p0, Lcom/a/a/b;->k:[B
new-array v0, v1, [B
iput-object v0, p0, Lcom/a/a/b;->l:[B
iput-boolean v1, p0, Lcom/a/a/b;->m:Z
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/a/a/b;->n:Ljava/io/ByteArrayOutputStream;
iput-object p1, p0, Lcom/a/a/b;->a:Lcom/a/a/f;
iput-object p2, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
return-void
.end method
.method private static a([BI)J
.registers 7
array-length v0, p0
if-ge v0, p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "length must be less than or equal to b.length"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
const-wide/16 v0, 0x0
const/4 v2, 0x0
:goto_e
if-ge v2, p1, :cond_22
add-int/lit8 v3, p1, -0x1
sub-int/2addr v3, v2
mul-int/lit8 v3, v3, 0x8
add-int/lit8 v4, v2, 0x0
aget-byte v4, p0, v4
and-int/lit16 v4, v4, 0xff
shl-int v3, v4, v3
int-to-long v3, v3
add-long/2addr v0, v3
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_22
return-wide v0
.end method
.method private a()V
.registers 7
const/4 v0, 0x0
const/4 v5, 0x2
const/4 v4, 0x1
iget-object v1, p0, Lcom/a/a/b;->l:[B
iget-object v2, p0, Lcom/a/a/b;->k:[B
invoke-static {v1, v2, v0}, Lcom/a/a/b;->a([B[BI)[B
move-result-object v1
iget v2, p0, Lcom/a/a/b;->g:I
if-nez v2, :cond_41
iget v0, p0, Lcom/a/a/b;->j:I
if-nez v0, :cond_1b
new-instance v0, Lcom/a/a/d;
const-string v1, "Mode was not set."
invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p0, Lcom/a/a/b;->n:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-boolean v0, p0, Lcom/a/a/b;->e:Z
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/a/a/b;->n:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
iget v1, p0, Lcom/a/a/b;->j:I
if-ne v1, v4, :cond_3b
iget-object v1, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
invoke-static {v0}, Lcom/a/a/b;->c([B)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/a/a/j;->onMessage(Ljava/lang/String;)V
:goto_37
invoke-direct {p0}, Lcom/a/a/b;->b()V
:goto_3a
:cond_3a
return-void
:cond_3b
iget-object v1, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
invoke-interface {v1, v0}, Lcom/a/a/j;->onMessage([B)V
goto :goto_37
:cond_41
if-ne v2, v4, :cond_59
iget-boolean v0, p0, Lcom/a/a/b;->e:Z
if-eqz v0, :cond_51
invoke-static {v1}, Lcom/a/a/b;->c([B)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
invoke-interface {v1, v0}, Lcom/a/a/j;->onMessage(Ljava/lang/String;)V
goto :goto_3a
:cond_51
iput v4, p0, Lcom/a/a/b;->j:I
iget-object v0, p0, Lcom/a/a/b;->n:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
goto :goto_3a
:cond_59
if-ne v2, v5, :cond_6d
iget-boolean v0, p0, Lcom/a/a/b;->e:Z
if-eqz v0, :cond_65
iget-object v0, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
invoke-interface {v0, v1}, Lcom/a/a/j;->onMessage([B)V
goto :goto_3a
:cond_65
iput v5, p0, Lcom/a/a/b;->j:I
iget-object v0, p0, Lcom/a/a/b;->n:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
goto :goto_3a
:cond_6d
const/16 v3, 0x8
if-ne v2, v3, :cond_a2
array-length v2, v1
if-lt v2, v5, :cond_7b
aget-byte v0, v1, v0
mul-int/lit16 v0, v0, 0x100
aget-byte v2, v1, v4
add-int/2addr v0, v2
:cond_7b
array-length v2, v1
if-le v2, v5, :cond_a0
invoke-static {v1}, Lcom/a/a/b;->e([B)[B
move-result-object v1
invoke-static {v1}, Lcom/a/a/b;->c([B)Ljava/lang/String;
move-result-object v1
:goto_86
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Got close op! "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
invoke-interface {v2, v0, v1}, Lcom/a/a/j;->onDisconnect(ILjava/lang/String;)V
goto :goto_3a
:cond_a0
const/4 v1, 0x0
goto :goto_86
:cond_a2
const/16 v0, 0x9
if-ne v2, v0, :cond_c3
array-length v0, v1
const/16 v2, 0x7d
if-le v0, v2, :cond_b3
new-instance v0, Lcom/a/a/d;
const-string v1, "Ping payload too large"
invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V
throw v0
:cond_b3
iget-object v0, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
invoke-interface {v0}, Lcom/a/a/j;->onPing()V
iget-object v0, p0, Lcom/a/a/b;->a:Lcom/a/a/f;
invoke-direct {p0, v1}, Lcom/a/a/b;->b([B)[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/a/a/f;->a([B)V
goto/16 :goto_3a
:cond_c3
const/16 v0, 0xa
if-ne v2, v0, :cond_3a
invoke-static {v1}, Lcom/a/a/b;->c([B)Ljava/lang/String;
goto/16 :goto_3a
.end method
.method private a(B)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
and-int/lit8 v0, p1, 0x40
const/16 v3, 0x40
if-ne v0, v3, :cond_25
move v4, v1
:goto_9
and-int/lit8 v0, p1, 0x20
const/16 v3, 0x20
if-ne v0, v3, :cond_27
move v3, v1
:goto_10
and-int/lit8 v0, p1, 0x10
const/16 v5, 0x10
if-ne v0, v5, :cond_29
move v0, v1
:goto_17
if-nez v4, :cond_1d
if-nez v3, :cond_1d
if-eqz v0, :cond_2b
:cond_1d
new-instance v0, Lcom/a/a/d;
const-string v1, "RSV not zero"
invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
move v4, v2
goto :goto_9
:cond_27
move v3, v2
goto :goto_10
:cond_29
move v0, v2
goto :goto_17
:cond_2b
and-int/lit16 v0, p1, 0x80
const/16 v3, 0x80
if-ne v0, v3, :cond_56
move v0, v1
:goto_32
iput-boolean v0, p0, Lcom/a/a/b;->e:Z
and-int/lit8 v0, p1, 0xf
iput v0, p0, Lcom/a/a/b;->g:I
new-array v0, v2, [B
iput-object v0, p0, Lcom/a/a/b;->k:[B
new-array v0, v2, [B
iput-object v0, p0, Lcom/a/a/b;->l:[B
sget-object v0, Lcom/a/a/b;->o:Ljava/util/List;
iget v2, p0, Lcom/a/a/b;->g:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_58
new-instance v0, Lcom/a/a/d;
const-string v1, "Bad opcode"
invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V
throw v0
:cond_56
move v0, v2
goto :goto_32
:cond_58
sget-object v0, Lcom/a/a/b;->p:Ljava/util/List;
iget v2, p0, Lcom/a/a/b;->g:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_72
iget-boolean v0, p0, Lcom/a/a/b;->e:Z
if-nez v0, :cond_72
new-instance v0, Lcom/a/a/d;
const-string v1, "Expected non-final packet"
invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V
throw v0
:cond_72
iput v1, p0, Lcom/a/a/b;->d:I
return-void
.end method
.method private a([B)V
.registers 3
invoke-static {p1}, Lcom/a/a/b;->d([B)I
move-result v0
iput v0, p0, Lcom/a/a/b;->i:I
iget-boolean v0, p0, Lcom/a/a/b;->f:Z
if-eqz v0, :cond_e
const/4 v0, 0x3
:goto_b
iput v0, p0, Lcom/a/a/b;->d:I
return-void
:cond_e
const/4 v0, 0x4
goto :goto_b
.end method
.method private a(Ljava/lang/Object;II)[B
.registers 15
iget-boolean v0, p0, Lcom/a/a/b;->m:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Creating frame for: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " op: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " err: -1"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_ac
check-cast p1, Ljava/lang/String;
invoke-static {p1}, Lcom/a/a/b;->c(Ljava/lang/String;)[B
move-result-object p1
:goto_2a
array-length v0, p1
add-int/lit8 v3, v0, 0x0
const/16 v0, 0x7d
if-gt v3, v0, :cond_b2
const/4 v0, 0x2
:goto_32
iget-boolean v1, p0, Lcom/a/a/b;->c:Z
if-eqz v1, :cond_be
const/4 v1, 0x4
:goto_37
add-int v4, v0, v1
iget-boolean v1, p0, Lcom/a/a/b;->c:Z
if-eqz v1, :cond_c1
const/16 v1, 0x80
:goto_3f
add-int v2, v3, v4
new-array v2, v2, [B
const/4 v5, 0x0
int-to-byte v6, p2
or-int/lit8 v6, v6, -0x80
int-to-byte v6, v6
aput-byte v6, v2, v5
const/16 v5, 0x7d
if-gt v3, v5, :cond_c4
const/4 v5, 0x1
or-int/2addr v1, v3
int-to-byte v1, v1
aput-byte v1, v2, v5
:goto_53
const/4 v1, 0x0
add-int/lit8 v3, v4, 0x0
array-length v5, p1
invoke-static {p1, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-boolean v1, p0, Lcom/a/a/b;->c:Z
if-eqz v1, :cond_a9
const/4 v1, 0x4
new-array v1, v1, [B
const/4 v3, 0x0
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v5
const-wide/high16 v7, 0x4070
mul-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
int-to-byte v5, v5
aput-byte v5, v1, v3
const/4 v3, 0x1
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v5
const-wide/high16 v7, 0x4070
mul-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
int-to-byte v5, v5
aput-byte v5, v1, v3
const/4 v3, 0x2
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v5
const-wide/high16 v7, 0x4070
mul-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
int-to-byte v5, v5
aput-byte v5, v1, v3
const/4 v3, 0x3
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v5
const-wide/high16 v7, 0x4070
mul-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
int-to-byte v5, v5
aput-byte v5, v1, v3
const/4 v3, 0x0
const/4 v5, 0x4
invoke-static {v1, v3, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v2, v1, v4}, Lcom/a/a/b;->a([B[BI)[B
:cond_a9
move-object v0, v2
goto/16 :goto_5
:cond_ac
check-cast p1, [B
check-cast p1, [B
goto/16 :goto_2a
:cond_b2
const v0, 0xffff
if-gt v3, v0, :cond_ba
const/4 v0, 0x4
goto/16 :goto_32
:cond_ba
const/16 v0, 0xa
goto/16 :goto_32
:cond_be
const/4 v1, 0x0
goto/16 :goto_37
:cond_c1
const/4 v1, 0x0
goto/16 :goto_3f
:cond_c4
const v5, 0xffff
if-gt v3, v5, :cond_e3
const/4 v5, 0x1
or-int/lit8 v1, v1, 0x7e
int-to-byte v1, v1
aput-byte v1, v2, v5
const/4 v1, 0x2
div-int/lit16 v5, v3, 0x100
int-to-double v5, v5
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
int-to-byte v5, v5
aput-byte v5, v2, v1
const/4 v1, 0x3
and-int/lit16 v3, v3, 0xff
int-to-byte v3, v3
aput-byte v3, v2, v1
goto/16 :goto_53
:cond_e3
const/4 v5, 0x1
or-int/lit8 v1, v1, 0x7f
int-to-byte v1, v1
aput-byte v1, v2, v5
const/4 v1, 0x2
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x404c
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/4 v1, 0x3
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x4048
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/4 v1, 0x4
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x4044
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/4 v1, 0x5
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x4040
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/4 v1, 0x6
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x4038
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/4 v1, 0x7
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x4030
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/16 v1, 0x8
int-to-double v5, v3
const-wide/high16 v7, 0x4000
const-wide/high16 v9, 0x4020
invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
move-result-wide v7
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v5, v5
and-int/lit16 v5, v5, 0xff
int-to-byte v5, v5
aput-byte v5, v2, v1
const/16 v1, 0x9
and-int/lit16 v3, v3, 0xff
int-to-byte v3, v3
aput-byte v3, v2, v1
goto/16 :goto_53
.end method
.method private static a([B[BI)[B
.registers 7
array-length v0, p1
if-nez v0, :cond_4
:cond_3
return-object p0
:cond_4
const/4 v0, 0x0
:goto_5
array-length v1, p0
sub-int/2addr v1, p2
if-ge v0, v1, :cond_3
add-int v1, p2, v0
add-int v2, p2, v0
aget-byte v2, p0, v2
rem-int/lit8 v3, v0, 0x4
aget-byte v3, p1, v3
xor-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, p0, v1
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method private b()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/a/a/b;->j:I
iget-object v0, p0, Lcom/a/a/b;->n:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
return-void
.end method
.method private b(B)V
.registers 5
const/4 v1, 0x2
and-int/lit16 v0, p1, 0x80
const/16 v2, 0x80
if-ne v0, v2, :cond_20
const/4 v0, 0x1
:goto_8
iput-boolean v0, p0, Lcom/a/a/b;->f:Z
and-int/lit8 v0, p1, 0x7f
iput v0, p0, Lcom/a/a/b;->i:I
iget v0, p0, Lcom/a/a/b;->i:I
if-ltz v0, :cond_24
iget v0, p0, Lcom/a/a/b;->i:I
const/16 v2, 0x7d
if-gt v0, v2, :cond_24
iget-boolean v0, p0, Lcom/a/a/b;->f:Z
if-eqz v0, :cond_22
const/4 v0, 0x3
:goto_1d
iput v0, p0, Lcom/a/a/b;->d:I
:goto_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_8
:cond_22
const/4 v0, 0x4
goto :goto_1d
:cond_24
iget v0, p0, Lcom/a/a/b;->i:I
const/16 v2, 0x7e
if-ne v0, v2, :cond_30
move v0, v1
:goto_2b
iput v0, p0, Lcom/a/a/b;->h:I
iput v1, p0, Lcom/a/a/b;->d:I
goto :goto_1f
:cond_30
const/16 v0, 0x8
goto :goto_2b
.end method
.method private b(Ljava/lang/String;)[B
.registers 4
const/4 v0, 0x1
const/4 v1, -0x1
invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/Object;II)[B
move-result-object v0
return-object v0
.end method
.method private b([B)[B
.registers 4
const/16 v0, 0xa
const/4 v1, -0x1
invoke-direct {p0, p1, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/Object;II)[B
move-result-object v0
return-object v0
.end method
.method private static c([B)Ljava/lang/String;
.registers 3
:try_start_0
new-instance v0, Ljava/lang/String;
const-string v1, "UTF-8"
invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_7
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8
return-object v0
:catch_8
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private static c(Ljava/lang/String;)[B
.registers 3
:try_start_0
const-string v0, "UTF-8"
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_5
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private static d([B)I
.registers 6
array-length v0, p0
invoke-static {p0, v0}, Lcom/a/a/b;->a([BI)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-ltz v2, :cond_12
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_27
:cond_12
new-instance v2, Lcom/a/a/d;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Bad integer: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V
throw v2
:cond_27
long-to-int v0, v0
return v0
.end method
.method private static e([B)[B
.registers 3
const/4 v0, 0x2
array-length v1, p0
invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/a/a/c;)V
.registers 6
const/4 v3, 0x4
const/4 v2, 0x0
:goto_2
invoke-virtual {p1}, Lcom/a/a/c;->available()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_40
iget v0, p0, Lcom/a/a/b;->d:I
packed-switch v0, :pswitch_data_48
goto :goto_2
:pswitch_f
invoke-virtual {p1}, Lcom/a/a/c;->readByte()B
move-result v0
invoke-direct {p0, v0}, Lcom/a/a/b;->a(B)V
goto :goto_2
:pswitch_17
invoke-virtual {p1}, Lcom/a/a/c;->readByte()B
move-result v0
invoke-direct {p0, v0}, Lcom/a/a/b;->b(B)V
goto :goto_2
:pswitch_1f
iget v0, p0, Lcom/a/a/b;->h:I
invoke-virtual {p1, v0}, Lcom/a/a/c;->a(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/a/a/b;->a([B)V
goto :goto_2
:pswitch_29
invoke-virtual {p1, v3}, Lcom/a/a/c;->a(I)[B
move-result-object v0
iput-object v0, p0, Lcom/a/a/b;->k:[B
iput v3, p0, Lcom/a/a/b;->d:I
goto :goto_2
:pswitch_32
iget v0, p0, Lcom/a/a/b;->i:I
invoke-virtual {p1, v0}, Lcom/a/a/c;->a(I)[B
move-result-object v0
iput-object v0, p0, Lcom/a/a/b;->l:[B
invoke-direct {p0}, Lcom/a/a/b;->a()V
iput v2, p0, Lcom/a/a/b;->d:I
goto :goto_2
:cond_40
iget-object v0, p0, Lcom/a/a/b;->b:Lcom/a/a/j;
const-string v1, "EOF"
invoke-interface {v0, v2, v1}, Lcom/a/a/j;->onDisconnect(ILjava/lang/String;)V
return-void
:pswitch_data_48
.packed-switch 0x0
:pswitch_f
:pswitch_17
:pswitch_1f
:pswitch_29
:pswitch_32
.end packed-switch
.end method
.method public final a(Ljava/lang/String;)[B
.registers 3
invoke-direct {p0, p1}, Lcom/a/a/b;->b(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method