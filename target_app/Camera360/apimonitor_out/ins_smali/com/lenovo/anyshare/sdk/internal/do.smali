.class public Lcom/lenovo/anyshare/sdk/internal/do;
.super Ljava/lang/Object;
.source "AudioPlayer.java"
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
.field protected a:I
.field protected b:Landroid/media/AudioTrack;
.field protected c:I
.field protected d:Landroid/media/AudioManager;
.field protected e:Lcom/lenovo/anyshare/sdk/internal/do$a;
.field protected f:I
.field protected g:[S
.field protected h:Lcom/lenovo/anyshare/sdk/internal/dp;
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/dp;II)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
const/4 v0, 0x0
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->f:I
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
const-string/jumbo v0, "audio"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->d:Landroid/media/AudioManager;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/do;->h:Lcom/lenovo/anyshare/sdk/internal/dp;
iput p3, p0, Lcom/lenovo/anyshare/sdk/internal/do;->a:I
iput p4, p0, Lcom/lenovo/anyshare/sdk/internal/do;->c:I
return-void
.end method
.method public a()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_2c
if-eqz v1, :cond_12
:try_start_5
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/do$a;->interrupt()V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/do$a;->join()V
:try_end_f
.catchall {:try_start_5 .. :try_end_f} :catchall_27
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_3a
const/4 v1, 0x0
:try_start_10
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
:cond_12
:goto_12
monitor-exit p0
:try_end_13
.catchall {:try_start_10 .. :try_end_13} :catchall_2c
monitor-enter p0
:try_start_14
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
:try_end_16
.catchall {:try_start_14 .. :try_end_16} :catchall_37
if-eqz v1, :cond_25
:try_start_18
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
:try_end_1d
.catchall {:try_start_18 .. :try_end_1d} :catchall_37
.catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1d} :catch_2f
:try_start_1d
:goto_1d
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
:cond_25
monitor-exit p0
:try_end_26
.catchall {:try_start_1d .. :try_end_26} :catchall_37
return-void
:catchall_27
move-exception v1
const/4 v2, 0x0
:try_start_29
iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
throw v1
:catchall_2c
move-exception v1
monitor-exit p0
:try_end_2e
.catchall {:try_start_29 .. :try_end_2e} :catchall_2c
throw v1
:catch_2f
move-exception v0
:try_start_30
const-string/jumbo v1, "AudioPlayer"
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d
:catchall_37
move-exception v1
monitor-exit p0
:try_end_39
.catchall {:try_start_30 .. :try_end_39} :catchall_37
throw v1
:catch_3a
move-exception v1
const/4 v1, 0x0
:try_start_3c
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
:try_end_3e
.catchall {:try_start_3c .. :try_end_3e} :catchall_2c
goto :goto_12
.end method
.method public a([S)Z
.registers 4
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/do;->a()V
const/4 v0, 0x0
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/do;->c()Z
move-result v1
if-nez v1, :cond_d
:goto_c
return v0
:cond_d
monitor-enter p0
:try_start_e
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
if-nez v1, :cond_1e
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/do$a;
invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/do$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/do;)V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->e:Lcom/lenovo/anyshare/sdk/internal/do$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/do$a;->start()V
:cond_1e
monitor-exit p0
goto :goto_c
:catchall_20
move-exception v1
monitor-exit p0
:try_end_22
.catchall {:try_start_e .. :try_end_22} :catchall_20
throw v1
.end method
.method public b()Z
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I
move-result v0
const/4 v1, 0x3
if-eq v0, v1, :cond_16
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method protected c()Z
.registers 10
const/4 v8, 0x1
:try_start_1
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->a:I
const/4 v1, 0x2
const/4 v2, 0x2
invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I
move-result v5
new-instance v0, Landroid/media/AudioTrack;
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->c:I
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/do;->a:I
const/4 v3, 0x2
const/4 v4, 0x2
const/4 v6, 0x1
invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
mul-int/lit8 v0, v5, 0x2
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->f:I
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/do;->d()V
:try_end_23
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25
move v0, v8
:goto_24
return v0
:catch_25
move-exception v7
const-string/jumbo v0, "AudioPlayer"
invoke-static {v0, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_24
.end method
.method protected d()V
.registers 5
const/4 v3, 0x3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
if-eqz v1, :cond_24
const/4 v0, 0x0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->d:Landroid/media/AudioManager;
invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_1f
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->d:Landroid/media/AudioManager;
invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v1
int-to-float v1, v1
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do;->d:Landroid/media/AudioManager;
invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
move-result v2
int-to-float v2, v2
div-float v0, v1, v2
:cond_1f
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
:cond_24
return-void
.end method
.method public onMarkerReached(Landroid/media/AudioTrack;)V
.registers 3
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/do;->a()V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->h:Lcom/lenovo/anyshare/sdk/internal/dp;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/do;->h:Lcom/lenovo/anyshare/sdk/internal/dp;
invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/dp;->c()V
:cond_c
return-void
.end method
.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
.registers 2
return-void
.end method