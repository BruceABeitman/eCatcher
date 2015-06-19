.class final Lcom/spotify/mobile/android/service/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Lcom/spotify/mobile/android/service/c/d;
.method constructor <init>(Lcom/spotify/mobile/android/service/c/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/c/d$1;->a:Lcom/spotify/mobile/android/service/c/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_12
:goto_5
const/4 v0, 0x1
return v0
:pswitch_7
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/d$1;->a:Lcom/spotify/mobile/android/service/c/d;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/spotify/mobile/android/g/a;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;Lcom/spotify/mobile/android/g/a;)V
goto :goto_5
nop
:pswitch_data_12
.packed-switch 0xa
:pswitch_7
.end packed-switch
.end method