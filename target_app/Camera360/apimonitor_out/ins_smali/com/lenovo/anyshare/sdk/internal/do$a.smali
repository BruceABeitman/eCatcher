.class public Lcom/lenovo/anyshare/sdk/internal/do$a;
.super Ljava/lang/Thread;
.source "AudioPlayer.java"
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/do;
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/do;)V
.registers 3
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
const-string/jumbo v0, "AudioPlayer.WorkerThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
array-length v3, v3
invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I
const/4 v1, 0x0
:goto_14
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/do$a;->interrupted()Z
move-result v2
if-eqz v2, :cond_1b
:goto_1a
return-void
:cond_1b
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget v2, v2, Lcom/lenovo/anyshare/sdk/internal/do;->f:I
add-int/2addr v2, v1
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
array-length v3, v3
if-le v2, v3, :cond_3a
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v4, v4, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
array-length v4, v4
sub-int/2addr v4, v1
invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioTrack;->write([SII)I
const/4 v1, 0x0
goto :goto_1a
:cond_3a
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/do;->b:Landroid/media/AudioTrack;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/do;->g:[S
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget v4, v4, Lcom/lenovo/anyshare/sdk/internal/do;->f:I
invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioTrack;->write([SII)I
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/do$a;->a:Lcom/lenovo/anyshare/sdk/internal/do;
iget v2, v2, Lcom/lenovo/anyshare/sdk/internal/do;->f:I
:try_end_4d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4f
add-int/2addr v1, v2
goto :goto_14
:catch_4f
move-exception v0
const-string/jumbo v2, "AudioPlayer"
invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1a
.end method