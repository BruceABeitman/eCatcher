.class Lcom/glympse/android/lib/ke;
.super Ljava/lang/Object;
.source "WebImageProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _httpConnection:Lcom/glympse/android/hal/GHttpConnection;

.field private nz:Z

.field final synthetic uJ:Lcom/glympse/android/lib/kd;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/kd;Lcom/glympse/android/hal/GHttpConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/lib/ke;->uJ:Lcom/glympse/android/lib/kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/ke;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/ke;->nz:Z

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/ke;->nz:Z

    return-void
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/ke;->nz:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/ke;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->close()V

    goto :goto_4
.end method
