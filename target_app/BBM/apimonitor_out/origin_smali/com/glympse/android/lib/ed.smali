.class Lcom/glympse/android/lib/ed;
.super Lcom/glympse/android/lib/fb;
.source "ImageCache.java"


# instance fields
.field private nM:Lcom/glympse/android/lib/ea;

.field final synthetic nO:Lcom/glympse/android/lib/ea;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/lib/ed;->nO:Lcom/glympse/android/lib/ea;

    invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/ed;->nM:Lcom/glympse/android/lib/ea;

    return-void
.end method


# virtual methods
.method public onProcess()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ed;->nM:Lcom/glympse/android/lib/ea;

    invoke-virtual {v0}, Lcom/glympse/android/lib/ea;->getMemoryCache()Lcom/glympse/android/lib/GMemoryCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GMemoryCache;->onLowMemory()V

    return-void
.end method
