.class Lcom/glympse/android/lib/bg;
.super Ljava/lang/Object;
.source "DirectionsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private kn:Lcom/glympse/android/lib/bf;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/bf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/bg;->kn:Lcom/glympse/android/lib/bf;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x3

    const-string v1, "[DirectionsTimer.run] Fired"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/bg;->kn:Lcom/glympse/android/lib/bf;

    invoke-static {v0}, Lcom/glympse/android/lib/bf;->a(Lcom/glympse/android/lib/bf;)V

    return-void
.end method
