.class public Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;

.field private final b:Lcom/spotify/mobile/android/util/ao;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/util/ao;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->b:Lcom/spotify/mobile/android/util/ao;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->b:Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->b:Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->g()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "0"

    goto :goto_e
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/util/SpotifyLink;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bg:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "installation_id"

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->M:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 6

    const-string v0, "login"

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bh:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->T:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    const-string v1, "installation_id"

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->M:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p1, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ah:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {p2, v0, v1, v1}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    const-string v1, "installation_id"

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->M:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p1, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;I)V
    .registers 7

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    const-string v1, "installation_id"

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->M:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p1, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/util/SpotifyLink;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bf:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "installation_id"

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->J:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->M:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method
