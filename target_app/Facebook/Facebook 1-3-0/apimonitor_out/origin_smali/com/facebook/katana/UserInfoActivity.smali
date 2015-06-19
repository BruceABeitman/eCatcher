.class public Lcom/facebook/katana/UserInfoActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/facebook/katana/TabProgressSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/UserInfoActivity$ActivityBlob;,
        Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/FacebookListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/facebook/katana/TabProgressSource;"
    }
.end annotation


# static fields
.field public static final EXTRA_LIMITED:Ljava/lang/String; = "extra_limited"

.field public static final EXTRA_SHOW_PROFILE_PHOTO:Ljava/lang/String; = "extra_profile_photo"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "extra_uid"

.field private static final MESSAGE_DIALOG:I = 0x1

.field private static final PROGRESS_DIALOG:I = 0x2

.field private static final VIEW_PROFILE:I = 0x2


# instance fields
.field private mAdapter:Lcom/facebook/katana/UserInfoAdapter;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mAreFriends:Z

.field private mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

.field private mProgressListener:Lcom/facebook/katana/TabProgressListener;

.field private mReqId:Ljava/lang/String;

.field private mShowingProgress:Z

.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/UserInfoActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/UserInfoActivity;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/facebook/katana/UserInfoActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/UserInfoActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/service/api/FacebookUserFull;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/katana/UserInfoActivity;->handleInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V

    return-void
.end method

.method static synthetic access$13(Lcom/facebook/katana/UserInfoActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/facebook/katana/UserInfoActivity;)Lcom/facebook/katana/UserInfoAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;

    return-object v0
.end method

.method static synthetic access$15(Lcom/facebook/katana/UserInfoActivity;)Lcom/facebook/katana/binding/AppSession;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method private handleInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/katana/UserInfoAdapter;->setUserInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V

    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    iput-boolean p2, p0, Lcom/facebook/katana/UserInfoActivity;->mAreFriends:Z

    if-eqz p2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const v1, 0x7f0b00ba

    invoke-virtual {p0, v1}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0b00b9

    invoke-virtual {p0, v1}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/facebook/katana/UserInfoActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/katana/UserInfoActivity$3;-><init>(Lcom/facebook/katana/UserInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b
.end method

.method private setupEmptyView()V
    .registers 3

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showProgress(Z)V
    .registers 8

    const v5, 0x7f0b0014

    const v4, 0x7f0b0013

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;

    invoke-interface {v1, p1}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V

    :cond_12
    const v1, 0x7f0b00b2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-boolean p1, p0, Lcom/facebook/katana/UserInfoActivity;->mShowingProgress:Z

    if-eqz p1, :cond_31

    if-eqz v0, :cond_22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    invoke-virtual {p0, v4}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_30
    return-void

    :cond_31
    if-eqz v0, :cond_36

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_36
    invoke-virtual {p0, v4}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30
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
    .registers 10

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f03004c

    invoke-virtual {p0, v2}, Lcom/facebook/katana/UserInfoActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v2, :cond_17

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_29

    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Lcom/facebook/katana/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_uid"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/katana/UserInfoActivity;->mUserId:J

    new-instance v2, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;-><init>(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/UserInfoActivity$UserInfoAppSessionListener;)V

    iput-object v2, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    new-instance v2, Lcom/facebook/katana/UserInfoAdapter;

    iget-object v3, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_profile_photo"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_limited"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/facebook/katana/UserInfoAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;ZZ)V

    iput-object v2, p0, Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;

    if-eqz v0, :cond_7a

    iget-object v2, v0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;->mBlobInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    iget-boolean v3, v0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;->mBlobAreFriends:Z

    invoke-direct {p0, v2, v3}, Lcom/facebook/katana/UserInfoActivity;->handleInfo(Lcom/facebook/katana/service/api/FacebookUserFull;Z)V

    :cond_7a
    invoke-direct {p0}, Lcom/facebook/katana/UserInfoActivity;->setupEmptyView()V

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_16
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_64

    move-object v5, v7

    :goto_6
    return-object v5

    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/facebook/katana/UserInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f030028

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0800d6

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0b0076

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Lcom/facebook/katana/UserInfoActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/facebook/katana/UserInfoActivity$1;-><init>(Lcom/facebook/katana/UserInfoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v5, 0x7f0800fa

    invoke-virtual {p0, v5}, Lcom/facebook/katana/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/facebook/katana/UserInfoActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/facebook/katana/UserInfoActivity$2;-><init>(Lcom/facebook/katana/UserInfoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_6

    :pswitch_49
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v5, 0x7f0800d7

    invoke-virtual {p0, v5}, Lcom/facebook/katana/UserInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v5, v1

    goto :goto_6

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_7
        :pswitch_49
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    const v1, 0x7f0800fd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020086

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity;->mAdapter:Lcom/facebook/katana/UserInfoAdapter;

    invoke-virtual {v4, p3}, Lcom/facebook/katana/UserInfoAdapter;->getItemByPosition(I)Lcom/facebook/katana/UserInfoAdapter$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_7a

    :cond_d
    :goto_d
    :pswitch_d
    return-void

    :pswitch_e
    iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUserFull;->getProfileUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    const-string v5, "www."

    const-string v6, "m."

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d

    :pswitch_2c
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    const-string v5, "tel"

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    :pswitch_47
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "mailto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.extra.EMAIL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getSubTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0800de

    invoke-virtual {p0, v4}, Lcom/facebook/katana/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/katana/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    :pswitch_72
    invoke-virtual {v1}, Lcom/facebook/katana/UserInfoAdapter$Item;->getTargetUserId()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V

    goto :goto_d

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_2c
        :pswitch_47
        :pswitch_72
    .end packed-switch
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
    .registers 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :goto_7
    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getProfileUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www."

    const-string v3, "m."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    :cond_e
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUserFull;->getProfileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    move v1, v2

    :goto_16
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v2

    :cond_1a
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mReqId:Ljava/lang/String;

    :cond_2d
    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/UserInfoActivity;->mUserId:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->usersGetInfo(Landroid/content/Context;J)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/katana/UserInfoActivity;->showProgress(Z)V

    goto :goto_10
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    if-eqz v1, :cond_e

    new-instance v0, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;

    iget-object v1, p0, Lcom/facebook/katana/UserInfoActivity;->mInfo:Lcom/facebook/katana/service/api/FacebookUserFull;

    iget-boolean v2, p0, Lcom/facebook/katana/UserInfoActivity;->mAreFriends:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/katana/UserInfoActivity$ActivityBlob;-><init>(Lcom/facebook/katana/UserInfoActivity;Lcom/facebook/katana/service/api/FacebookUserFull;Z)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public setProgressListener(Lcom/facebook/katana/TabProgressListener;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/UserInfoActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/UserInfoActivity;->mProgressListener:Lcom/facebook/katana/TabProgressListener;

    iget-boolean v1, p0, Lcom/facebook/katana/UserInfoActivity;->mShowingProgress:Z

    invoke-interface {v0, v1}, Lcom/facebook/katana/TabProgressListener;->onShowProgress(Z)V

    :cond_d
    return-void
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
