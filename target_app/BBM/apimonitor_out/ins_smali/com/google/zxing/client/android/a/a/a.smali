.class final Lcom/google/zxing/client/android/a/a/a;
.super Ljava/lang/Object;
.source "DefaultOpenCameraInterface.java"
.implements Lcom/google/zxing/client/android/a/a/b;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/hardware/Camera;
.registers 2
invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
move-result-object v0
return-object v0
.end method