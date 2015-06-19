.class final Lcom/spotify/mobile/android/service/ar;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/ai;
.field final synthetic a:Lcom/spotify/mobile/android/service/aq;
.field private b:Landroid/net/Uri;
.method private constructor <init>(Lcom/spotify/mobile/android/service/aq;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/aq;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/ar;-><init>(Lcom/spotify/mobile/android/service/aq;)V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0}, Lcom/spotify/mobile/android/service/aq;->a(Lcom/spotify/mobile/android/service/aq;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->b:Landroid/net/Uri;
iget-object v2, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v2}, Lcom/spotify/mobile/android/service/aq;->b(Lcom/spotify/mobile/android/service/aq;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/aq;->a(Lcom/spotify/mobile/android/service/aq;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
:goto_1a
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0}, Lcom/spotify/mobile/android/service/aq;->e(Lcom/spotify/mobile/android/service/aq;)V
monitor-exit v1
return-void
:cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/aq;->a(Lcom/spotify/mobile/android/service/aq;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0}, Lcom/spotify/mobile/android/service/aq;->c(Lcom/spotify/mobile/android/service/aq;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0}, Lcom/spotify/mobile/android/service/aq;->d(Lcom/spotify/mobile/android/service/aq;)Landroid/os/Handler;
move-result-object v0
const/16 v2, 0x3e9
invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:try_end_3e
.catchall {:try_start_7 .. :try_end_3e} :catchall_3f
goto :goto_1a
:catchall_3f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0}, Lcom/spotify/mobile/android/service/aq;->a(Lcom/spotify/mobile/android/service/aq;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->a:Lcom/spotify/mobile/android/service/aq;
invoke-static {v0}, Lcom/spotify/mobile/android/service/aq;->e(Lcom/spotify/mobile/android/service/aq;)V
monitor-exit v1
:try_end_d
.catchall {:try_start_7 .. :try_end_d} :catchall_e
return-void
:catchall_e
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Landroid/net/Uri;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/ar;->b:Landroid/net/Uri;
return-void
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 2
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-eqz p1, :cond_10
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_12
:cond_10
const/4 v0, 0x0
goto :goto_3
:cond_12
check-cast p1, Lcom/spotify/mobile/android/service/ar;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->b:Landroid/net/Uri;
iget-object v1, p1, Lcom/spotify/mobile/android/service/ar;->b:Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ar;->b:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I
move-result v0
return v0
.end method