.class public final Lcom/instagram/android/people/b/a;
.super Lcom/instagram/base/a/b;
.source "PeopleTagFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field private c:Lcom/instagram/ui/widget/refresh/RefreshButton;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

.field private f:Lcom/instagram/android/people/widget/PhotoScrollView;

.field private g:Z

.field private h:Lcom/instagram/android/people/widget/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/people/b/a;->g:Z

    new-instance v0, Lcom/instagram/android/people/b/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/people/b/b;-><init>(Lcom/instagram/android/people/b/a;)V

    iput-object v0, p0, Lcom/instagram/android/people/b/a;->h:Lcom/instagram/android/people/widget/f;

    return-void
.end method

.method private U()V
    .registers 9

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "people_tags"

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->c()Lcom/instagram/model/people/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/k;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "people_tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcom/instagram/android/c/a/u;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->y()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->c()Lcom/instagram/model/people/b;

    move-result-object v5

    new-instance v6, Lcom/instagram/android/people/b/f;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/instagram/android/people/b/f;-><init>(Lcom/instagram/android/people/b/a;B)V

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/c/a/u;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/u;->h()V

    goto :goto_29
.end method

.method static synthetic a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->f:Lcom/instagram/android/people/widget/PhotoScrollView;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/people/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/people/b/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/people/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->d()V

    return-void
.end method

.method private c()Lcom/instagram/model/people/b;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-virtual {v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->h()Lcom/instagram/model/people/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/people/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->U()V

    return-void
.end method

.method static synthetic d(Lcom/instagram/android/people/b/a;)Lcom/instagram/ui/widget/refresh/RefreshButton;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->c()Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/facebook/az;->people_tagging_tap_to_add:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/people/b/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/facebook/az;->people_tagging_drag_to_move:I

    invoke-virtual {p0, v2}, Lcom/instagram/android/people/b/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    iget-boolean v0, p0, Lcom/instagram/android/people/b/a;->g:Z

    if-eqz v0, :cond_56

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->c()Lcom/instagram/model/people/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/model/people/b;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_56

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/f;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_56
    iget-object v0, p0, Lcom/instagram/android/people/b/a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lcom/instagram/android/people/b/a;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5d
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    sget v0, Lcom/facebook/aw;->fragment_people_tag:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/instagram/a/c;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/instagram/android/people/b/c;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/b/c;-><init>(Lcom/instagram/android/people/b/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/facebook/av;->action_bar_button_done:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iget-object v1, p0, Lcom/instagram/android/people/b/a;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    sget v2, Lcom/facebook/au;->check:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setButtonResource(I)V

    iget-object v1, p0, Lcom/instagram/android/people/b/a;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    new-instance v2, Lcom/instagram/android/people/b/d;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/b/d;-><init>(Lcom/instagram/android/people/b/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/facebook/av;->image_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v1, p0, Lcom/instagram/android/people/b/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v2, p0, Lcom/instagram/android/people/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    sget v1, Lcom/facebook/av;->people_tagging_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v1, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iget-object v2, p0, Lcom/instagram/android/people/b/a;->h:Lcom/instagram/android/people/widget/f;

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->setEditListener(Lcom/instagram/android/people/widget/f;)V

    sget v1, Lcom/facebook/av;->tags_help_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->d()V

    sget v1, Lcom/facebook/av;->photo_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/people/widget/PhotoScrollView;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->f:Lcom/instagram/android/people/widget/PhotoScrollView;

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_93

    iget-object v1, p0, Lcom/instagram/android/people/b/a;->f:Lcom/instagram/android/people/widget/PhotoScrollView;

    new-instance v2, Lcom/instagram/android/people/b/e;

    invoke-direct {v2, p0}, Lcom/instagram/android/people/b/e;-><init>(Lcom/instagram/android/people/b/a;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/people/widget/PhotoScrollView;->setOnMeasureListener(Lcom/instagram/common/ui/b/a;)V

    :cond_93
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/people/b/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-direct {p0}, Lcom/instagram/android/people/b/a;->c()Lcom/instagram/model/people/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/model/people/b;Z)V

    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a(Lcom/instagram/user/c/a;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->a()V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "people_tagging"

    return-object v0
.end method

.method public final l_()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->setEditListener(Lcom/instagram/android/people/widget/f;)V

    iget-object v0, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;->b()V

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->e:Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->c:Lcom/instagram/ui/widget/refresh/RefreshButton;

    iput-object v1, p0, Lcom/instagram/android/people/b/a;->d:Landroid/widget/TextView;

    return-void
.end method
