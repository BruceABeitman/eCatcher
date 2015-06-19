.class final Lcom/spotify/music/spotlets/radio/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/b/a;
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
.field final synthetic a:Lcom/spotify/music/spotlets/radio/b/a;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/b/a;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connected"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "can_stream"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->b:[Ljava/lang/String;

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

    iget-object v1, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-virtual {v1}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->b:[Ljava/lang/String;

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
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v3

    invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v4

    iget-object v5, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    if-eqz v3, :cond_4e

    if-eqz v4, :cond_4e

    move v0, v1

    :goto_19
    invoke-static {v5, v0}, Lcom/spotify/music/spotlets/radio/b/a;->a(Lcom/spotify/music/spotlets/radio/b/a;Z)Z

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/b/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->c(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v5

    if-nez v3, :cond_50

    move v0, v1

    :goto_2e
    invoke-virtual {v5, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->c(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    if-nez v4, :cond_52

    :goto_39
    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->b(Z)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->d(Lcom/spotify/music/spotlets/radio/b/a;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->e(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/music/spotlets/radio/service/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/c;->a()V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    move v0, v2

    goto :goto_19

    :cond_50
    move v0, v2

    goto :goto_2e

    :cond_52
    move v1, v2

    goto :goto_39

    :cond_54
    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/b/a$2;->a:Lcom/spotify/music/spotlets/radio/b/a;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/b/a;->e(Lcom/spotify/music/spotlets/radio/b/a;)Lcom/spotify/music/spotlets/radio/service/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/c;->b()V

    goto :goto_4d
.end method
