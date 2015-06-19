.class  Lcom/millennialmedia/android/dm;
.super Lcom/millennialmedia/android/c;
.source "SourceFile"
.field  a:Z
.field private b:Ljava/lang/ref/WeakReference;
.field private f:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/android/VideoAd;)V
.registers 4
invoke-direct {p0}, Lcom/millennialmedia/android/c;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/android/dm;->a:Z
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/dm;->b:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/dm;->f:Ljava/lang/ref/WeakReference;
return-void
.end method
.method  a()V
.registers 2
iget-boolean v0, p0, Lcom/millennialmedia/android/dm;->a:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/millennialmedia/android/dm;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_11
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/dm;->a(Landroid/content/Context;)V
:cond_11
invoke-super {p0}, Lcom/millennialmedia/android/c;->a()V
return-void
.end method
.method  a(Landroid/content/Context;)V
.registers 7
iget-object v0, p0, Lcom/millennialmedia/android/dm;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_3c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "video.dat"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1}, Lcom/millennialmedia/android/a;->j(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
const-string v1, "VideoAd"
const-string v2, "VideoAd video file %s was deleted."
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_3c
return-void
.end method
.method  a(Lcom/millennialmedia/android/ai;)Z
.registers 4
if-eqz p1, :cond_24
instance-of v0, p1, Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_24
move-object v0, p1
check-cast v0, Lcom/millennialmedia/android/VideoAd;
iget-object v1, p0, Lcom/millennialmedia/android/dm;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/millennialmedia/android/VideoAd;
if-eqz v1, :cond_24
invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Lcom/millennialmedia/android/VideoAd;->a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/dm;->a:Z
:cond_24
invoke-super {p0, p1}, Lcom/millennialmedia/android/c;->a(Lcom/millennialmedia/android/ai;)Z
move-result v0
return v0
.end method