.class Lcom/glympse/android/lib/bk;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cI:Lcom/glympse/android/api/GGlympse;

.field private kA:Lcom/glympse/android/lib/GEvent;


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/lib/GEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/bk;->cI:Lcom/glympse/android/api/GGlympse;

    iput-object p2, p0, Lcom/glympse/android/lib/bk;->kA:Lcom/glympse/android/lib/GEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/bk;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/glympse/android/lib/bk;->kA:Lcom/glympse/android/lib/GEvent;

    iget-object v1, p0, Lcom/glympse/android/lib/bk;->cI:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GEvent;->send(Lcom/glympse/android/api/GGlympse;)V

    :cond_f
    return-void
.end method
