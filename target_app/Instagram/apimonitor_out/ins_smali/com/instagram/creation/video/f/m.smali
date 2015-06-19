.class final Lcom/instagram/creation/video/f/m;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/f/a;
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/m;->a:Lcom/instagram/creation/video/f/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
sget v0, Lcom/facebook/az;->video_failed_to_start:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
iget-object v0, p0, Lcom/instagram/creation/video/f/m;->a:Lcom/instagram/creation/video/f/a;
invoke-static {v0}, Lcom/instagram/creation/video/f/a;->i(Lcom/instagram/creation/video/f/a;)V
return-void
.end method