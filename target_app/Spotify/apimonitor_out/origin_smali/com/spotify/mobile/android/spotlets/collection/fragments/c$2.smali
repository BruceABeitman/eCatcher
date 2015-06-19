.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/follow/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Lcom/spotify/mobile/android/spotlets/follow/a;)Lcom/spotify/mobile/android/spotlets/follow/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/follow/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z

    move-result v3

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/spotify/mobile/android/spotlets/follow/a;-><init>(Ljava/lang/String;IIZ)V

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Lcom/spotify/mobile/android/spotlets/follow/a;)Lcom/spotify/mobile/android/spotlets/follow/a;

    :goto_31
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V

    return-void

    :cond_3f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/follow/a;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/follow/a;->b(I)V

    goto :goto_31
.end method

.method public final a(Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "Failed to get followed count for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
