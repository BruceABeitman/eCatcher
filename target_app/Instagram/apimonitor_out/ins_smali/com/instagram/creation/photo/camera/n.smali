.class final Lcom/instagram/creation/photo/camera/n;
.super Ljava/lang/Object;
.source "CameraFragment.java"
.implements Landroid/hardware/Camera$AutoFocusCallback;
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;
.method private constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/photo/camera/c;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/camera/n;-><init>(Lcom/instagram/creation/photo/camera/c;)V
return-void
.end method
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->t(Lcom/instagram/creation/photo/camera/c;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/camera/m;->a(Z)V
iget-object v0, p0, Lcom/instagram/creation/photo/camera/n;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->g(Lcom/instagram/creation/photo/camera/c;)Lcom/instagram/camera/m;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/camera/m;->l()Z
goto :goto_8
.end method