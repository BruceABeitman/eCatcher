.class public final Lcom/bbm/m/a;
.super Ljava/lang/Object;
.source "Swilt.java"
.field static a:Lcom/bbm/m/c;
.field private final b:J
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.field private final i:Ljava/lang/String;
.field private final j:Ljava/lang/String;
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.field private final m:Ljava/lang/String;
.field private final n:Landroid/content/Context;
.field private o:Lcom/bbm/m/b;
.field private p:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/32 v0, 0x3a980
iput-wide v0, p0, Lcom/bbm/m/a;->b:J
const-string v0, "artist"
iput-object v0, p0, Lcom/bbm/m/a;->c:Ljava/lang/String;
const-string v0, "track"
iput-object v0, p0, Lcom/bbm/m/a;->d:Ljava/lang/String;
const-string v0, "duration"
iput-object v0, p0, Lcom/bbm/m/a;->e:Ljava/lang/String;
const-string v0, "trackLength"
iput-object v0, p0, Lcom/bbm/m/a;->f:Ljava/lang/String;
const-string v0, "playing"
iput-object v0, p0, Lcom/bbm/m/a;->g:Ljava/lang/String;
const-string v0, "paused"
iput-object v0, p0, Lcom/bbm/m/a;->h:Ljava/lang/String;
const-string v0, "isPlaying"
iput-object v0, p0, Lcom/bbm/m/a;->i:Ljava/lang/String;
const-string v0, "isplaying"
iput-object v0, p0, Lcom/bbm/m/a;->j:Ljava/lang/String;
const-string v0, "playstate"
iput-object v0, p0, Lcom/bbm/m/a;->k:Ljava/lang/String;
const-string v0, "TRACK_NAME"
iput-object v0, p0, Lcom/bbm/m/a;->l:Ljava/lang/String;
const-string v0, "ARTIST_NAME"
iput-object v0, p0, Lcom/bbm/m/a;->m:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/m/a;->p:Z
iput-object p1, p0, Lcom/bbm/m/a;->n:Landroid/content/Context;
return-void
.end method
.method static a(Ljava/lang/Object;)J
.registers 3
if-eqz p0, :cond_19
instance-of v0, p0, Ljava/lang/Number;
if-eqz v0, :cond_d
check-cast p0, Ljava/lang/Number;
invoke-virtual {p0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
:goto_c
return-wide v0
:cond_d
instance-of v0, p0, Ljava/lang/String;
if-eqz v0, :cond_19
:try_start_11
check-cast p0, Ljava/lang/String;
invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_16
.catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_16} :catch_18
move-result-wide v0
goto :goto_c
:catch_18
move-exception v0
:cond_19
const-wide/32 v0, 0x3a980
goto :goto_c
.end method
.method static a(Landroid/content/Intent;)Z
.registers 3
const-string v0, "playstate"
invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2f
:try_start_8
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "playstate"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_2f
const-string v0, "playstate"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_2f
const-string v1, "paused"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_29
.catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_29} :catch_2e
move-result v0
if-eqz v0, :cond_2f
const/4 v0, 0x0
:goto_2d
return v0
:catch_2e
move-exception v0
:cond_2f
const/4 v0, 0x1
goto :goto_2d
.end method
.method protected static c()V
.registers 6
const/4 v1, 0x0
sget-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-object v2, v0, Lcom/bbm/m/c;->a:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_8f
iget-object v2, v0, Lcom/bbm/m/c;->b:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_8f
iget-wide v2, v0, Lcom/bbm/m/c;->c:J
const-wide/16 v4, 0x0
cmp-long v0, v2, v4
if-lez v0, :cond_8f
const/4 v0, 0x1
:goto_1c
if-eqz v0, :cond_91
sget-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-boolean v0, v0, Lcom/bbm/m/c;->d:Z
if-eqz v0, :cond_91
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-object v2, v2, Lcom/bbm/m/c;->a:Ljava/lang/String;
sget-object v3, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-wide v3, v3, Lcom/bbm/m/c;->c:J
sget-object v5, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-object v5, v5, Lcom/bbm/m/c;->b:Ljava/lang/String;
invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;JLjava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "SWILT - "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-object v2, v2, Lcom/bbm/m/c;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-object v2, v2, Lcom/bbm/m/c;->b:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-wide v2, v2, Lcom/bbm/m/c;->c:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-boolean v2, v2, Lcom/bbm/m/c;->d:Z
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->b(Z)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "SWILT - state change to "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-boolean v2, v2, Lcom/bbm/m/c;->d:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_8e
:cond_8e
return-void
:cond_8f
move v0, v1
goto :goto_1c
:cond_91
sget-object v0, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-boolean v0, v0, Lcom/bbm/m/c;->d:Z
if-nez v0, :cond_8e
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-boolean v2, v2, Lcom/bbm/m/c;->d:Z
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->b(Z)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "SWILT - state change to "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/bbm/m/a;->a:Lcom/bbm/m/c;
iget-boolean v2, v2, Lcom/bbm/m/c;->d:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_8e
.end method
.method public final a()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->f()Z
move-result v0
iget-boolean v1, p0, Lcom/bbm/m/a;->p:Z
if-eqz v1, :cond_11
if-eqz v0, :cond_11
:goto_10
return-void
:cond_11
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/bbm/m/a;->b()V
goto :goto_10
:cond_17
iget-object v0, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/bbm/m/a;->n:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
:cond_25
:try_start_25
new-instance v0, Lcom/bbm/m/b;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/bbm/m/b;-><init>(Lcom/bbm/m/a;B)V
iput-object v0, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
iget-object v0, p0, Lcom/bbm/m/a;->n:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
new-instance v2, Landroid/content/IntentFilter;
invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V
const-string v3, "com.android.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.android.music.playstatechanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.android.music.playbackcomplete"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.android.music.queuechanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.hisense.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.hisense.music.playstatechanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.htc.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.htc.music.playbackcomplete"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.htc.music.playstatechanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.samsung.sec.android.MusicPlayer.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.samsung.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.samsung.sec.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.samsung.sec.android.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.samsung.MusicPlayer.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.sec.android.app.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.miui.player.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.sonyericsson.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.lge.music.metachanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.lge.music.playstatechanged"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.sonyericsson.music.playbackcontrol.ACTION_TRACK_STARTED"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.sonyericsson.music.playbackcontrol.ACTION_PAUSED"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v3, "com.sonyericsson.music.TRACK_COMPLETED"
invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/m/a;->p:Z
const-string v0, "SWILT - Enabled"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_b2
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_b2} :catch_b4
goto/16 :goto_10
:catch_b4
move-exception v0
const-string v1, "BBM-SWLIT-error in registration"
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_10
.end method
.method public final b()V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
if-eqz v0, :cond_19
:try_start_6
iget-object v0, p0, Lcom/bbm/m/a;->n:Landroid/content/Context;
iget-object v1, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v0, "SWILT - Disabled"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_15
.catchall {:try_start_6 .. :try_end_15} :catchall_28
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_1a
iput-object v3, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
iput-boolean v2, p0, Lcom/bbm/m/a;->p:Z
:cond_19
:goto_19
return-void
:catch_1a
move-exception v0
:try_start_1b
const-string v0, "BBM-SWILT-error in removing registration - maybe already removed."
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_23
.catchall {:try_start_1b .. :try_end_23} :catchall_28
iput-object v3, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
iput-boolean v2, p0, Lcom/bbm/m/a;->p:Z
goto :goto_19
:catchall_28
move-exception v0
iput-object v3, p0, Lcom/bbm/m/a;->o:Lcom/bbm/m/b;
iput-boolean v2, p0, Lcom/bbm/m/a;->p:Z
throw v0
.end method