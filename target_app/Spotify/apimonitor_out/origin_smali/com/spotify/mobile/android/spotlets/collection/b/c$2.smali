.class final Lcom/spotify/mobile/android/spotlets/collection/b/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/b/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/b/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    if-eqz p2, :cond_49

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bA:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->m(Landroid/content/Context;)V

    :goto_1f
    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->e(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->f(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v3, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/spotlets/collection/b/d;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/b/c$2;->a:Lcom/spotify/mobile/android/spotlets/collection/b/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d(Lcom/spotify/mobile/android/spotlets/collection/b/c;)Lcom/spotify/mobile/android/spotlets/collection/b/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/d;->a()V

    :cond_48
    return-void

    :cond_49
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bB:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/dp;->n(Landroid/content/Context;)V

    goto :goto_1f
.end method
