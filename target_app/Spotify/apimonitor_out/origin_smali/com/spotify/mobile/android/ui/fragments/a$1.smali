.class final Lcom/spotify/mobile/android/ui/fragments/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_4e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/a;->c(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_28
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/a;->c(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_28

    :cond_4e
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_af

    const-string v0, "uri"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_72
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_36

    instance-of v5, v0, Lcom/spotify/mobile/android/model/j;

    if-eqz v5, :cond_36

    check-cast v0, Lcom/spotify/mobile/android/model/j;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->m()Z

    move-result v5

    if-eqz v5, :cond_d4

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->l()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v1

    const v2, 0x7f0a01db

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/a;->c(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/w;

    invoke-virtual {v1}, Landroid/support/v4/app/w;->b()I

    goto :goto_36

    :cond_af
    sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    if-ne v0, v1, :cond_c0

    const-string v0, "uri"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/a;->b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_72

    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown link type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_d4
    invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->o()Z

    move-result v5

    if-nez v5, :cond_f5

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->i()I

    move-result v5

    if-eqz v5, :cond_f5

    invoke-static {}, Lcom/spotify/mobile/android/f/a;->a()Z

    move-result v5

    if-nez v5, :cond_f5

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->i()I

    move-result v6

    if-ne v6, v3, :cond_f3

    :goto_ee
    invoke-static {v5, v1, v3, v4, v0}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;ZZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;)V

    goto/16 :goto_36

    :cond_f3
    move v3, v2

    goto :goto_ee

    :cond_f5
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a$1;->a:Lcom/spotify/mobile/android/ui/fragments/a;

    invoke-static {v3, v1, v4, v0, v2}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;ZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;Z)V

    goto/16 :goto_36
.end method
