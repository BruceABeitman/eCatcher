.class final Lcom/instagram/creation/video/d/g;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/creation/video/d/f;
.method constructor <init>(Lcom/instagram/creation/video/d/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/d/g;->a:Lcom/instagram/creation/video/d/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/d/g;->a:Lcom/instagram/creation/video/d/f;
iget-object v0, v0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;
invoke-virtual {v0}, Lcom/instagram/creation/video/d/e;->m()V
return-void
.end method