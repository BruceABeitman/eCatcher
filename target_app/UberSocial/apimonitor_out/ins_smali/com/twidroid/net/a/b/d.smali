.class  Lcom/twidroid/net/a/b/d;
.super Ljava/io/OutputStream;
.source "SourceFile"
.field private a:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/net/a/b/b$1;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/net/a/b/d;-><init>()V
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/twidroid/net/a/b/d;->a:I
return v0
.end method
.method public write(I)V
.registers 3
iget v0, p0, Lcom/twidroid/net/a/b/d;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/net/a/b/d;->a:I
return-void
.end method
.method public write([B)V
.registers 4
iget v1, p0, Lcom/twidroid/net/a/b/d;->a:I
if-eqz p1, :cond_9
array-length v0, p1
:goto_5
add-int/2addr v0, v1
iput v0, p0, Lcom/twidroid/net/a/b/d;->a:I
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public write([BII)V
.registers 5
iget v0, p0, Lcom/twidroid/net/a/b/d;->a:I
add-int/2addr v0, p3
iput v0, p0, Lcom/twidroid/net/a/b/d;->a:I
return-void
.end method