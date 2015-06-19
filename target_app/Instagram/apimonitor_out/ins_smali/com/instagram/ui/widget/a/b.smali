.class final Lcom/instagram/ui/widget/a/b;
.super Ljava/lang/Object;
.source "IgImageButton.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/instagram/ui/widget/a/a;
.method constructor <init>(Lcom/instagram/ui/widget/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
const/4 v3, 0x2
const/4 v2, 0x1
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->a(Lcom/instagram/ui/widget/a/a;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_84
:cond_11
:pswitch_11
:goto_11
const/4 v0, 0x0
return v0
:pswitch_13
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/a/c;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v1}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v1
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x4b
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/ui/widget/a/c;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_11
:pswitch_32
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/a/c;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/a/c;->removeMessages(I)V
goto :goto_11
:cond_48
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->c(Lcom/instagram/ui/widget/a/a;)V
goto :goto_11
:pswitch_4e
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/a/c;->hasMessages(I)Z
move-result v0
if-eqz v0, :cond_7e
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/a/c;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->d(Lcom/instagram/ui/widget/a/a;)V
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v1}, Lcom/instagram/ui/widget/a/a;->b(Lcom/instagram/ui/widget/a/a;)Lcom/instagram/ui/widget/a/c;
move-result-object v1
invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/ui/widget/a/c;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_11
:cond_7e
iget-object v0, p0, Lcom/instagram/ui/widget/a/b;->a:Lcom/instagram/ui/widget/a/a;
invoke-static {v0}, Lcom/instagram/ui/widget/a/a;->c(Lcom/instagram/ui/widget/a/a;)V
goto :goto_11
:pswitch_data_84
.packed-switch 0x0
:pswitch_13
:pswitch_4e
:pswitch_11
:pswitch_32
.end packed-switch
.end method