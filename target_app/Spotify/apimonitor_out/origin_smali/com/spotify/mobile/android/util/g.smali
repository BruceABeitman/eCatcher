.class public final Lcom/spotify/mobile/android/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/g;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/g;->c:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/g;)V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "Erasing offline user and logging out"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->c:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->eraseOfflineUser()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->c:Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;

    invoke-interface {v0, v2}, Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;->logout(Z)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/g;Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Set offline mode: %s"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "offline_mode"

    if-eqz p1, :cond_2c

    :goto_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_2c
    move v0, v1

    goto :goto_19
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->a:Landroid/content/Context;

    const v1, 0x7f0f03d1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/util/g$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/g$1;-><init>(Lcom/spotify/mobile/android/util/g;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/util/g$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/g$2;-><init>(Lcom/spotify/mobile/android/util/g;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/g;->b:Landroid/os/Handler;

    new-instance v1, Lcom/spotify/mobile/android/util/g$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/util/g$3;-><init>(Lcom/spotify/mobile/android/util/g;)V

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
