.class public final Lcom/google/android/gms/internal/ca;
.super Landroid/widget/FrameLayout;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.field private final a:Lcom/google/android/gms/internal/er;
.field private final b:Landroid/widget/MediaController;
.field private final c:Lcom/google/android/gms/internal/cd;
.field private final d:Landroid/widget/VideoView;
.field private e:J
.field private f:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/er;)V
.registers 6
const/4 v2, -0x1
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/google/android/gms/internal/ca;->a:Lcom/google/android/gms/internal/er;
new-instance v0, Landroid/widget/VideoView;
invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
const/16 v1, 0x11
invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ca;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/MediaController;
invoke-direct {v0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ca;->b:Landroid/widget/MediaController;
new-instance v0, Lcom/google/android/gms/internal/cd;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cd;-><init>(Lcom/google/android/gms/internal/ca;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ca;->c:Lcom/google/android/gms/internal/cd;
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->c:Lcom/google/android/gms/internal/cd;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->b()V
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
return-void
.end method
.method public static a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
if-nez p2, :cond_1d
const/4 v0, 0x1
:goto_3
new-instance v2, Ljava/util/HashMap;
if-eqz v0, :cond_1f
const/4 v1, 0x2
:goto_8
invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V
const-string v1, "what"
invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez v0, :cond_17
const-string v0, "extra"
invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
const-string v0, "error"
invoke-static {p0, v0, v2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/util/Map;)V
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_3
:cond_1f
const/4 v1, 0x3
goto :goto_8
.end method
.method private static a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/util/HashMap;
const/4 v1, 0x2
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method private static a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/util/Map;)V
.registers 4
const-string v0, "event"
invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "onVideoEvent"
invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/er;->a(Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->c:Lcom/google/android/gms/internal/cd;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cd;->a()V
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V
return-void
.end method
.method public final a(Landroid/view/MotionEvent;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0, p1}, Landroid/widget/VideoView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ca;->f:Ljava/lang/String;
return-void
.end method
.method public final a(Z)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->b:Landroid/widget/MediaController;
invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->b:Landroid/widget/MediaController;
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V
goto :goto_9
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->a:Lcom/google/android/gms/internal/er;
const-string v1, "no_src"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
return-void
.end method
.method public final e()V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I
move-result v0
int-to-long v0, v0
iget-wide v2, p0, Lcom/google/android/gms/internal/ca;->e:J
cmp-long v2, v2, v0
if-eqz v2, :cond_20
long-to-float v2, v0
const/high16 v3, 0x447a
div-float/2addr v2, v3
iget-object v3, p0, Lcom/google/android/gms/internal/ca;->a:Lcom/google/android/gms/internal/er;
const-string v4, "timeupdate"
const-string v5, "time"
invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v2
invoke-static {v3, v4, v5, v2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-wide v0, p0, Lcom/google/android/gms/internal/ca;->e:J
:cond_20
return-void
.end method
.method public final onCompletion(Landroid/media/MediaPlayer;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->a:Lcom/google/android/gms/internal/er;
const-string v1, "ended"
new-instance v2, Ljava/util/HashMap;
const/4 v3, 0x1
invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/util/Map;)V
return-void
.end method
.method public final onError(Landroid/media/MediaPlayer;II)Z
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->a:Lcom/google/android/gms/internal/er;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
return v0
.end method
.method public final onPrepared(Landroid/media/MediaPlayer;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/ca;->d:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I
move-result v0
int-to-float v0, v0
const/high16 v1, 0x447a
div-float/2addr v0, v1
iget-object v1, p0, Lcom/google/android/gms/internal/ca;->a:Lcom/google/android/gms/internal/er;
const-string v2, "canplaythrough"
const-string v3, "duration"
invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/er;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method