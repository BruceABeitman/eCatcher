.class final Lcom/google/android/gms/tagmanager/au;
.super Landroid/os/Handler;
.field final synthetic a:Lcom/google/android/gms/tagmanager/as;
.field private final b:Lcom/google/android/gms/tagmanager/c;
.method public final handleMessage(Landroid/os/Message;)V
.registers 3
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_12
const-string v0, "Don\'t know how to handle this message."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/p;->a(Ljava/lang/String;)V
:goto_a
return-void
:pswitch_b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/au;->b:Lcom/google/android/gms/tagmanager/c;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/au;->a:Lcom/google/android/gms/tagmanager/as;
goto :goto_a
:pswitch_data_12
.packed-switch 0x1
:pswitch_b
.end packed-switch
.end method