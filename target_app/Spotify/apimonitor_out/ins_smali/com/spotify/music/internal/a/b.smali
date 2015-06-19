.class public final Lcom/spotify/music/internal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Ljava/lang/String;
.field private final c:Lcom/spotify/music/internal/a/a;
.field private final d:Lcom/spotify/mobile/android/util/ak;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/spotify/music/internal/a/a;
invoke-direct {v0}, Lcom/spotify/music/internal/a/a;-><init>()V
new-instance v1, Lcom/spotify/mobile/android/util/ak;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/ak;-><init>()V
invoke-direct {p0, p1, p2, v0, v1}, Lcom/spotify/music/internal/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/music/internal/a/a;Lcom/spotify/mobile/android/util/ak;)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/music/internal/a/a;Lcom/spotify/mobile/android/util/ak;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/spotify/music/internal/a/b;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/music/internal/a/b;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/music/internal/a/b;->c:Lcom/spotify/music/internal/a/a;
iput-object p4, p0, Lcom/spotify/music/internal/a/b;->d:Lcom/spotify/mobile/android/util/ak;
return-void
.end method
.method static synthetic a(Lcom/spotify/music/internal/a/b;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/music/internal/a/b;->a:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/music/internal/a/b;)Lcom/spotify/music/internal/a/a;
.registers 2
iget-object v0, p0, Lcom/spotify/music/internal/a/b;->c:Lcom/spotify/music/internal/a/a;
return-object v0
.end method
.method public final a()V
.registers 5
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
instance-of v1, v0, Lcom/spotify/music/internal/a/c;
if-nez v1, :cond_1a
iget-object v1, p0, Lcom/spotify/music/internal/a/b;->c:Lcom/spotify/music/internal/a/a;
instance-of v1, v0, Lnet/hockeyapp/android/d;
if-nez v1, :cond_1a
new-instance v1, Lcom/spotify/music/internal/a/c;
iget-object v2, p0, Lcom/spotify/music/internal/a/b;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/spotify/music/internal/a/b;->d:Lcom/spotify/mobile/android/util/ak;
invoke-direct {v1, v0, v2, v3}, Lcom/spotify/music/internal/a/c;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;Lcom/spotify/mobile/android/util/ak;)V
invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
:cond_1a
iget-object v0, p0, Lcom/spotify/music/internal/a/b;->c:Lcom/spotify/music/internal/a/a;
iget-object v0, p0, Lcom/spotify/music/internal/a/b;->c:Lcom/spotify/music/internal/a/a;
iget-object v1, p0, Lcom/spotify/music/internal/a/b;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/music/internal/a/b;->b:Ljava/lang/String;
const-class v0, Lcom/spotify/mobile/android/util/dc;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lnet/hockeyapp/android/c;
invoke-static {v1, v2, v0}, Lnet/hockeyapp/android/b;->a(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/c;)V
return-void
.end method
.method public final b()Ljava/lang/Thread;
.registers 2
iget-object v0, p0, Lcom/spotify/music/internal/a/b;->c:Lcom/spotify/music/internal/a/a;
new-instance v0, Lcom/spotify/music/internal/a/b$1;
invoke-direct {v0, p0}, Lcom/spotify/music/internal/a/b$1;-><init>(Lcom/spotify/music/internal/a/b;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-object v0
.end method