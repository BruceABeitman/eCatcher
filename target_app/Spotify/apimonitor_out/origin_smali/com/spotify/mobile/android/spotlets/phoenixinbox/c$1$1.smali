.class final Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;
.super Lcom/spotify/mobile/android/ui/contextmenu/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/contextmenu/e",
        "<",
        "Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;->b:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/contextmenu/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
    .registers 7

    check-cast p1, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1$1;->b:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/spotify/mobile/android/ui/contextmenu/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->h()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/g;->b(J)V

    return-void
.end method
