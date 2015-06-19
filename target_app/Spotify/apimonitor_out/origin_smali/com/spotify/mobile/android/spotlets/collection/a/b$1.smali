.class final Lcom/spotify/mobile/android/spotlets/collection/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/a/b;
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
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/a/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->b(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->c(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Z

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->d(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;ZZ)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->e(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/d;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->f(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v6

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Lcom/spotify/mobile/android/spotlets/collection/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/a/c;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/a/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Lcom/spotify/mobile/android/spotlets/collection/a/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/spotlets/collection/a/c;->a(Landroid/database/Cursor;)V

    return-void
.end method
