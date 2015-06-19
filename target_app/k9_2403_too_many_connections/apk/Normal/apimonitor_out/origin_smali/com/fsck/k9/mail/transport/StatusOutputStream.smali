.class public Lcom/fsck/k9/mail/transport/StatusOutputStream;
.super Ljava/io/FilterOutputStream;
.source "StatusOutputStream.java"


# instance fields
.field private mCount:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fsck/k9/mail/transport/StatusOutputStream;->mCount:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Lcom/fsck/k9/mail/transport/StatusOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fsck/k9/mail/transport/StatusOutputStream;->mCount:J

    return-void
.end method
