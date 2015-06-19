.class public final Lcom/spotify/mobile/android/spotlets/discover/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->J:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "story_id"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "story_music_uri"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "url"

    invoke-virtual {v0, v1, p3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 7

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ac:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ae:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "error"

    const-string v2, "hermes_error"

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "code"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final a(JJ)V
    .registers 9

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->W:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->M:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_24

    const-string v1, "data_loaded_from_server"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    :goto_18
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void

    :cond_24
    const-string v1, "ended_on_error"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    goto :goto_18
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;)V
    .registers 6

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ad:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v1, "story_id"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "story_music_uri"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/discover/c/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;)V
    .registers 4

    const-string v0, "reason_item"

    invoke-direct {p0, p1, v0, p2}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;)V
    .registers 4

    const-string v0, "hero"

    invoke-direct {p0, p1, v0, p2}, Lcom/spotify/mobile/android/spotlets/discover/c/a;->a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
