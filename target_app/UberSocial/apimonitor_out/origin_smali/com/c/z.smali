.class final Lcom/c/z;
.super Ljava/io/OutputStream;


# instance fields
.field final a:Lcom/c/bc;

.field final b:Ljava/lang/StringBuilder;

.field final c:Lcom/c/bp;


# direct methods
.method public constructor <init>(Lcom/c/bp;Lcom/c/bc;)V
    .registers 4

    iput-object p1, p0, Lcom/c/z;->c:Lcom/c/bp;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lcom/c/z;->a:Lcom/c/bc;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/c/z;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lcom/c/z;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/c/z;->c:Lcom/c/bp;

    iget-object v1, p0, Lcom/c/z;->a:Lcom/c/bc;

    iget-object v2, p0, Lcom/c/z;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/c/bp;->a(Lcom/c/bc;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lcom/c/z;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method
