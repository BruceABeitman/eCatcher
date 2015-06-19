.class Lcom/glympse/android/lib/hy;
.super Ljava/lang/Object;
.source "TextMessage.java"

# interfaces
.implements Lcom/glympse/android/lib/GTextMessage;


# instance fields
.field private _time:J

.field private ew:Ljava/lang/String;

.field private oa:Ljava/lang/String;

.field private sD:Z


# direct methods
.method public constructor <init>(ZJLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/glympse/android/lib/hy;->sD:Z

    iput-wide p2, p0, Lcom/glympse/android/lib/hy;->_time:J

    iput-object p4, p0, Lcom/glympse/android/lib/hy;->ew:Ljava/lang/String;

    iput-object p5, p0, Lcom/glympse/android/lib/hy;->oa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hy;->ew:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hy;->oa:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/hy;->_time:J

    return-wide v0
.end method

.method public isReceived()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/hy;->sD:Z

    return v0
.end method
