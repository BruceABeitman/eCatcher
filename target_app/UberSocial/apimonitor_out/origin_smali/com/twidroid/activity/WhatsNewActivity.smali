.class public Lcom/twidroid/activity/WhatsNewActivity;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"


# instance fields
.field b:Lcom/ubermedia/ui/widgets/MyGallery;

.field c:Landroid/view/MenuItem;

.field private final d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->d:I

    return-void
.end method

.method private e()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/twidroid/activity/af;

    const v2, 0x7f0c0332

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0331

    invoke-virtual {p0, v3}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0201fa

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/activity/af;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/twidroid/activity/af;

    const v2, 0x7f0c0334

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c0333

    invoke-virtual {p0, v3}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0201fb

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/activity/af;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/twidroid/activity/af;

    const v2, 0x7f0c032c

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c032b

    invoke-virtual {p0, v3}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0201fc

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/activity/af;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/twidroid/activity/af;

    const v2, 0x7f0c032f

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0c032e

    invoke-virtual {p0, v3}, Lcom/twidroid/activity/WhatsNewActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0201fd

    invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/activity/af;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    new-instance v2, Lcom/twidroid/activity/ag;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/ag;-><init>(Lcom/twidroid/activity/WhatsNewActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/ubermedia/ui/widgets/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    new-instance v2, Lcom/twidroid/activity/WhatsNewActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/WhatsNewActivity$1;-><init>(Lcom/twidroid/activity/WhatsNewActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/ubermedia/ui/widgets/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 5

    invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onBackPressed()V

    const-string v0, "tour-exit"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "exit-position"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    invoke-virtual {v3}, Lcom/ubermedia/ui/widgets/MyGallery;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03007b

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/WhatsNewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    const v1, 0x7f0c02ee

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->c(Z)V

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->a(Z)V

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->b(Z)V

    const v0, 0x7f0901a0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/WhatsNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubermedia/ui/widgets/MyGallery;

    iput-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/MyGallery;->setSpacing(I)V

    invoke-direct {p0}, Lcom/twidroid/activity/WhatsNewActivity;->e()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, -0x1

    const v1, 0x7f0c0330

    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->c:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->c:Landroid/view/MenuItem;

    invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v1, 0x2

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_3b

    const-string v0, "tour-exit"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "exit-position"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    invoke-virtual {v2}, Lcom/ubermedia/ui/widgets/MyGallery;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    invoke-virtual {v0}, Lcom/ubermedia/ui/widgets/MyGallery;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    invoke-virtual {v1}, Lcom/ubermedia/ui/widgets/MyGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3c

    invoke-virtual {p0}, Lcom/twidroid/activity/WhatsNewActivity;->finish()V

    :cond_3b
    :goto_3b
    return v4

    :cond_3c
    iget-object v0, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    iget-object v1, p0, Lcom/twidroid/activity/WhatsNewActivity;->b:Lcom/ubermedia/ui/widgets/MyGallery;

    invoke-virtual {v1}, Lcom/ubermedia/ui/widgets/MyGallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/ubermedia/ui/widgets/MyGallery;->setSelection(IZ)V

    goto :goto_3b
.end method
