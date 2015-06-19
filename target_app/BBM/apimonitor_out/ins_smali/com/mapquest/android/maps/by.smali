.class final Lcom/mapquest/android/maps/by;
.super Landroid/os/Handler;
.source "ThreadBasedTileDownloader.java"
.field final synthetic a:Lcom/mapquest/android/maps/bt;
.method private constructor <init>(Lcom/mapquest/android/maps/bt;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/by;->a:Lcom/mapquest/android/maps/bt;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/mapquest/android/maps/bt;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/by;-><init>(Lcom/mapquest/android/maps/bt;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_16
:goto_5
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
return-void
:pswitch_9
iget-object v0, p0, Lcom/mapquest/android/maps/by;->a:Lcom/mapquest/android/maps/bt;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/mapquest/android/maps/bt;->e:Z
goto :goto_5
:pswitch_f
iget-object v0, p0, Lcom/mapquest/android/maps/by;->a:Lcom/mapquest/android/maps/bt;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/mapquest/android/maps/bt;->e:Z
goto :goto_5
nop
:pswitch_data_16
.packed-switch 0x3d
:pswitch_9
:pswitch_f
.end packed-switch
.end method