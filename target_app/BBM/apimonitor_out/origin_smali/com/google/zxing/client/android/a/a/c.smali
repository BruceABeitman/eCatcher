.class public final Lcom/google/zxing/client/android/a/a/c;
.super Lcom/google/zxing/client/android/b/a;
.source "OpenCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/zxing/client/android/b/a",
        "<",
        "Lcom/google/zxing/client/android/a/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const-class v0, Lcom/google/zxing/client/android/a/a/b;

    new-instance v1, Lcom/google/zxing/client/android/a/a/a;

    invoke-direct {v1}, Lcom/google/zxing/client/android/a/a/a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/client/android/b/a;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    const/16 v0, 0x9

    const-string v1, "com.google.zxing.client.android.camera.open.GingerbreadOpenCameraInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/a/a/c;->a(ILjava/lang/String;)V

    return-void
.end method
