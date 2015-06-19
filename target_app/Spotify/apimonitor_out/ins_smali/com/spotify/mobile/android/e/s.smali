.class public final Lcom/spotify/mobile/android/e/s;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/e/l;
.field private final b:Lcom/spotify/mobile/android/e/l;
.field private c:Landroid/os/Handler;
.field private d:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;)V
.registers 4
const-string v0, "WakeState"
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/e/s;->c:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/e/s$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/s$1;-><init>(Lcom/spotify/mobile/android/e/s;)V
iput-object v0, p0, Lcom/spotify/mobile/android/e/s;->d:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/spotify/mobile/android/e/s;->a:Lcom/spotify/mobile/android/e/l;
iput-object p2, p0, Lcom/spotify/mobile/android/e/s;->b:Lcom/spotify/mobile/android/e/l;
new-instance v0, Lcom/spotify/mobile/android/e/s$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/s$2;-><init>(Lcom/spotify/mobile/android/e/s;)V
invoke-virtual {p1, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/e/l;->a(Lcom/spotify/mobile/android/e/o;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/e/s;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/e/s;->c:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/e/s;->d:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/e/s;)Lcom/spotify/mobile/android/e/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/s;->a:Lcom/spotify/mobile/android/e/l;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/e/s;)Lcom/spotify/mobile/android/e/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/e/s;->b:Lcom/spotify/mobile/android/e/l;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/e/s;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/e/s;->c:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/e/s;->d:Ljava/lang/Runnable;
const-wide/32 v2, 0x1d4c0
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method