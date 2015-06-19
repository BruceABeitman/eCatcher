.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_44
:goto_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b()I
move-result v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Ljava/lang/Object;
move-result-object v2
monitor-enter v2
:try_start_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/b;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/b;->d(I)V
:try_end_2c
.catchall {:try_start_13 .. :try_end_2c} :catchall_2d
goto :goto_1d
:catchall_2d
move-exception v0
monitor-exit v2
throw v0
:cond_30
:try_start_30
monitor-exit v2
:try_end_31
.catchall {:try_start_30 .. :try_end_31} :catchall_2d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;I)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
rem-int/lit16 v1, v1, 0x3e8
rsub-int v1, v1, 0x3e8
int-to-long v1, v1
invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$1;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_5
:pswitch_data_44
.packed-switch 0x1
:pswitch_6
.end packed-switch
.end method