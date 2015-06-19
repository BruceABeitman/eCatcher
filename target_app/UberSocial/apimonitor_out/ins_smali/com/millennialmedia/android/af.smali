.class public Lcom/millennialmedia/android/af;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/millennialmedia/android/ac;
.field private static final n:Ljava/lang/String; = "BridgeMMSpeechkit"
.field private a:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V
const-string v0, "startRecording"
iput-object v0, p0, Lcom/millennialmedia/android/af;->a:Ljava/lang/String;
const-string v0, "endRecording"
iput-object v0, p0, Lcom/millennialmedia/android/af;->d:Ljava/lang/String;
const-string v0, "cacheAudio"
iput-object v0, p0, Lcom/millennialmedia/android/af;->e:Ljava/lang/String;
const-string v0, "getSessionId"
iput-object v0, p0, Lcom/millennialmedia/android/af;->f:Ljava/lang/String;
const-string v0, "playAudio"
iput-object v0, p0, Lcom/millennialmedia/android/af;->g:Ljava/lang/String;
const-string v0, "textToSpeech"
iput-object v0, p0, Lcom/millennialmedia/android/af;->h:Ljava/lang/String;
const-string v0, "stopAudio"
iput-object v0, p0, Lcom/millennialmedia/android/af;->i:Ljava/lang/String;
const-string v0, "sampleBackgroundAudioLevel"
iput-object v0, p0, Lcom/millennialmedia/android/af;->j:Ljava/lang/String;
const-string v0, "releaseVoice"
iput-object v0, p0, Lcom/millennialmedia/android/af;->k:Ljava/lang/String;
const-string v0, "addCustomVoiceWords"
iput-object v0, p0, Lcom/millennialmedia/android/af;->l:Ljava/lang/String;
const-string v0, "deleteCustomVoiceWords"
iput-object v0, p0, Lcom/millennialmedia/android/af;->m:Ljava/lang/String;
return-void
.end method
.method static a(Lcom/millennialmedia/android/cy;)V
.registers 2
invoke-static {}, Lcom/millennialmedia/android/af;->b()Lcom/millennialmedia/android/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/ah;->a()Z
invoke-static {}, Lcom/millennialmedia/android/af;->b()Lcom/millennialmedia/android/ah;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/millennialmedia/android/ah;->a(Lcom/millennialmedia/android/cy;)V
return-void
.end method
.method static a()Z
.registers 1
invoke-static {}, Lcom/millennialmedia/android/af;->b()Lcom/millennialmedia/android/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/ah;->a()Z
move-result v0
return v0
.end method
.method static b()Lcom/millennialmedia/android/ah;
.registers 1
sget-object v0, Lcom/millennialmedia/android/ag;->a:Lcom/millennialmedia/android/ah;
return-object v0
.end method
.method static c()Lcom/millennialmedia/android/cy;
.registers 1
invoke-static {}, Lcom/millennialmedia/android/af;->b()Lcom/millennialmedia/android/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/ah;->b()Lcom/millennialmedia/android/cy;
move-result-object v0
return-object v0
.end method
.method private e()Lcom/millennialmedia/android/cy;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/af;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_3b
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->C()Z
move-result v2
if-eqz v2, :cond_3b
invoke-static {}, Lcom/millennialmedia/android/af;->c()Lcom/millennialmedia/android/cy;
move-result-object v2
if-eqz v2, :cond_1c
invoke-static {}, Lcom/millennialmedia/android/af;->c()Lcom/millennialmedia/android/cy;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v2
if-eqz v2, :cond_3b
new-instance v1, Lcom/millennialmedia/android/cy;
invoke-direct {v1, v0}, Lcom/millennialmedia/android/cy;-><init>(Lcom/millennialmedia/android/cq;)V
invoke-static {v1}, Lcom/millennialmedia/android/af;->a(Lcom/millennialmedia/android/cy;)V
invoke-static {v2}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v0
iget-object v0, v0, Lcom/millennialmedia/android/as;->j:Lcom/millennialmedia/android/au;
if-eqz v0, :cond_39
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/au;Landroid/content/Context;)Z
:cond_39
move-object v0, v1
goto :goto_1b
:cond_3b
move-object v0, v1
goto :goto_1b
.end method
.method private f()Lcom/millennialmedia/android/cy;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/af;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_15
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->E()Z
move-result v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/millennialmedia/android/af;->c()Lcom/millennialmedia/android/cy;
move-result-object v0
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method private g()Lcom/millennialmedia/android/cy;
.registers 2
invoke-static {}, Lcom/millennialmedia/android/af;->c()Lcom/millennialmedia/android/cy;
move-result-object v0
return-object v0
.end method
.method private l(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string v1, "path"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v0, :cond_66
if-eqz v1, :cond_66
invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;
move-result-object v3
if-nez v3, :cond_1d
move-object v0, v2
:goto_1c
return-object v0
:cond_1d
invoke-virtual {v3}, Lcom/millennialmedia/android/aa;->a()Z
move-result v4
if-eqz v4, :cond_2a
const-string v0, "Audio already playing."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_1c
:cond_2a
const-string v4, "http"
invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_47
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const-string v0, "repeat"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/aa;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_1c
:cond_47
invoke-static {v0, v1}, Lcom/millennialmedia/android/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_66
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
const-string v0, "repeat"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {v3, v1, v0}, Lcom/millennialmedia/android/aa;->a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_1c
:cond_66
move-object v0, v2
goto :goto_1c
.end method
.method  a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/android/af;->a:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_d
:goto_d
return-object v0
:cond_e
iget-object v1, p0, Lcom/millennialmedia/android/af;->d:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_1b
iget-object v1, p0, Lcom/millennialmedia/android/af;->e:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_28
iget-object v1, p0, Lcom/millennialmedia/android/af;->f:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_35
iget-object v1, p0, Lcom/millennialmedia/android/af;->g:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_42
iget-object v1, p0, Lcom/millennialmedia/android/af;->h:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_4f
iget-object v1, p0, Lcom/millennialmedia/android/af;->i:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5c
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_5c
iget-object v1, p0, Lcom/millennialmedia/android/af;->j:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_69
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_69
iget-object v1, p0, Lcom/millennialmedia/android/af;->k:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_76
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->i(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_76
iget-object v1, p0, Lcom/millennialmedia/android/af;->l:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_83
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->j(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_83
iget-object v1, p0, Lcom/millennialmedia/android/af;->m:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/af;->k(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto/16 :goto_d
.end method
.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
invoke-direct {p0}, Lcom/millennialmedia/android/af;->e()Lcom/millennialmedia/android/cy;
move-result-object v1
if-nez v1, :cond_d
const-string v0, "Unable to create speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-string v0, "language"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_1d
const-string v0, "en_GB"
:cond_1d
invoke-virtual {v1, v0}, Lcom/millennialmedia/android/cy;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_28
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
:cond_28
const-string v0, "Failed in speechKit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
.end method
.method public a(I)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "javascript:MMJS.sdk.audioPositionChange("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/af;->a(Ljava/lang/String;)V
return-void
.end method
.method  a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/af;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_d
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/af;->f()Lcom/millennialmedia/android/cy;
move-result-object v1
if-nez v1, :cond_d
const-string v0, "Unable to get speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
monitor-enter v1
:try_start_e
invoke-virtual {v1}, Lcom/millennialmedia/android/cy;->g()Z
move-result v0
if-eqz v0, :cond_1d
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
monitor-exit v1
goto :goto_c
:catchall_1a
move-exception v0
monitor-exit v1
:try_end_1c
.catchall {:try_start_e .. :try_end_1c} :catchall_1a
throw v0
:try_start_1d
:cond_1d
monitor-exit v1
:try_end_1e
.catchall {:try_start_1d .. :try_end_1e} :catchall_1a
const-string v0, "Failed in speechKit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
.end method
.method public c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const-string v0, "url"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_15
const-string v0, "Invalid url"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_14
return-object v0
:cond_15
iget-object v1, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_52
iget-object v1, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-eqz v1, :cond_52
const-string v2, "/"
invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2, v1}, Lcom/millennialmedia/android/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_52
const-string v1, "javascript:MMJS.sdk.audioCached()"
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/af;->a(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Successfully cached audio at "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_14
:cond_52
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to cache audio at"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_14
.end method
.method public d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/af;->f()Lcom/millennialmedia/android/cy;
move-result-object v0
if-nez v0, :cond_d
const-string v0, "No SpeechKit session open."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->n()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1c
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
:cond_1c
const-string v0, "No SpeechKit session open."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
.end method
.method public e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
invoke-direct {p0}, Lcom/millennialmedia/android/af;->e()Lcom/millennialmedia/android/cy;
move-result-object v0
if-nez v0, :cond_d
const-string v0, "Unable to create speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_c
:goto_c
return-object v0
:cond_d
const-string v0, "url"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_22
const-string v0, "Invalid url"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
:cond_22
const-string v0, "url"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_5c
iget-object v1, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
if-eqz v1, :cond_5c
invoke-static {v1}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;
move-result-object v1
if-eqz v1, :cond_46
invoke-virtual {v1, p0}, Lcom/millennialmedia/android/aa;->a(Landroid/media/MediaPlayer$OnCompletionListener;)Z
invoke-virtual {v1, p0}, Lcom/millennialmedia/android/aa;->a(Lcom/millennialmedia/android/ac;)Z
:cond_46
const-string v1, "path"
invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/millennialmedia/android/af;->l(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
if-eqz v0, :cond_c
iget v1, v0, Lcom/millennialmedia/android/cg;->c:I
const/4 v2, 0x1
if-ne v1, v2, :cond_c
const-string v1, "javascript:MMJS.sdk.audioStarted()"
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/af;->a(Ljava/lang/String;)V
goto :goto_c
:cond_5c
const/4 v0, 0x0
goto :goto_c
.end method
.method public f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 6
const-string v0, "BridgeMMSpeechkit"
const-string v1, "@@-Calling textToSpeech"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/millennialmedia/android/af;->e()Lcom/millennialmedia/android/cy;
move-result-object v2
if-nez v2, :cond_14
const-string v0, "Unable to create speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_13
return-object v0
:cond_14
const-string v0, "language"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "text"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_2c
const-string v0, "en_GB"
:cond_2c
invoke-virtual {v2}, Lcom/millennialmedia/android/cy;->k()V
invoke-virtual {v2, v1, v0}, Lcom/millennialmedia/android/cy;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3a
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_13
:cond_3a
const-string v0, "Failed in speechKit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_13
.end method
.method public g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
invoke-direct {p0}, Lcom/millennialmedia/android/af;->f()Lcom/millennialmedia/android/cy;
move-result-object v0
if-nez v0, :cond_d
const-string v0, "Unable to get speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->k()V
iget-object v0, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;
move-result-object v0
if-eqz v0, :cond_27
invoke-virtual {v0}, Lcom/millennialmedia/android/aa;->b()Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
:cond_27
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
.end method
.method public h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
invoke-direct {p0}, Lcom/millennialmedia/android/af;->e()Lcom/millennialmedia/android/cy;
move-result-object v0
if-nez v0, :cond_d
const-string v0, "Unable to create speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->i()V
const/4 v0, 0x0
goto :goto_c
.end method
.method public i(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
invoke-static {}, Lcom/millennialmedia/android/af;->a()Z
move-result v0
if-eqz v0, :cond_d
const-string v0, "Unable to get speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-string v0, "released speechkit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
.end method
.method public j(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 6
invoke-direct {p0}, Lcom/millennialmedia/android/af;->e()Lcom/millennialmedia/android/cy;
move-result-object v1
if-nez v1, :cond_d
const-string v0, "Unable to create speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-string v0, "words"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_43
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/millennialmedia/android/da;->a:Lcom/millennialmedia/android/da;
invoke-virtual {v1, v3, v2}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/da;[Ljava/lang/String;)V
const-string v1, "javascript:MMJS.sdk.customVoiceWordsAdded()"
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/af;->a(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Added "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
:cond_43
const/4 v0, 0x0
goto :goto_c
.end method
.method public k(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 6
invoke-direct {p0}, Lcom/millennialmedia/android/af;->e()Lcom/millennialmedia/android/cy;
move-result-object v1
if-nez v1, :cond_d
const-string v0, "Unable to create speech kit"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-string v0, "words"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_43
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/millennialmedia/android/da;->b:Lcom/millennialmedia/android/da;
invoke-virtual {v1, v3, v2}, Lcom/millennialmedia/android/cy;->a(Lcom/millennialmedia/android/da;[Ljava/lang/String;)V
const-string v1, "javascript:MMJS.sdk.customVoiceWordsDeleted()"
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/af;->a(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Deleted "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_c
:cond_43
const/4 v0, 0x0
goto :goto_c
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 3
const-string v0, "javascript:MMJS.sdk.audioCompleted()"
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/af;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/af;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_1b
invoke-static {v0}, Lcom/millennialmedia/android/aa;->a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0, p0}, Lcom/millennialmedia/android/aa;->b(Landroid/media/MediaPlayer$OnCompletionListener;)Z
invoke-virtual {v0, p0}, Lcom/millennialmedia/android/aa;->b(Lcom/millennialmedia/android/ac;)Z
:cond_1b
return-void
.end method