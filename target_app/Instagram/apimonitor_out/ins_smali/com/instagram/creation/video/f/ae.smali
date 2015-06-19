.class final Lcom/instagram/creation/video/f/ae;
.super Ljava/lang/Object;
.source "VideoCoverFragmentBase.java"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Lcom/instagram/creation/video/f/ad;
.method constructor <init>(Lcom/instagram/creation/video/f/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/f/ae;->a:Lcom/instagram/creation/video/f/ad;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget v2, p1, Landroid/os/Message;->what:I
const/4 v3, 0x5
if-ne v2, v3, :cond_1b
iget-object v1, p0, Lcom/instagram/creation/video/f/ae;->a:Lcom/instagram/creation/video/f/ad;
invoke-static {v1}, Lcom/instagram/creation/video/f/ad;->a(Lcom/instagram/creation/video/f/ad;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/instagram/creation/video/f/ae;->a:Lcom/instagram/creation/video/f/ad;
invoke-static {v1}, Lcom/instagram/creation/video/f/ad;->a(Lcom/instagram/creation/video/f/ad;)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:goto_1a
:cond_1a
return v0
:cond_1b
iget v2, p1, Landroid/os/Message;->what:I
const/4 v3, 0x6
if-ne v2, v3, :cond_32
iget-object v2, p0, Lcom/instagram/creation/video/f/ae;->a:Lcom/instagram/creation/video/f/ad;
invoke-static {v2}, Lcom/instagram/creation/video/f/ad;->a(Lcom/instagram/creation/video/f/ad;)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_1a
iget-object v2, p0, Lcom/instagram/creation/video/f/ae;->a:Lcom/instagram/creation/video/f/ad;
invoke-static {v2}, Lcom/instagram/creation/video/f/ad;->a(Lcom/instagram/creation/video/f/ad;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_1a
:cond_32
move v0, v1
goto :goto_1a
.end method