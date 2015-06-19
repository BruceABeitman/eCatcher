.class final Lcom/instagram/creation/video/h/g;
.super Ljava/lang/Object;
.source "MediaRecorderProxy.java"
.implements Landroid/media/MediaRecorder$OnInfoListener;
.field final synthetic a:Lcom/instagram/creation/video/h/c;
.field final synthetic b:Lcom/instagram/creation/video/h/e;
.method constructor <init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/c;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/video/h/g;->b:Lcom/instagram/creation/video/h/e;
iput-object p2, p0, Lcom/instagram/creation/video/h/g;->a:Lcom/instagram/creation/video/h/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onInfo(Landroid/media/MediaRecorder;II)V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/h/g;->a:Lcom/instagram/creation/video/h/c;
iget-object v0, p0, Lcom/instagram/creation/video/h/g;->b:Lcom/instagram/creation/video/h/e;
return-void
.end method