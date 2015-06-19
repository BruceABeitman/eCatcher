.class final Lcom/mapquest/android/maps/cp;
.super Landroid/os/Handler;
.source "TrackballGestureDetector.java"
.field final synthetic a:Lcom/mapquest/android/maps/co;
.method private constructor <init>(Lcom/mapquest/android/maps/co;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/mapquest/android/maps/co;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/cp;-><init>(Lcom/mapquest/android/maps/co;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_42
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->a(Lcom/mapquest/android/maps/co;)Z
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->b(Lcom/mapquest/android/maps/co;)Ljava/lang/Runnable;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->b(Lcom/mapquest/android/maps/co;)Ljava/lang/Runnable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_5
:pswitch_1d
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->c(Lcom/mapquest/android/maps/co;)Z
const-string v0, "TrackballGestureDetector"
const-string v1, "recevied tap event"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->d(Lcom/mapquest/android/maps/co;)Ljava/lang/Runnable;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->d(Lcom/mapquest/android/maps/co;)Ljava/lang/Runnable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_5
:pswitch_3b
iget-object v0, p0, Lcom/mapquest/android/maps/cp;->a:Lcom/mapquest/android/maps/co;
invoke-static {v0}, Lcom/mapquest/android/maps/co;->e(Lcom/mapquest/android/maps/co;)V
goto :goto_5
nop
:pswitch_data_42
.packed-switch 0x0
:pswitch_6
:pswitch_1d
:pswitch_3b
.end packed-switch
.end method