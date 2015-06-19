.class public final Lcom/squareup/okhttp/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/a;
.field  a:[J
.field private b:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [J
iput-object v0, p0, Lcom/squareup/okhttp/internal/c;->a:[J
return-void
.end method
.method private constructor <init>(Lcom/squareup/okhttp/internal/b;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [J
const/4 v1, 0x0
iget-wide v2, p1, Lcom/squareup/okhttp/internal/b;->a:J
aput-wide v2, v0, v1
const/4 v1, 0x1
const-wide/16 v2, 0x0
aput-wide v2, v0, v1
iput-object v0, p0, Lcom/squareup/okhttp/internal/c;->a:[J
return-void
.end method
.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/b;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;-><init>(Lcom/squareup/okhttp/internal/b;)V
return-void
.end method
.method private b()Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
iget-object v2, p0, Lcom/squareup/okhttp/internal/c;->a:[J
array-length v2, v2
mul-int/lit8 v2, v2, 0x40
iget v3, p0, Lcom/squareup/okhttp/internal/c;->b:I
sub-int/2addr v2, v3
:goto_e
if-ge v0, v2, :cond_20
invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/c;->c(I)Z
move-result v3
if-eqz v3, :cond_1d
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_20
return-object v1
.end method
.method private e(I)I
.registers 7
const/4 v4, 0x0
iget v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
add-int/2addr v0, p1
div-int/lit8 v0, v0, 0x40
iget-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
array-length v1, v1
add-int/lit8 v1, v1, -0x1
if-le v0, v1, :cond_1f
add-int/lit8 v1, v0, 0x1
new-array v1, v1, [J
iget-object v2, p0, Lcom/squareup/okhttp/internal/c;->a:[J
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/squareup/okhttp/internal/c;->a:[J
iget-object v3, p0, Lcom/squareup/okhttp/internal/c;->a:[J
array-length v3, v3
invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_1d
iput-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
:cond_1f
return v0
.end method
.method private f(I)I
.registers 3
iget v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
add-int/2addr v0, p1
rem-int/lit8 v0, v0, 0x40
return v0
.end method
.method private static g(I)I
.registers 6
if-gez p0, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "input must be a positive number: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
return p0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/c;->a:[J
const-wide/16 v1, 0x0
invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V
return-void
.end method
.method public final a(I)V
.registers 9
invoke-static {p1}, Lcom/squareup/okhttp/internal/c;->g(I)I
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;->e(I)I
move-result v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
aget-wide v2, v1, v0
const-wide/16 v4, 0x1
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;->f(I)I
move-result v6
shl-long/2addr v4, v6
or-long/2addr v2, v4
aput-wide v2, v1, v0
return-void
.end method
.method public final b(I)V
.registers 9
invoke-static {p1}, Lcom/squareup/okhttp/internal/c;->g(I)I
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;->e(I)I
move-result v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
aget-wide v2, v1, v0
const-wide/16 v4, 0x1
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;->f(I)I
move-result v6
shl-long/2addr v4, v6
xor-long/2addr v2, v4
aput-wide v2, v1, v0
return-void
.end method
.method public final c(I)Z
.registers 7
invoke-static {p1}, Lcom/squareup/okhttp/internal/c;->g(I)I
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;->e(I)I
move-result v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
aget-wide v0, v1, v0
const-wide/16 v2, 0x1
invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/c;->f(I)I
move-result v4
shl-long/2addr v2, v4
and-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_1b
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public final d(I)V
.registers 7
iget v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
invoke-static {p1}, Lcom/squareup/okhttp/internal/c;->g(I)I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
iget v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
if-gez v0, :cond_2c
iget v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
div-int/lit8 v0, v0, -0x40
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
array-length v1, v1
add-int/2addr v1, v0
new-array v1, v1, [J
iget-object v2, p0, Lcom/squareup/okhttp/internal/c;->a:[J
const/4 v3, 0x0
iget-object v4, p0, Lcom/squareup/okhttp/internal/c;->a:[J
array-length v4, v4
invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/squareup/okhttp/internal/c;->a:[J
iget v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
rem-int/lit8 v0, v0, 0x40
add-int/lit8 v0, v0, 0x40
iput v0, p0, Lcom/squareup/okhttp/internal/c;->b:I
:cond_2c
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "{"
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/squareup/okhttp/internal/c;->b()Ljava/util/List;
move-result-object v2
const/4 v0, 0x0
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
:goto_10
if-ge v0, v3, :cond_23
if-lez v0, :cond_19
const/16 v4, 0x2c
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_19
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_23
const/16 v0, 0x7d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method