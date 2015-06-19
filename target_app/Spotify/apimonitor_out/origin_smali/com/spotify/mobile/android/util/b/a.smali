.class public Lcom/spotify/mobile/android/util/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/actions/a;

.field private final b:Lcom/spotify/mobile/android/util/ao;

.field private c:Lcom/spotify/mobile/android/util/b/b;

.field private d:Lcom/spotify/mobile/android/util/b/b;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/util/ao;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/b/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/b/a$1;-><init>(Lcom/spotify/mobile/android/util/b/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/b/a;->c:Lcom/spotify/mobile/android/util/b/b;

    new-instance v0, Lcom/spotify/mobile/android/util/b/a$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/b/a$2;-><init>(Lcom/spotify/mobile/android/util/b/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/b/a;->d:Lcom/spotify/mobile/android/util/b/b;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/b/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/b/a;->b:Lcom/spotify/mobile/android/util/ao;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/b/a;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/b/a;->a:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ClientEvent;Z)V
    .registers 9

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/SpotifyLink;->h()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "link is not tracked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/SpotifyLink;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/util/b/a;->b:Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device-id"

    invoke-virtual {p3, v1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v0, "tracking-id"

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/SpotifyLink;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    if-eqz p4, :cond_74

    iget-object v0, p0, Lcom/spotify/mobile/android/util/b/a;->c:Lcom/spotify/mobile/android/util/b/b;

    invoke-interface {v0, p1, p3}, Lcom/spotify/mobile/android/util/b/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :goto_3b
    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/SpotifyLink;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6220470886a584968d7466d2d0953005"

    invoke-static {p1, v1}, Lcom/mixpanel/android/mpmetrics/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Ljava/lang/String;)V

    :try_start_48
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/spotify/mobile/android/util/ClientEvent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tracking-id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/spotify/mobile/android/util/ClientEvent;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mixpanel/android/mpmetrics/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_5d} :catch_7a

    :goto_5d
    const-string v0, "Link tracking type %s, link %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/spotify/mobile/android/util/ClientEvent;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/SpotifyLink;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    :cond_74
    iget-object v0, p0, Lcom/spotify/mobile/android/util/b/a;->d:Lcom/spotify/mobile/android/util/b/b;

    invoke-interface {v0, p1, p3}, Lcom/spotify/mobile/android/util/b/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ClientEvent;)V

    goto :goto_3b

    :catch_7a
    move-exception v0

    const-string v1, "Exception while building tracking request"

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 6

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/spotify/mobile/android/util/b/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ClientEvent;Z)V

    goto :goto_c
.end method

.method public final a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/util/b/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ClientEvent;Z)V

    return-void
.end method
