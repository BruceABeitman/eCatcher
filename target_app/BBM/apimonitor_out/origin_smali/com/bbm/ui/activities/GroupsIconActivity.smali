.class public Lcom/bbm/ui/activities/GroupsIconActivity;
.super Landroid/app/Activity;
.source "GroupsIconActivity.java"


# instance fields
.field private a:Lcom/bbm/ui/FooterActionBar;

.field private b:Landroid/net/Uri;

.field private c:Lcom/bbm/ui/activities/tw;

.field private d:Landroid/widget/GridView;

.field private e:Landroid/content/Context;

.field private f:Z

.field private final g:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    new-instance v0, Lcom/bbm/ui/activities/tv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/tv;-><init>(Lcom/bbm/ui/activities/GroupsIconActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->g:Lcom/bbm/ui/cj;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupsIconActivity;)V
    .registers 3

    invoke-static {p0}, Lcom/bbm/util/fb;->c(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupsIconActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupsIconActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupsIconActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/jpeg"

    invoke-static {v1}, Lcom/bbm/util/b/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    const-string v1, "output"

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupsIconActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupsIconActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/16 v5, 0x12c

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-ne p1, v2, :cond_24

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/cropimage/f;

    invoke-direct {v1, v0}, Lcom/cropimage/f;-><init>(Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/cropimage/f;->b:Landroid/net/Uri;

    iput-boolean v2, v1, Lcom/cropimage/f;->c:Z

    invoke-virtual {v1, p0}, Lcom/cropimage/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/bbm/ui/activities/GroupsIconActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :cond_24
    if-ne p1, v4, :cond_81

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_62

    const-string v1, "data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_59

    :try_start_3e
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "picture_location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12c

    invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_59} :catch_5d

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->finish()V

    goto :goto_8

    :catch_5d
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_59

    :cond_62
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "picture_location"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_59

    :cond_81
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bbm/util/b/h;->b(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectedImageUri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bbm/util/dk;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_ae
    const-string v2, "picture_location"

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/GroupsIconActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bc} :catch_c1

    :goto_bc
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->finish()V

    goto/16 :goto_8

    :catch_c1
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_bc
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f0e05d0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->setContentView(I)V

    if-eqz p1, :cond_1b

    const-string v0, "cameraFileUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    :cond_1b
    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/tu;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tu;-><init>(Lcom/bbm/ui/activities/GroupsIconActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iput-object p0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->f:Z

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020013

    const v3, 0x7f0e0101

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->f:Z

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0201fb

    invoke-direct {v1, p0, v2, v7}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v6}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :goto_85
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->g:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupsIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/bbm/ui/activities/tw;

    invoke-direct {v0, p0, p0, v1}, Lcom/bbm/ui/activities/tw;-><init>(Lcom/bbm/ui/activities/GroupsIconActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->c:Lcom/bbm/ui/activities/tw;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupsIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->c:Lcom/bbm/ui/activities/tw;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/activities/tt;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tt;-><init>(Lcom/bbm/ui/activities/GroupsIconActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_c7
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0201fc

    const v3, -0x777778

    invoke-direct {v1, p0, v2, v7, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;III)V

    invoke-virtual {v0, v1, v6}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    goto :goto_85
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->clearFocus()V

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->d:Landroid/widget/GridView;

    :cond_14
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->c:Lcom/bbm/ui/activities/tw;

    if-eqz v0, :cond_1a

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->c:Lcom/bbm/ui/activities/tw;

    :cond_1a
    iput-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->clearFocus()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->removeAllViews()V

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->a:Lcom/bbm/ui/FooterActionBar;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_14

    const-string v0, "cameraFileUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v0, "cameraFileUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    :cond_14
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    if-eqz v0, :cond_e

    const-string v0, "cameraFileUri"

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupsIconActivity;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_e
    return-void
.end method
