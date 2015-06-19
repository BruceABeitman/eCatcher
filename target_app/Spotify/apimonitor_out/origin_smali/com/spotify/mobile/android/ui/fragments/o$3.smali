.class final Lcom/spotify/mobile/android/ui/fragments/o$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/o;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/o;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/o;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/o;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/o;->c()[Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->b(Lcom/spotify/mobile/android/ui/fragments/o;)V

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->b(Lcom/spotify/mobile/android/ui/fragments/o;)V

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->d(Z)Z

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->e(Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->c(Lcom/spotify/mobile/android/ui/fragments/o;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/o;->D()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0x7f0f0265

    :goto_30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/o;->E()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->b(Lcom/spotify/mobile/android/ui/fragments/o;)V

    goto :goto_10

    :cond_3f
    const v0, 0x7f0f0266

    goto :goto_30

    :cond_43
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/o;->f(Lcom/spotify/mobile/android/ui/fragments/o;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/o;->d(Lcom/spotify/mobile/android/ui/fragments/o;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/o$3;->a:Lcom/spotify/mobile/android/ui/fragments/o;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/o;->e(Lcom/spotify/mobile/android/ui/fragments/o;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method
