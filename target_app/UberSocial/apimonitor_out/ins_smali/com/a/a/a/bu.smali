.class final Lcom/a/a/a/bu;
.super Ljava/io/InputStream;
.source "SourceFile"
.field private a:I
.field private b:I
.field private synthetic c:Lcom/a/a/a/br;
.method private constructor <init>(Lcom/a/a/a/br;Lcom/a/a/a/bt;)V
.registers 4
iput-object p1, p0, Lcom/a/a/a/bu;->c:Lcom/a/a/a/br;
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
iget v0, p2, Lcom/a/a/a/bt;->b:I
add-int/lit8 v0, v0, 0x4
invoke-static {p1, v0}, Lcom/a/a/a/br;->a(Lcom/a/a/a/br;I)I
move-result v0
iput v0, p0, Lcom/a/a/a/bu;->a:I
iget v0, p2, Lcom/a/a/a/bt;->c:I
iput v0, p0, Lcom/a/a/a/bu;->b:I
return-void
.end method
.method synthetic constructor <init>(Lcom/a/a/a/br;Lcom/a/a/a/bt;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/a/a/a/bu;-><init>(Lcom/a/a/a/br;Lcom/a/a/a/bt;)V
return-void
.end method
.method public final read()I
.registers 4
iget v0, p0, Lcom/a/a/a/bu;->b:I
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/a/a/a/bu;->c:Lcom/a/a/a/br;
invoke-static {v0}, Lcom/a/a/a/br;->a(Lcom/a/a/a/br;)Ljava/io/RandomAccessFile;
move-result-object v0
iget v1, p0, Lcom/a/a/a/bu;->a:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/a/a/a/bu;->c:Lcom/a/a/a/br;
invoke-static {v0}, Lcom/a/a/a/br;->a(Lcom/a/a/a/br;)Ljava/io/RandomAccessFile;
move-result-object v0
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I
move-result v0
iget-object v1, p0, Lcom/a/a/a/bu;->c:Lcom/a/a/a/br;
iget v2, p0, Lcom/a/a/a/bu;->a:I
add-int/lit8 v2, v2, 0x1
invoke-static {v1, v2}, Lcom/a/a/a/br;->a(Lcom/a/a/a/br;I)I
move-result v1
iput v1, p0, Lcom/a/a/a/bu;->a:I
iget v1, p0, Lcom/a/a/a/bu;->b:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/a/a/a/bu;->b:I
goto :goto_5
.end method
.method public final read([BII)I
.registers 6
const-string v0, "buffer"
invoke-static {p1, v0}, Lcom/a/a/a/br;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
or-int v0, p2, p3
if-ltz v0, :cond_d
array-length v0, p1
sub-int/2addr v0, p2
if-le p3, v0, :cond_13
:cond_d
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V
throw v0
:cond_13
iget v0, p0, Lcom/a/a/a/bu;->b:I
if-lez v0, :cond_35
iget v0, p0, Lcom/a/a/a/bu;->b:I
if-le p3, v0, :cond_1d
iget p3, p0, Lcom/a/a/a/bu;->b:I
:cond_1d
iget-object v0, p0, Lcom/a/a/a/bu;->c:Lcom/a/a/a/br;
iget v1, p0, Lcom/a/a/a/bu;->a:I
invoke-static {v0, v1, p1, p2, p3}, Lcom/a/a/a/br;->a(Lcom/a/a/a/br;I[BII)V
iget-object v0, p0, Lcom/a/a/a/bu;->c:Lcom/a/a/a/br;
iget v1, p0, Lcom/a/a/a/bu;->a:I
add-int/2addr v1, p3
invoke-static {v0, v1}, Lcom/a/a/a/br;->a(Lcom/a/a/a/br;I)I
move-result v0
iput v0, p0, Lcom/a/a/a/bu;->a:I
iget v0, p0, Lcom/a/a/a/bu;->b:I
sub-int/2addr v0, p3
iput v0, p0, Lcom/a/a/a/bu;->b:I
:goto_34
return p3
:cond_35
const/4 p3, -0x1
goto :goto_34
.end method