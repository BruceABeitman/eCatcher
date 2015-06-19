.class final Lcom/google/zxing/client/android/a/f;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/zxing/client/android/a/c;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/zxing/client/android/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/client/android/a/f;->b:Lcom/google/zxing/client/android/a/c;

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/zxing/client/android/a/f;->c:Landroid/os/Handler;

    iput p2, p0, Lcom/google/zxing/client/android/a/f;->d:I

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    iget-object v0, p0, Lcom/google/zxing/client/android/a/f;->b:Lcom/google/zxing/client/android/a/c;

    iget-object v0, v0, Lcom/google/zxing/client/android/a/c;->c:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/google/zxing/client/android/a/f;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1b

    iget v2, p0, Lcom/google/zxing/client/android/a/f;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/a/f;->c:Landroid/os/Handler;

    :goto_1a
    return-void

    :cond_1b
    sget-object v0, Lcom/google/zxing/client/android/a/f;->a:Ljava/lang/String;

    const-string v1, "Got preview callback, but no handler or resolution available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
