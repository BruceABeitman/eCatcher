.class Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# instance fields
.field private final timeAdded:J

.field private final timeExpires:J


# direct methods
.method constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_13

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    :goto_12
    return-void

    :cond_13
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    goto :goto_12
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;)J
    .registers 3

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    return-wide v0
.end method

.method static synthetic access$100(Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;)J
    .registers 3

    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J

    return-wide v0
.end method
