.class final Lcom/instagram/creation/base/g;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/base/g;->a:Ljava/util/Queue;

    iput-object p2, p0, Lcom/instagram/creation/base/g;->b:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/base/g;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/creation/base/g;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/instagram/creation/base/g;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/creation/base/g;->c:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/instagram/creation/base/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/instagram/creation/base/g;->c:Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lcom/instagram/creation/base/g;->c:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method public final onMediaScannerConnected()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/base/g;->a()V

    return-void
.end method

.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/creation/base/g;->a()V

    return-void
.end method
