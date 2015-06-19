.class Lcom/glympse/android/lib/gl;
.super Ljava/lang/Object;
.source "PersistentChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private qO:Lcom/glympse/android/lib/PersistentChannel;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/PersistentChannel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gl;->qO:Lcom/glympse/android/lib/PersistentChannel;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x3

    const-string v1, "PersistedChannel.RetryTimer.run"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/gl;->qO:Lcom/glympse/android/lib/PersistentChannel;

    invoke-virtual {v0}, Lcom/glympse/android/lib/PersistentChannel;->performRetry()V

    return-void
.end method
