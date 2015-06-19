.class final Lcom/spotify/mobile/android/service/player/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/player/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/player/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/player/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/player/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/Optional;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/service/player/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/google/common/base/Optional;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/b;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/service/player/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/spotify/mobile/android/service/player/model/b;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/player/model/d;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/service/player/a/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/player/a/g;->a(Lcom/spotify/mobile/android/service/player/model/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;I)I

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->b(Lcom/spotify/mobile/android/service/player/a/a;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v3}, Lcom/spotify/mobile/android/service/player/a/a;->c(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->p()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->b(Lcom/spotify/mobile/android/service/player/a/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/player/a/a;->b(Lcom/spotify/mobile/android/service/player/a/a;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/service/player/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->b(Lcom/spotify/mobile/android/service/player/a/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/player/a/g;->a(I)V

    :cond_4e
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->e(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->d(Lcom/spotify/mobile/android/service/player/a/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->a()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->c(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/service/player/a/a;->a(Lcom/spotify/mobile/android/service/player/a/a;J)J

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/player/a/a;->e(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/player/a/a;->d(Lcom/spotify/mobile/android/service/player/a/a;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/player/a/a$1;->a:Lcom/spotify/mobile/android/service/player/a/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/player/a/a;->b(Lcom/spotify/mobile/android/service/player/a/a;)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    rsub-int v2, v2, 0x3e8

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;II)V

    :cond_8c
    return-void
.end method
