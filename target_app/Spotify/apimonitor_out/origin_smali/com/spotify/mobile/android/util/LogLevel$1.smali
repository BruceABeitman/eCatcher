.class final enum Lcom/spotify/mobile/android/util/LogLevel$1;
.super Lcom/spotify/mobile/android/util/LogLevel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/util/LogLevel;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/spotify/mobile/android/util/LogLevel;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/util/LogLevel;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/LogLevel$1;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "Spotify"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/LogLevel$1;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "Spotify"

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/util/LogLevel;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/LogLevel$1;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "Spotify"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/LogLevel$1;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "Spotify"

    invoke-static {v1, v0, p3}, Lcom/spotify/mobile/android/util/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    return-void
.end method
