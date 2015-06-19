.class Lcom/millennialmedia/android/cq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cq;->a(Lcom/millennialmedia/android/bp;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/bp;

.field final synthetic b:Lcom/millennialmedia/android/cq;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/bp;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/cq$3;->b:Lcom/millennialmedia/android/cq;

    iput-object p2, p0, Lcom/millennialmedia/android/cq$3;->a:Lcom/millennialmedia/android/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/cq$3;->b:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->buildDrawingCache()V

    iget-object v0, p0, Lcom/millennialmedia/android/cq$3;->b:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/cq$3;->a:Lcom/millennialmedia/android/bp;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/bp;->a(Landroid/graphics/Bitmap;)V

    :cond_16
    iget-object v0, p0, Lcom/millennialmedia/android/cq$3;->b:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->destroyDrawingCache()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    :goto_1b
    const/4 v0, 0x0

    return-object v0

    :catch_1d
    move-exception v0

    const-string v1, "MMWebView"

    const-string v2, "Animation exception: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/millennialmedia/android/cq$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
