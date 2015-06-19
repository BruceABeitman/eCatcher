.class final Lcom/spotify/mobile/android/service/al;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Ljava/lang/String;
.field final b:Ljava/lang/String;
.field final c:Ljava/lang/String;
.field final d:Ljava/lang/String;
.field final e:Ljava/lang/String;
.field final f:J
.field final g:Landroid/net/Uri;
.field final h:I
.field final i:Z
.field final j:Z
.field final k:Z
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->a:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->b:Ljava/lang/String;
iput-object v1, p0, Lcom/spotify/mobile/android/service/al;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->d:Ljava/lang/String;
iput-object v1, p0, Lcom/spotify/mobile/android/service/al;->e:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/service/al;->f:J
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->g:Landroid/net/Uri;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/al;->i:Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/al;->j:Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/al;->k:Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h()Z
move-result v0
if-eqz v0, :cond_43
const/4 v0, 0x2
:goto_40
iput v0, p0, Lcom/spotify/mobile/android/service/al;->h:I
return-void
:cond_43
const/4 v0, 0x3
goto :goto_40
.end method
.method constructor <init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->d()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->a:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->b:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->f()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->d:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->e:Ljava/lang/String;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->k()I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/spotify/mobile/android/service/al;->f:J
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->i()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/al;->g:Landroid/net/Uri;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->p()Z
move-result v0
if-nez v0, :cond_4d
const/4 v0, 0x1
:goto_35
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/al;->i:Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->n()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/al;->j:Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->o()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/al;->k:Z
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/PlaybackListener;->m()Z
move-result v0
if-eqz v0, :cond_4f
const/4 v0, 0x2
:goto_4a
iput v0, p0, Lcom/spotify/mobile/android/service/al;->h:I
return-void
:cond_4d
const/4 v0, 0x0
goto :goto_35
:cond_4f
const/4 v0, 0x3
goto :goto_4a
.end method