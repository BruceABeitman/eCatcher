.class final Lcom/google/android/youtube/player/internal/p$a;
.super Lcom/google/android/youtube/player/internal/j$a;
.field final synthetic a:Lcom/google/android/youtube/player/internal/p;
.method private constructor <init>(Lcom/google/android/youtube/player/internal/p;)V
.registers 2
iput-object p1, p0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/j$a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/youtube/player/internal/p;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/youtube/player/internal/p$a;-><init>(Lcom/google/android/youtube/player/internal/p;)V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
.registers 12
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;
invoke-static {v0}, Lcom/google/android/youtube/player/internal/p;->a(Lcom/google/android/youtube/player/internal/p;)Landroid/os/Handler;
move-result-object v6
new-instance v0, Lcom/google/android/youtube/player/internal/p$a$1;
move-object v1, p0
move v2, p3
move v3, p4
move-object v4, p1
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/player/internal/p$a$1;-><init>(Lcom/google/android/youtube/player/internal/p$a;ZZLandroid/graphics/Bitmap;Ljava/lang/String;)V
invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final a(Ljava/lang/String;ZZ)V
.registers 6
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p$a;->a:Lcom/google/android/youtube/player/internal/p;
invoke-static {v0}, Lcom/google/android/youtube/player/internal/p;->a(Lcom/google/android/youtube/player/internal/p;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/google/android/youtube/player/internal/p$a$2;
invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/youtube/player/internal/p$a$2;-><init>(Lcom/google/android/youtube/player/internal/p$a;ZZLjava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method