.class final Lcom/spotify/mobile/android/ui/fragments/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/a/a;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a/a;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "connected"

    aput-object v6, v3, v5

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

    const/4 v2, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Lcom/spotify/mobile/android/ui/fragments/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Lcom/spotify/mobile/android/ui/fragments/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V

    :cond_34
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Lcom/spotify/mobile/android/ui/fragments/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V

    goto :goto_3e

    :cond_52
    move v1, v2

    goto :goto_15

    :cond_54
    return-void
.end method
