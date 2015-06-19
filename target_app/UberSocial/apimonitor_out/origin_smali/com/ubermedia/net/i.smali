.class public Lcom/ubermedia/net/i;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ubermedia/net/j;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/ubermedia/net/j;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/ubermedia/net/i;->a:Lcom/ubermedia/net/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ubermedia/net/i;->b:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 6

    iget-object v0, p0, Lcom/ubermedia/net/i;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/ubermedia/net/i;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ubermedia/net/i;->b:J

    iget-object v0, p0, Lcom/ubermedia/net/i;->a:Lcom/ubermedia/net/j;

    iget-wide v1, p0, Lcom/ubermedia/net/i;->b:J

    invoke-interface {v0, v1, v2}, Lcom/ubermedia/net/j;->a(J)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    iget-object v0, p0, Lcom/ubermedia/net/i;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Lcom/ubermedia/net/i;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ubermedia/net/i;->b:J

    iget-object v0, p0, Lcom/ubermedia/net/i;->a:Lcom/ubermedia/net/j;

    iget-wide v1, p0, Lcom/ubermedia/net/i;->b:J

    invoke-interface {v0, v1, v2}, Lcom/ubermedia/net/j;->a(J)V

    return-void
.end method
