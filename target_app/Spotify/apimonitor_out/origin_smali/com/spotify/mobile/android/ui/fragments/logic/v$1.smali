.class final Lcom/spotify/mobile/android/ui/fragments/logic/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/v;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/v;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

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

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/x;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->D()[Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v1

    array-length v2, v0

    if-lez v2, :cond_4e

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/facebook/Session;->a()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->a(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/spotify/mobile/android/ui/activity/PermissionsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->a(Lcom/spotify/mobile/android/ui/fragments/logic/v;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->b(Lcom/spotify/mobile/android/ui/fragments/logic/v;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/v$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/v;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/v;->c(Lcom/spotify/mobile/android/ui/fragments/logic/v;)V

    :cond_4e
    return-void
.end method
