.class final Lcom/spotify/mobile/android/ui/fragments/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/c;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/c;->E()[Ljava/lang/String;

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
    .registers 6

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/c;->b(Lcom/spotify/mobile/android/ui/fragments/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/c;->c(Lcom/spotify/mobile/android/ui/fragments/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/c;->c(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$4;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->d(Lcom/spotify/mobile/android/ui/fragments/c;)V

    :cond_32
    return-void
.end method
