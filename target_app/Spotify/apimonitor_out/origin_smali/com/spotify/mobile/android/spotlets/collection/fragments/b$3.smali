.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->l(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->E()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    if-eqz p2, :cond_34

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bC:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    :goto_1a
    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    const-string v2, "albums"

    invoke-static {v2, v0, v3, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$3;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->i(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V

    return-void

    :cond_34
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bD:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    goto :goto_1a
.end method
