.class final Lcom/spotify/music/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/spotify/mobile/android/util/ak;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;Lcom/spotify/mobile/android/util/ak;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/music/internal/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lcom/spotify/music/internal/a/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/music/internal/a/c;->c:Lcom/spotify/mobile/android/util/ak;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/music/internal/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    move-object v0, p2

    :goto_7
    if-eqz v0, :cond_12

    instance-of v2, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_21

    new-instance p2, Ljava/lang/OutOfMemoryError;

    invoke-direct {p2}, Ljava/lang/OutOfMemoryError;-><init>()V

    :cond_12
    iget-object v0, p0, Lcom/spotify/music/internal/a/c;->c:Lcom/spotify/mobile/android/util/ak;

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ak;->a(Lcom/spotify/mobile/android/util/cx;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/spotify/music/internal/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/music/internal/a/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_20
    return-void

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_7
.end method
