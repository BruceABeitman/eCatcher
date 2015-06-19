.class public Lcom/spotify/mobile/android/util/cv;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private a:J
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/spotify/mobile/android/util/cv;
const-class v1, Lcom/spotify/mobile/android/util/ak;
new-instance v2, Lcom/spotify/mobile/android/util/ak;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/ak;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/high16 v0, -0x8000
iput-wide v0, p0, Lcom/spotify/mobile/android/util/cv;->a:J
return-void
.end method
.method public final a(Ljava/lang/Throwable;)V
.registers 9
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iget-wide v3, p0, Lcom/spotify/mobile/android/util/cv;->a:J
const-wide/16 v5, 0x7530
add-long/2addr v3, v5
cmp-long v0, v1, v3
if-lez v0, :cond_1a
const-class v0, Lcom/spotify/mobile/android/util/dc;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lnet/hockeyapp/android/c;
invoke-static {p1, v0}, Lnet/hockeyapp/android/d;->a(Ljava/lang/Throwable;Lnet/hockeyapp/android/c;)V
iput-wide v1, p0, Lcom/spotify/mobile/android/util/cv;->a:J
:cond_1a
return-void
.end method