.class public Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "EOLConvertingOutputStream.java"


# instance fields
.field lastChar:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0xa

    iget v0, p0, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->lastChar:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_d

    invoke-super {p0, v2}, Ljava/io/FilterOutputStream;->write(I)V

    iput v2, p0, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->lastChar:I

    :cond_d
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xd

    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->lastChar:I

    if-eq v0, v1, :cond_d

    invoke-super {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    :cond_d
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iput p1, p0, Lcom/fsck/k9/mail/transport/EOLConvertingOutputStream;->lastChar:I

    return-void
.end method
