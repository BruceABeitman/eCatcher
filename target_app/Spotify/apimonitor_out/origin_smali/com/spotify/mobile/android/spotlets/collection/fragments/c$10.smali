.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->Y:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/d;)V

    :cond_27
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    return-void
.end method
