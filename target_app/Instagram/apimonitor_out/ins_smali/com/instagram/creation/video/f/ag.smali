.class final Lcom/instagram/creation/video/f/ag;
.super Landroid/content/BroadcastReceiver;
.source "VideoCoverFragmentBase.java"
.field final synthetic a:Lcom/instagram/creation/video/f/ad;
.method private constructor <init>(Lcom/instagram/creation/video/f/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/ag;->a:Lcom/instagram/creation/video/f/ad;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/creation/video/f/ad;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/ag;-><init>(Lcom/instagram/creation/video/f/ad;)V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/video/f/ag;->a:Lcom/instagram/creation/video/f/ad;
invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->b(Lcom/instagram/creation/video/f/ad;)V
return-void
.end method