.class public final Lcom/spotify/mobile/android/spotlets/browse/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/spotlets/browse/b/d;

.field private b:Lcom/spotify/mobile/android/ui/actions/a;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/a;->b:Lcom/spotify/mobile/android/ui/actions/a;

    const-string v0, "Don\'t create ClickLogger with null logInfo"

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a:Lcom/spotify/mobile/android/spotlets/browse/b/d;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
    .registers 9

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a:Lcom/spotify/mobile/android/spotlets/browse/b/d;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/b/d;->a()Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v0, "index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v2, "name"

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v2, "target_uri"

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "section"

    invoke-virtual {v1, v0, p4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    :cond_37
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "action"

    invoke-virtual {v1, v0, p5}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    :cond_42
    return-object v1
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b/a;->b:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a:Lcom/spotify/mobile/android/spotlets/browse/b/d;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/b/d;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a:Lcom/spotify/mobile/android/spotlets/browse/b/d;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/b/d;->c()Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method
