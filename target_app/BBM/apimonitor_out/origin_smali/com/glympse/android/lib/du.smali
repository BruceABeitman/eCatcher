.class Lcom/glympse/android/lib/du;
.super Ljava/lang/Object;
.source "HistoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/du;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/du;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/du;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    new-instance v1, Lcom/glympse/android/lib/eh;

    invoke-direct {v1}, Lcom/glympse/android/lib/eh;-><init>()V

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->syncedWithServer(Lcom/glympse/android/lib/eh;)V

    iget-object v0, p0, Lcom/glympse/android/lib/du;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->sendEvents()V

    goto :goto_8
.end method
