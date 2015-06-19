.class final Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v2, Lcom/spotify/mobile/android/provider/j;->b:Landroid/net/Uri;

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/spotlets/phoenixinbox/a;->a:[Ljava/lang/String;

    const-string v6, "time_added"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->b(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->c(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;->a:Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->c(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_30
    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_18
.end method
