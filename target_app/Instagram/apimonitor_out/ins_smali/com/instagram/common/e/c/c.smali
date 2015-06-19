.class final Lcom/instagram/common/e/c/c;
.super Landroid/os/Handler;
.source "IgVideoCache.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/e/c/c;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/instagram/common/e/c/d;
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_12
:goto_9
return-void
:pswitch_a
invoke-interface {v0}, Lcom/instagram/common/e/c/d;->f()V
goto :goto_9
:pswitch_e
invoke-interface {v0}, Lcom/instagram/common/e/c/d;->g()V
goto :goto_9
:pswitch_data_12
.packed-switch 0x1
:pswitch_a
:pswitch_e
.end packed-switch
.end method