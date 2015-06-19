.class final Lcom/instagram/creation/photo/camera/j;
.super Ljava/lang/Object;
.source "CameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/camera/j;->a:Lcom/instagram/creation/photo/camera/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/camera/j;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->m(Lcom/instagram/creation/photo/camera/c;)V
iget-object v0, p0, Lcom/instagram/creation/photo/camera/j;->a:Lcom/instagram/creation/photo/camera/c;
invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->n(Lcom/instagram/creation/photo/camera/c;)V
return-void
.end method