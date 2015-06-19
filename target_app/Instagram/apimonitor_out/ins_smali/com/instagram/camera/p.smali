.class public final Lcom/instagram/camera/p;
.super Lcom/instagram/camera/e;
.source "HTCFrontFacingFixGingerbreadCameraHolder.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/camera/e;-><init>()V
return-void
.end method
.method public final a(II)I
.registers 6
const/16 v1, 0x10e
const/16 v0, 0x5a
invoke-virtual {p0, p1}, Lcom/instagram/camera/p;->a(I)Z
move-result v2
if-eqz v2, :cond_d
sparse-switch p2, :sswitch_data_18
:cond_d
iget-object v0, p0, Lcom/instagram/camera/p;->a:[Landroid/hardware/Camera$CameraInfo;
aget-object v0, v0, p1
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
:sswitch_13
:goto_13
return v0
:sswitch_14
move v0, v1
goto :goto_13
:sswitch_16
move v0, v1
goto :goto_13
:sswitch_data_18
.sparse-switch
0x0 -> :sswitch_13
0x5a -> :sswitch_14
0xb4 -> :sswitch_13
0x10e -> :sswitch_16
.end sparse-switch
.end method
.method public final c(I)Z
.registers 3
const/4 v0, 0x0
return v0
.end method