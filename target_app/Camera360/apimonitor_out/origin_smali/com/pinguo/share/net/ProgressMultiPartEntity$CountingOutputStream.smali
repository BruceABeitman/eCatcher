.class public Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProgressMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/net/ProgressMultiPartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private final listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

.field private transferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

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

    iget-object v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

    iget-object v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

    iget-wide v1, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v1, v2}, Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;->transferred(J)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

    iget-object v0, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->listener:Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;

    iget-wide v1, p0, Lcom/pinguo/share/net/ProgressMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v1, v2}, Lcom/pinguo/share/net/ProgressMultiPartEntity$ProgressListener;->transferred(J)V

    return-void
.end method
