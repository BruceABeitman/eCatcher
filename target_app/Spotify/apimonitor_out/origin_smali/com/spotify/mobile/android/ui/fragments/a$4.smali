.class final Lcom/spotify/mobile/android/ui/fragments/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/a;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->c:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/f;->a(Ljava/lang/String;Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/Metadata;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/f;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-object v0

    :cond_2f
    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;->c:Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/p;->a(Lcom/spotify/mobile/android/provider/Metadata$PlaylistFilter;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/Metadata;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/spotify/mobile/android/model/f;->a:[Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v5

    invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Lcom/spotify/mobile/android/util/cx;)Lcom/spotify/mobile/android/util/cw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
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

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->d(Lcom/spotify/mobile/android/ui/fragments/a;)Lcom/spotify/mobile/android/ui/adapter/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/a;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$4;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->d(Lcom/spotify/mobile/android/ui/fragments/a;)Lcom/spotify/mobile/android/ui/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/a;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method
