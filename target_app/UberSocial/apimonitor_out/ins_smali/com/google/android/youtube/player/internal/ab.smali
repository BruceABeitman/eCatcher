.class public abstract Lcom/google/android/youtube/player/internal/ab;
.super Ljava/lang/Object;
.field private static final a:Lcom/google/android/youtube/player/internal/ab;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/google/android/youtube/player/internal/ab;->b()Lcom/google/android/youtube/player/internal/ab;
move-result-object v0
sput-object v0, Lcom/google/android/youtube/player/internal/ab;->a:Lcom/google/android/youtube/player/internal/ab;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/google/android/youtube/player/internal/ab;
.registers 1
sget-object v0, Lcom/google/android/youtube/player/internal/ab;->a:Lcom/google/android/youtube/player/internal/ab;
return-object v0
.end method
.method private static b()Lcom/google/android/youtube/player/internal/ab;
.registers 2
:try_start_0
const-string v0, "com.google.android.youtube.api.locallylinked.LocallyLinkedFactory"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/google/android/youtube/player/internal/ab;
invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
:try_end_b
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_1a
move-result-object v0
:try_start_c
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/internal/ab;
:goto_12
:try_end_12
.catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_12} :catch_13
.catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_12} :catch_21
.catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_12} :catch_1a
return-object v0
:catch_13
move-exception v0
:try_start_14
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:try_end_1a
.catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_1a} :catch_1a
:catch_1a
move-exception v0
new-instance v0, Lcom/google/android/youtube/player/internal/ad;
invoke-direct {v0}, Lcom/google/android/youtube/player/internal/ad;-><init>()V
goto :goto_12
:catch_21
move-exception v0
:try_start_22
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:try_end_28
.catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_28} :catch_1a
.end method
.method public abstract a(Lcom/google/android/youtube/player/internal/b;Lcom/google/android/youtube/player/YouTubeThumbnailView;)Lcom/google/android/youtube/player/YouTubeThumbnailLoader;
.end method
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/player/internal/t$a;Lcom/google/android/youtube/player/internal/t$b;)Lcom/google/android/youtube/player/internal/b;
.end method
.method public abstract a(Landroid/app/Activity;Lcom/google/android/youtube/player/internal/b;)Lcom/google/android/youtube/player/internal/d;
.end method