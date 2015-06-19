.class final Lcom/spotify/mobile/android/spotlets/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/a/c;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/b;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/a/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/c;Lcom/spotify/mobile/android/spotlets/a/b;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ab:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/a/b;->m(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/a/b;->o(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/c$1;->b:Lcom/spotify/mobile/android/spotlets/a/c;

    iget-object v4, v4, Lcom/spotify/mobile/android/spotlets/a/c;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v4}, Lcom/spotify/mobile/android/spotlets/a/b;->n(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v4

    invoke-static {v2, v0, v3, v4, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    return-void
.end method
