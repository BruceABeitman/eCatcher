.class final Lcom/spotify/mobile/android/spotlets/user/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/user/f;
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
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/f;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "current_user"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->b:[Ljava/lang/String;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->b:[Ljava/lang/String;

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

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->b(Lcom/spotify/mobile/android/spotlets/user/f;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Lcom/spotify/mobile/android/spotlets/user/f;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->m(Lcom/spotify/mobile/android/spotlets/user/f;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->n(Lcom/spotify/mobile/android/spotlets/user/f;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->o(Lcom/spotify/mobile/android/spotlets/user/f;)V

    :cond_3d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->p(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/t;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v3}, Lcom/spotify/mobile/android/ui/adapter/t;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$6;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->p(Lcom/spotify/mobile/android/spotlets/user/f;)Lcom/spotify/mobile/android/ui/adapter/t;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v3}, Lcom/spotify/mobile/android/ui/adapter/t;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/EmptyView;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_63
    return-void
.end method
