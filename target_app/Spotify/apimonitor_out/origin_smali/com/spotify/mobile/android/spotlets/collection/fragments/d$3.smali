.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/cw;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/i;

    move-result-object v1

    const-string v0, "time_added"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "most_played_rank"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_23
    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/i;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V

    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    return-void
.end method
