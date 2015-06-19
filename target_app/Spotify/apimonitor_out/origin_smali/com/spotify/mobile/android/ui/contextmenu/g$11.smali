.class final Lcom/spotify/mobile/android/ui/contextmenu/g$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/contextmenu/g;->f(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->U:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->a(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_29
    return-void

    :cond_2a
    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->w:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-string v1, "station-id"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->e(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/contextmenu/g;->d(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->f(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$11;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29
.end method
