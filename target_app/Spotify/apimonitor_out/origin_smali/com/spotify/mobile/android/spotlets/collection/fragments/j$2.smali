.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
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
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "offline_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sync_progress"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->b:[Ljava/lang/String;

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

    sget-object v2, Lcom/spotify/mobile/android/provider/c;->a:Landroid/net/Uri;

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->b:[Ljava/lang/String;

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

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->v(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->y(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->w(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->x(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(II)V

    :cond_36
    return-void
.end method
