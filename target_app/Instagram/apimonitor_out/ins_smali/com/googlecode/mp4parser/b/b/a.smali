.class public Lcom/googlecode/mp4parser/b/b/a;
.super Ljava/lang/Object;
.source "BitstreamReader.java"
.field protected static b:I
.field  a:I
.field protected c:Lcom/googlecode/mp4parser/b/a;
.field private d:Ljava/io/InputStream;
.field private e:I
.field private f:I
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/googlecode/mp4parser/b/a;
invoke-direct {v0}, Lcom/googlecode/mp4parser/b/a;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/a;->c:Lcom/googlecode/mp4parser/b/a;
iput-object p1, p0, Lcom/googlecode/mp4parser/b/b/a;->d:Ljava/io/InputStream;
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/b/b/a;->e:I
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/b/b/a;->f:I
return-void
.end method
.method private d()V
.registers 2
iget v0, p0, Lcom/googlecode/mp4parser/b/b/a;->f:I
iput v0, p0, Lcom/googlecode/mp4parser/b/b/a;->e:I
iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/a;->d:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v0
iput v0, p0, Lcom/googlecode/mp4parser/b/b/a;->f:I
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
return-void
.end method
.method public final a()I
.registers 4
const/4 v0, -0x1
iget v1, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
const/16 v2, 0x8
if-ne v1, v2, :cond_f
invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/a;->d()V
iget v1, p0, Lcom/googlecode/mp4parser/b/b/a;->e:I
if-ne v1, v0, :cond_f
:goto_e
return v0
:cond_f
iget v0, p0, Lcom/googlecode/mp4parser/b/b/a;->e:I
iget v1, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
rsub-int/lit8 v1, v1, 0x7
shr-int/2addr v0, v1
and-int/lit8 v1, v0, 0x1
iget v0, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/a;->c:Lcom/googlecode/mp4parser/b/a;
if-nez v1, :cond_2f
const/16 v0, 0x30
:goto_24
invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/b/a;->a(C)V
sget v0, Lcom/googlecode/mp4parser/b/b/a;->b:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/googlecode/mp4parser/b/b/a;->b:I
move v0, v1
goto :goto_e
:cond_2f
const/16 v0, 0x31
goto :goto_24
.end method
.method public final a(I)J
.registers 7
const/16 v0, 0x40
if-le p1, v0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can not readByte more then 64 bit"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const-wide/16 v1, 0x0
const/4 v0, 0x0
:goto_f
if-ge v0, p1, :cond_1c
const/4 v3, 0x1
shl-long/2addr v1, v3
invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/a;->a()I
move-result v3
int-to-long v3, v3
or-long/2addr v1, v3
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1c
return-wide v1
.end method
.method public final b()Z
.registers 7
const/4 v2, 0x0
const/4 v5, -0x1
const/4 v1, 0x1
iget v0, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
const/16 v3, 0x8
if-ne v0, v3, :cond_c
invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/a;->d()V
:cond_c
iget v0, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
rsub-int/lit8 v0, v0, 0x8
add-int/lit8 v0, v0, -0x1
shl-int v0, v1, v0
shl-int/lit8 v3, v0, 0x1
add-int/lit8 v3, v3, -0x1
iget v4, p0, Lcom/googlecode/mp4parser/b/b/a;->e:I
and-int/2addr v3, v4
if-ne v3, v0, :cond_29
move v0, v1
:goto_1e
iget v3, p0, Lcom/googlecode/mp4parser/b/b/a;->e:I
if-eq v3, v5, :cond_2b
iget v3, p0, Lcom/googlecode/mp4parser/b/b/a;->f:I
if-ne v3, v5, :cond_28
if-nez v0, :cond_2b
:cond_28
:goto_28
return v1
:cond_29
move v0, v2
goto :goto_1e
:cond_2b
move v1, v2
goto :goto_28
.end method
.method public final c()J
.registers 3
iget v0, p0, Lcom/googlecode/mp4parser/b/b/a;->a:I
rsub-int/lit8 v0, v0, 0x8
invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/a;->a(I)J
move-result-wide v0
return-wide v0
.end method