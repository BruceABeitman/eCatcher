.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    const-string v2, "album"

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ay:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/a;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Landroid/content/Intent;)V

    :cond_4a
    return-void
.end method
