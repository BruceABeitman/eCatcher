.class public final Lcom/spotify/mobile/android/service/aq;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.implements Lcom/spotify/mobile/android/util/cb;
.field private a:Landroid/app/Service;
.field private b:Lcom/spotify/mobile/android/util/PlaybackListener;
.field private c:Landroid/net/Uri;
.field private d:Landroid/graphics/Bitmap;
.field private e:Landroid/os/Handler;
.field private f:Landroid/os/Handler;
.field private g:Landroid/content/Intent;
.field private h:Lcom/spotify/mobile/android/service/ar;
.field private final i:Ljava/lang/Object;
.field private j:Lcom/spotify/mobile/android/ui/d/a;
.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;
.method public constructor <init>(Landroid/app/Service;Lcom/spotify/mobile/android/util/PlaybackListener;Landroid/os/HandlerThread;Lcom/spotify/mobile/android/ui/d/a;)V
.registers 9
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->f:Landroid/os/Handler;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->i:Ljava/lang/Object;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p4, p0, Lcom/spotify/mobile/android/service/aq;->j:Lcom/spotify/mobile/android/ui/d/a;
new-instance v0, Landroid/os/Handler;
invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->e:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/service/ar;
invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/service/ar;-><init>(Lcom/spotify/mobile/android/service/aq;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->h:Lcom/spotify/mobile/android/service/ar;
iput-object p1, p0, Lcom/spotify/mobile/android/service/aq;->a:Landroid/app/Service;
iput-object p2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
new-instance v0, Landroid/content/Intent;
const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
new-instance v1, Landroid/content/ComponentName;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->a:Landroid/app/Service;
const-class v3, Lcom/spotify/music/spotlets/widget/SpotifyWidget;
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/aq;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/aq;->d:Landroid/graphics/Bitmap;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/aq;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->i:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/aq;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->c:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/aq;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/aq;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->e:Landroid/os/Handler;
return-object v0
.end method
.method private d()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "track_uri"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "track_name"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "artist_name"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "album_name"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "paused"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->m()Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->d:Landroid/graphics/Bitmap;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "cover"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->d:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "is_prev_enabled"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->n()Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "is_next_enabled"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->o()Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "is_ad_playing"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->p()Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
const-string v1, "is_suggested_track"
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/PlaybackListener;->r()Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->j:Lcom/spotify/mobile/android/ui/d/a;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aq;->a:Landroid/app/Service;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->g:Landroid/content/Intent;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/ui/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/service/aq;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/aq;->d()V
return-void
.end method
.method static synthetic f(Lcom/spotify/mobile/android/service/aq;)Lcom/spotify/mobile/android/service/ar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->h:Lcom/spotify/mobile/android/service/ar;
return-object v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Lcom/spotify/mobile/android/util/cb;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V
.registers 5
const/16 v1, 0x3e9
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->e:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->e:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_14
return-void
.end method
.method public final b()V
.registers 7
const/4 v5, 0x0
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener;->b(Lcom/spotify/mobile/android/util/cb;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
new-instance v1, Landroid/content/ComponentName;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->a:Landroid/app/Service;
const-class v3, Lcom/spotify/music/spotlets/widget/SpotifyWidget;
invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
const-string v1, "track_uri"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "track_name"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "artist_name"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "album_name"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "paused"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "cover"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v1, "is_prev_enabled"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "is_next_enabled"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "is_ad_playing"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "is_suggested_track"
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/aq;->j:Lcom/spotify/mobile/android/ui/d/a;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->a:Landroid/app/Service;
invoke-interface {v1, v2, v0}, Lcom/spotify/mobile/android/ui/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method public final c()V
.registers 3
const/16 v1, 0x3e9
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->e:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->e:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_14
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)Z
.registers 5
iget v0, p1, Landroid/os/Message;->what:I
const/16 v1, 0x3e9
if-ne v0, v1, :cond_2e
iget-object v1, p0, Lcom/spotify/mobile/android/service/aq;->i:Ljava/lang/Object;
monitor-enter v1
:try_start_9
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->b:Lcom/spotify/mobile/android/util/PlaybackListener;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->h()Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_30
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->c:Landroid/net/Uri;
invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_30
iput-object v0, p0, Lcom/spotify/mobile/android/service/aq;->c:Landroid/net/Uri;
const/4 v2, 0x0
iput-object v2, p0, Lcom/spotify/mobile/android/service/aq;->d:Landroid/graphics/Bitmap;
iget-object v2, p0, Lcom/spotify/mobile/android/service/aq;->h:Lcom/spotify/mobile/android/service/ar;
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/service/ar;->a(Landroid/net/Uri;)V
new-instance v2, Lcom/spotify/mobile/android/service/aq$1;
invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/service/aq$1;-><init>(Lcom/spotify/mobile/android/service/aq;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/aq;->f:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_2d
monitor-exit v1
:cond_2e
const/4 v0, 0x1
return v0
:cond_30
invoke-direct {p0}, Lcom/spotify/mobile/android/service/aq;->d()V
:try_end_33
.catchall {:try_start_9 .. :try_end_33} :catchall_34
goto :goto_2d
:catchall_34
move-exception v0
monitor-exit v1
throw v0
.end method