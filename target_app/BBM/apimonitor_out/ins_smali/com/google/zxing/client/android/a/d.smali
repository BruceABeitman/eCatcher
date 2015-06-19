.class final Lcom/google/zxing/client/android/a/d;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/google/zxing/client/android/a/c;
.method constructor <init>(Lcom/google/zxing/client/android/a/c;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/a/d;->a:Lcom/google/zxing/client/android/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
check-cast p1, Landroid/hardware/Camera$Size;
check-cast p2, Landroid/hardware/Camera$Size;
iget v0, p1, Landroid/hardware/Camera$Size;->height:I
iget v1, p1, Landroid/hardware/Camera$Size;->width:I
mul-int/2addr v0, v1
iget v1, p2, Landroid/hardware/Camera$Size;->height:I
iget v2, p2, Landroid/hardware/Camera$Size;->width:I
mul-int/2addr v1, v2
if-ge v1, v0, :cond_12
const/4 v0, -0x1
:goto_11
return v0
:cond_12
if-le v1, v0, :cond_16
const/4 v0, 0x1
goto :goto_11
:cond_16
const/4 v0, 0x0
goto :goto_11
.end method