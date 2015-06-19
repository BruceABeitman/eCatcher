.class public final Lcom/spotify/mobile/android/service/aj;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.implements Lcom/spotify/mobile/android/service/managers/g;
.implements Lcom/spotify/mobile/android/util/cb;
.field public static final a:Lcom/spotify/mobile/android/util/cz;
.field private final b:Lcom/spotify/mobile/android/service/ak;
.field private c:Landroid/content/Context;
.field private d:Lcom/spotify/mobile/android/util/PlaybackListener;
.field private e:Lcom/spotify/mobile/android/util/a/c;
.field private f:Landroid/media/AudioManager;
.field private g:Lcom/spotify/mobile/android/util/cs;
.field private h:Landroid/net/Uri;
.field private i:Landroid/graphics/Bitmap;
.field private j:Landroid/os/Handler;
.field private k:Landroid/os/Handler;
.field private final l:Ljava/lang/Object;
.field private m:Lcom/spotify/mobile/android/util/cx;
.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private o:Lcom/spotify/mobile/android/service/managers/f;
.field private p:Lcom/spotify/mobile/android/service/al;
.method static constructor <clinit>()V
.registers 1
const-string v0, "send_playback_broadcasts"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/PlaybackListener;Landroid/os/HandlerThread;Lcom/spotify/mobile/android/service/managers/f;)V
.registers 11
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->k:Landroid/os/Handler;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->l:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p1, p0, Lcom/spotify/mobile/android/service/aj;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/service/aj;->m:Lcom/spotify/mobile/android/util/cx;
new-instance v0, Landroid/os/Handler;
invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/service/ak;
invoke-direct {v0, p0, v4}, Lcom/spotify/mobile/android/service/ak;-><init>(Lcom/spotify/mobile/android/service/aj;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->b:Lcom/spotify/mobile/android/service/ak;
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.MEDIA_BUTTON"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v1, Landroid/content/ComponentName;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const-class v3, Lcom/spotify/music/internal/receiver/MediaButtonReceiver;
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
const-string v0, "audio"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->f:Landroid/media/AudioManager;
invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/util/a/c;
invoke-direct {v2, v1, v0}, Lcom/spotify/mobile/android/util/a/c;-><init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
iput-object v2, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
const/16 v1, 0x89
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/a/c;->b(I)V
iput-object p3, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
iput-object p5, p0, Lcom/spotify/mobile/android/service/aj;->o:Lcom/spotify/mobile/android/service/managers/f;
new-instance v0, Lcom/spotify/mobile/android/service/al;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/al;-><init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
return-void
.end method
.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 3
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->a:Z
if-nez v0, :cond_8
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z
if-eqz v0, :cond_19
:cond_8
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;
move-result-object v0
if-eqz v0, :cond_12
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z
if-eqz v0, :cond_19
:cond_12
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
move-result-object p0
:cond_19
return-object p0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/aj;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/aj;->i:Landroid/graphics/Bitmap;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/aj;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->l:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/aj;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->h:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/aj;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/aj;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
return-object v0
.end method
.method private e()V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-boolean v0, v0, Lcom/spotify/mobile/android/service/al;->i:Z
if-eqz v0, :cond_65
const/16 v0, 0x8
:goto_a
or-int/lit8 v3, v0, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-boolean v0, v0, Lcom/spotify/mobile/android/service/al;->j:Z
if-eqz v0, :cond_67
move v0, v2
:goto_13
or-int/2addr v0, v3
iget-object v3, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-boolean v3, v3, Lcom/spotify/mobile/android/service/al;->k:Z
if-eqz v3, :cond_1c
const/16 v1, 0x80
:cond_1c
or-int/2addr v0, v1
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/util/a/c;->b(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/a/c;->a()Lcom/spotify/mobile/android/util/a/d;
move-result-object v0
const/4 v1, 0x7
iget-object v3, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v3, v3, Lcom/spotify/mobile/android/service/al;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/util/a/d;->a(ILjava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v1, v1, Lcom/spotify/mobile/android/service/al;->c:Ljava/lang/String;
invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/util/a/d;->a(ILjava/lang/String;)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v2, v2, Lcom/spotify/mobile/android/service/al;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/a/d;->a(ILjava/lang/String;)V
const/16 v1, 0xd
iget-object v2, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v2, v2, Lcom/spotify/mobile/android/service/al;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/a/d;->a(ILjava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-wide v1, v1, Lcom/spotify/mobile/android/service/al;->f:J
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/a/d;->a(J)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->i:Landroid/graphics/Bitmap;
if-eqz v1, :cond_58
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->i:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/a/d;->a(Landroid/graphics/Bitmap;)V
:cond_58
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/a/d;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget v1, v1, Lcom/spotify/mobile/android/service/al;->h:I
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/a/c;->a(I)V
return-void
:cond_65
move v0, v1
goto :goto_a
:cond_67
move v0, v1
goto :goto_13
.end method
.method static synthetic e(Lcom/spotify/mobile/android/service/aj;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/aj;->e()V
return-void
.end method
.method static synthetic f(Lcom/spotify/mobile/android/service/aj;)Lcom/spotify/mobile/android/service/ak;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->b:Lcom/spotify/mobile/android/service/ak;
return-object v0
.end method
.method private declared-synchronized f()Z
.registers 7
const/4 v0, 0x0
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->m:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v1
if-nez v1, :cond_30
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->g:Lcom/spotify/mobile/android/util/cs;
if-nez v1, :cond_2e
new-instance v1, Lcom/spotify/mobile/android/util/cs;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aj;->c:Landroid/content/Context;
new-instance v3, Lcom/spotify/mobile/android/service/aj$2;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/service/aj$2;-><init>(Lcom/spotify/mobile/android/service/aj;)V
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V
iput-object v1, p0, Lcom/spotify/mobile/android/service/aj;->g:Lcom/spotify/mobile/android/util/cs;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->g:Lcom/spotify/mobile/android/util/cs;
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
const-string v5, "post_to_facebook"
aput-object v5, v3, v4
const/4 v4, 0x0
invoke-virtual {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
:try_end_2e
.catchall {:try_start_2 .. :try_end_2e} :catchall_3a
:goto_2e
:cond_2e
monitor-exit p0
return v0
:cond_30
:try_start_30
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->m:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
:try_end_38
.catchall {:try_start_30 .. :try_end_38} :catchall_3a
move-result v0
goto :goto_2e
:catchall_3a
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/service/aj;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->c:Landroid/content/Context;
return-object v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Lcom/spotify/mobile/android/util/cb;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->o:Lcom/spotify/mobile/android/service/managers/f;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->o:Lcom/spotify/mobile/android/service/managers/f;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/managers/f;->a(Lcom/spotify/mobile/android/service/managers/g;)V
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
const/16 v1, 0x3e9
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
.registers 4
const/16 v1, 0x3e9
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_1b
new-instance v0, Lcom/spotify/mobile/android/service/al;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/al;-><init>(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_1b
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V
.registers 9
const/16 v2, 0x3e9
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_be
new-instance v0, Lcom/spotify/mobile/android/service/al;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/al;-><init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->j:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/aj;->f()Z
move-result v0
if-eqz v0, :cond_be
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->p()Z
move-result v0
if-nez v0, :cond_be
invoke-virtual {p2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;
move-result-object v3
:pswitch_33
:goto_33
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_be
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;
new-instance v4, Landroid/content/Intent;
invoke-direct {v4}, Landroid/content/Intent;-><init>()V
sget-object v5, Lcom/spotify/mobile/android/service/aj$3;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->ordinal()I
move-result v0
aget v0, v5, v0
packed-switch v0, :pswitch_data_c0
:goto_4f
const-string v0, "timeSent"
invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->c:Landroid/content/Context;
invoke-virtual {v0, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
goto :goto_33
:pswitch_5a
const-string v0, "id"
iget-object v5, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/PlaybackListener;->d()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "artist"
iget-object v5, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/PlaybackListener;->g()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "album"
iget-object v5, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/PlaybackListener;->f()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "track"
iget-object v5, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/PlaybackListener;->e()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "length"
iget-object v5, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/PlaybackListener;->k()I
move-result v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v0, "com.spotify.music.metadatachanged"
invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
goto :goto_4f
:pswitch_97
const-string v5, "playing"
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->m()Z
move-result v0
if-nez v0, :cond_b6
const/4 v0, 0x1
:goto_a2
invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "playbackPosition"
iget-object v5, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/PlaybackListener;->l()I
move-result v5
invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v0, "com.spotify.music.playbackstatechanged"
invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
goto :goto_4f
:cond_b6
const/4 v0, 0x0
goto :goto_a2
:pswitch_b8
const-string v0, "com.spotify.music.queuechanged"
invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
goto :goto_4f
:cond_be
return-void
nop
:pswitch_data_c0
.packed-switch 0x1
:pswitch_5a
:pswitch_97
:pswitch_b8
:pswitch_33
.end packed-switch
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->n:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->d:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener;->b(Lcom/spotify/mobile/android/util/cb;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->o:Lcom/spotify/mobile/android/service/managers/f;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->o:Lcom/spotify/mobile/android/service/managers/f;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/managers/f;->b(Lcom/spotify/mobile/android/service/managers/g;)V
:cond_14
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->f:Landroid/media/AudioManager;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/a/c;->a(Landroid/media/AudioManager;)V
return-void
.end method
.method public final d()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->f:Landroid/media/AudioManager;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/a/c;->b(Landroid/media/AudioManager;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 6
const/4 v2, 0x0
const/4 v3, 0x1
iget v0, p1, Landroid/os/Message;->what:I
const/16 v1, 0x3e9
if-ne v0, v1, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v0, v0, Lcom/spotify/mobile/android/service/al;->a:Ljava/lang/String;
if-nez v0, :cond_1f
iput-object v2, p0, Lcom/spotify/mobile/android/service/aj;->h:Landroid/net/Uri;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/a/c;->a()Lcom/spotify/mobile/android/util/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/a/d;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->e:Lcom/spotify/mobile/android/util/a/c;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/util/a/c;->a(I)V
:goto_1e
:cond_1e
return v3
:cond_1f
iget-object v1, p0, Lcom/spotify/mobile/android/service/aj;->l:Ljava/lang/Object;
monitor-enter v1
:try_start_22
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->p:Lcom/spotify/mobile/android/service/al;
iget-object v0, v0, Lcom/spotify/mobile/android/service/al;->g:Landroid/net/Uri;
if-eqz v0, :cond_49
iget-object v2, p0, Lcom/spotify/mobile/android/service/aj;->h:Landroid/net/Uri;
invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_49
iput-object v0, p0, Lcom/spotify/mobile/android/service/aj;->h:Landroid/net/Uri;
const/4 v2, 0x0
iput-object v2, p0, Lcom/spotify/mobile/android/service/aj;->i:Landroid/graphics/Bitmap;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aj;->b:Lcom/spotify/mobile/android/service/ak;
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/service/ak;->a(Landroid/net/Uri;)V
new-instance v2, Lcom/spotify/mobile/android/service/aj$1;
invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/service/aj$1;-><init>(Lcom/spotify/mobile/android/service/aj;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aj;->k:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_44
monitor-exit v1
:try_end_45
.catchall {:try_start_22 .. :try_end_45} :catchall_46
goto :goto_1e
:catchall_46
move-exception v0
monitor-exit v1
throw v0
:try_start_49
:cond_49
invoke-direct {p0}, Lcom/spotify/mobile/android/service/aj;->e()V
:try_end_4c
.catchall {:try_start_49 .. :try_end_4c} :catchall_46
goto :goto_44
.end method