.class final Lcom/mapquest/android/maps/at;
.super Ljava/lang/Object;
.source "MapView.java"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Lcom/mapquest/android/maps/ax;
.field final synthetic b:Lcom/mapquest/android/maps/MapView;
.field final synthetic c:Lcom/mapquest/android/maps/MapView;
.method constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/ax;Lcom/mapquest/android/maps/MapView;)V
.registers 4
iput-object p1, p0, Lcom/mapquest/android/maps/at;->c:Lcom/mapquest/android/maps/MapView;
iput-object p2, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iput-object p3, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
sparse-switch v0, :sswitch_data_32
:goto_5
const/4 v0, 0x0
return v0
:sswitch_7
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_c
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_11
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_16
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_1b
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_20
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v1, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
invoke-interface {v0, v1}, Lcom/mapquest/android/maps/ax;->a(Lcom/mapquest/android/maps/MapView;)V
goto :goto_5
:sswitch_28
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_2d
iget-object v0, p0, Lcom/mapquest/android/maps/at;->a:Lcom/mapquest/android/maps/ax;
iget-object v0, p0, Lcom/mapquest/android/maps/at;->b:Lcom/mapquest/android/maps/MapView;
goto :goto_5
:sswitch_data_32
.sparse-switch
0x1 -> :sswitch_2d
0x3 -> :sswitch_28
0x4 -> :sswitch_16
0xb -> :sswitch_1b
0xc -> :sswitch_20
0x15 -> :sswitch_7
0x16 -> :sswitch_c
0x17 -> :sswitch_11
.end sparse-switch
.end method