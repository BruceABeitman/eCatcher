.class final Lcom/spotify/mobile/android/service/aj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/ct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/aj;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/aj;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/aj$2;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
    .registers 7

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "Could not load broadcast preference"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/spotify/mobile/android/service/aj$2;->a:Lcom/spotify/mobile/android/service/aj;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/aj$2;->a:Lcom/spotify/mobile/android/service/aj;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/aj;->g(Lcom/spotify/mobile/android/service/aj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/service/aj;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v3, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2c

    goto :goto_b

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
