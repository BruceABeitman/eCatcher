.class final Lcom/spotify/mobile/android/spotlets/browse/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/c;->b(Lcom/spotify/mobile/android/spotlets/browse/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/browse/c;->c(Lcom/spotify/mobile/android/spotlets/browse/c;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->O:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aV:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/browse/c;->b(Lcom/spotify/mobile/android/spotlets/browse/c;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/browse/c;->d(Lcom/spotify/mobile/android/spotlets/browse/c;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c$2;->a:Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v2, v0, v3, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;)V

    return-void
.end method
