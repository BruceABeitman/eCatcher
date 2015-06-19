.class final Lcom/instagram/camera/q;
.super Ljava/lang/Object;
.source "ShutterButton.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Z
.field final synthetic b:Lcom/instagram/camera/ShutterButton;
.method constructor <init>(Lcom/instagram/camera/ShutterButton;Z)V
.registers 3
iput-object p1, p0, Lcom/instagram/camera/q;->b:Lcom/instagram/camera/ShutterButton;
iput-boolean p2, p0, Lcom/instagram/camera/q;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/camera/q;->b:Lcom/instagram/camera/ShutterButton;
iget-boolean v1, p0, Lcom/instagram/camera/q;->a:Z
invoke-static {v0, v1}, Lcom/instagram/camera/ShutterButton;->a(Lcom/instagram/camera/ShutterButton;Z)V
return-void
.end method