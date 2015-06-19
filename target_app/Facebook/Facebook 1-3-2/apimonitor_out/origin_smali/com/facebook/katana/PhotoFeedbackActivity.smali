.class public Lcom/facebook/katana/PhotoFeedbackActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "PhotoFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;,
        Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;
    }
.end annotation


# static fields
.field private static final PROGRESS_ADD_COMMENT_DIALOG_ID:I = 0x1

.field private static final REFRESH_MENU_ID:I = 0x1


# instance fields
.field private mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

.field private mAddCommentReqId:Ljava/lang/String;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/service/api/FacebookPhoto;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    return-object v0
.end method

.method static synthetic access$11(Lcom/facebook/katana/PhotoFeedbackActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/PhotoFeedbackActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/facebook/katana/PhotoFeedbackActivity;Lcom/facebook/katana/service/api/FacebookPhoto;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    return-void
.end method

.method static synthetic access$14(Lcom/facebook/katana/PhotoFeedbackActivity;)Lcom/facebook/katana/binding/AppSession;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic access$15(Lcom/facebook/katana/PhotoFeedbackActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAddCommentReqId:Ljava/lang/String;

    return-void
.end method

.method private setupEmptyView()V
    .registers 4

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/katana/PhotoFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setupFatTitleBar()V
    .registers 11

    const/4 v9, 0x0

    const v5, 0x7f0b0024

    invoke-virtual {p0, v5}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPhoto;->getImageBytes()[B

    move-result-object v3

    if-eqz v3, :cond_5d

    array-length v5, v3

    invoke-static {v3, v9, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1d
    iget-object v5, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCaption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    const v5, 0x7f080179

    invoke-virtual {p0, v5}, Lcom/facebook/katana/PhotoFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2c
    const v5, 0x7f0b0025

    invoke-virtual {p0, v5}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    iget-object v6, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCreatedMs()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0800c4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/facebook/katana/PhotoFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0b0026

    invoke-virtual {p0, v5}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5d
    const v5, 0x7f0200bd

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v6, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, p0, v6, v7, v8}, Lcom/facebook/katana/binding/AppSession;->downloadPhotoThumbail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1d
.end method

.method private showProgress(Z)V
    .registers 7

    const v0, 0x7f0b00b2

    const v4, 0x7f0b0014

    const v3, 0x7f0b0013

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0, v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23
.end method


# virtual methods
.method public bridge synthetic facebookOnBackPressed()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->facebookOnBackPressed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic finish()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03002f

    invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v3, :cond_17

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/facebook/katana/PhotoFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    new-instance v3, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;-><init>(Lcom/facebook/katana/PhotoFeedbackActivity;Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAppSessionListener;)V

    iput-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-direct {p0}, Lcom/facebook/katana/PhotoFeedbackActivity;->setupFatTitleBar()V

    new-instance v3, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    iget-object v4, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache;)V

    iput-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/PhotoFeedbackActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/facebook/katana/PhotoFeedbackActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_53

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v3, v1}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->setComments(Ljava/util/List;)V

    :cond_53
    const v3, 0x7f0b0066

    invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/facebook/katana/PhotoFeedbackActivity$1;

    invoke-direct {v4, p0}, Lcom/facebook/katana/PhotoFeedbackActivity$1;-><init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b0029

    invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/facebook/katana/PhotoFeedbackActivity$2;

    invoke-direct {v3, p0}, Lcom/facebook/katana/PhotoFeedbackActivity$2;-><init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v3, Lcom/facebook/katana/PhotoFeedbackActivity$3;

    invoke-direct {v3, p0}, Lcom/facebook/katana/PhotoFeedbackActivity$3;-><init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v3, 0x7f0b0067

    invoke-virtual {p0, v3}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/facebook/katana/PhotoFeedbackActivity$4;

    invoke-direct {v3, p0}, Lcom/facebook/katana/PhotoFeedbackActivity$4;-><init>(Lcom/facebook/katana/PhotoFeedbackActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/facebook/katana/PhotoFeedbackActivity;->setupEmptyView()V

    goto :goto_16
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_22

    const/4 v1, 0x0

    :goto_5
    return-object v1

    :pswitch_6
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/PhotoFeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v1, v0

    goto :goto_5

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f080147

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_7
    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->photoGetComments(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/PhotoFeedbackActivity;->showProgress(Z)V

    goto :goto_7

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    :cond_e
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->isPhotoGetCommentPending(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_1b

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v3

    :cond_1b
    move v2, v3

    goto :goto_17
.end method

.method protected onResume()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v2, :cond_13

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAddCommentReqId:Ljava/lang/String;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAddCommentReqId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->removeDialog(I)V

    iput-object v5, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAddCommentReqId:Ljava/lang/String;

    const/4 v1, 0x1

    const v2, 0x7f0b0029

    invoke-virtual {p0, v2}, Lcom/facebook/katana/PhotoFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3b
    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->isPhotoGetCommentPending(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v2}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_53

    if-eqz v1, :cond_12

    :cond_53
    iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/facebook/katana/binding/AppSession;->photoGetComments(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->showProgress(Z)V

    goto :goto_12

    :cond_62
    invoke-direct {p0, v4}, Lcom/facebook/katana/PhotoFeedbackActivity;->showProgress(Z)V

    goto :goto_12
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity;->mAdapter:Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->getComments()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarSearchClickHandler(Landroid/view/View;)V

    return-void
.end method
