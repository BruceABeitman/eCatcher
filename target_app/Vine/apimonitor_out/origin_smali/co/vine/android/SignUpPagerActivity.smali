.class public Lco/vine/android/SignUpPagerActivity;
.super Lco/vine/android/BaseControllerActionBarActivity;
.source "SignUpPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/SignUpPagerActivity$SignUpListener;,
        Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_FINISH:Ljava/lang/String; = "finish"

.field public static final EXTRA_LOGIN:Ljava/lang/String; = "user"

.field public static final FLOW_STEP_DETAILS:I = 0x1

.field public static final FLOW_STEP_NAME_AVATAR:I = 0x0

.field private static final NUM_PAGES:I = 0x2

.field public static final REQUEST_CODE_CONFIRM_PHONE:I = 0x675

.field private static final STATE_LOGIN:Ljava/lang/String; = "s_login"

.field private static final STATE_NAME:Ljava/lang/String; = "s_name"

.field private static final STATE_PASSWORD:Ljava/lang/String; = "s_password"

.field private static final STATE_PHONE:Ljava/lang/String; = "s_phone"

.field private static final STATE_PROFILE:Ljava/lang/String; = "s_profile"


# instance fields
.field private mAvatarFrag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailsFrag:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mFinish:Z

.field private mLogin:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPager:Lco/vine/android/widget/ConfigurableViewPager;

.field private mPassword:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mProfile:Landroid/net/Uri;

.field private mTwitterUser:Lco/vine/android/api/TwitterUser;

.field private mVineLogin:Lco/vine/android/api/VineLogin;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;

    return-object v0
.end method

.method static synthetic access$102(Lco/vine/android/SignUpPagerActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mAvatarFrag:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$202(Lco/vine/android/SignUpPagerActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mDetailsFrag:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$300(Lco/vine/android/SignUpPagerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/SignUpPagerActivity;->mFinish:Z

    return v0
.end method

.method static synthetic access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/SignUpPagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_c
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    packed-switch p1, :pswitch_data_36

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v1}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    invoke-static {p0}, Lco/vine/android/FindFriendsNUXActivity;->start(Landroid/content/Context;)V

    goto :goto_c

    :pswitch_11
    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mAvatarFrag:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mAvatarFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_c

    :pswitch_23
    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mDetailsFrag:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mDetailsFrag:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_c

    nop

    :pswitch_data_36
    .packed-switch 0x675
        :pswitch_d
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_23
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v0}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0}, Lco/vine/android/BaseControllerActionBarActivity;->onBackPressed()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v1}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ConfigurableViewPager;->setCurrentItem(I)V

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    const v1, 0x7f030093

    invoke-super {p0, p1, v1, v2}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/SignUpPagerActivity;->mFinish:Z

    :cond_16
    const v1, 0x7f0a00da

    invoke-virtual {p0, v1}, Lco/vine/android/SignUpPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/ConfigurableViewPager;

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v1, v2}, Lco/vine/android/widget/ConfigurableViewPager;->setSwipingEnabled(Z)V

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    new-instance v2, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;

    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lco/vine/android/SignUpPagerActivity$SignUpPagerAdapter;-><init>(Lco/vine/android/SignUpPagerActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Lco/vine/android/widget/ConfigurableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    new-instance v1, Lco/vine/android/SignUpPagerActivity$SignUpListener;

    invoke-direct {v1, p0}, Lco/vine/android/SignUpPagerActivity$SignUpListener;-><init>(Lco/vine/android/SignUpPagerActivity;)V

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineLogin;

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;

    if-eqz p1, :cond_75

    const-string v1, "s_login"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    const-string v1, "s_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    const-string v1, "s_password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    const-string v1, "s_phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    const-string v1, "s_profile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    :cond_75
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lco/vine/android/SignUpPagerActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    invoke-virtual {p0}, Lco/vine/android/SignUpPagerActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "s_login"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s_password"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s_name"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s_phone"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s_profile"

    iget-object v1, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected setBarTitle(I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1, v1}, Lco/vine/android/SignUpPagerActivity;->setupActionBar(Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Boolean;)V

    return-void
.end method

.method public setLogin(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    return-void
.end method

.method public setTwitterUser(Lco/vine/android/api/TwitterUser;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SignUpPagerActivity;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    return-void
.end method

.method protected toNextStep()V
    .registers 12

    const v3, 0x7f0f0037

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    invoke-virtual {v0}, Lco/vine/android/widget/ConfigurableViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    :goto_e
    return-void

    :pswitch_f
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    if-eqz v0, :cond_3b

    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    :try_start_25
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_6b

    :goto_28
    iput-object v10, p0, Lco/vine/android/SignUpPagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    iget-object v5, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    iget-object v6, p0, Lco/vine/android/SignUpPagerActivity;->mTwitterUser:Lco/vine/android/api/TwitterUser;

    iget-object v7, p0, Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;

    move-object v2, v1

    invoke-virtual/range {v0 .. v7}, Lco/vine/android/client/AppController;->signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)Ljava/lang/String;

    goto :goto_e

    :cond_3b
    iget-object v0, p0, Lco/vine/android/SignUpPagerActivity;->mPager:Lco/vine/android/widget/ConfigurableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/ConfigurableViewPager;->setCurrentItem(I)V

    goto :goto_e

    :pswitch_42
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lco/vine/android/SignUpPagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v10, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :try_start_56
    invoke-virtual {v10}, Landroid/app/ProgressDialog;->show()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_6d

    :goto_59
    iget-object v2, p0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/SignUpPagerActivity;->mLogin:Ljava/lang/String;

    iget-object v4, p0, Lco/vine/android/SignUpPagerActivity;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lco/vine/android/SignUpPagerActivity;->mName:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;

    iget-object v7, p0, Lco/vine/android/SignUpPagerActivity;->mProfile:Landroid/net/Uri;

    move-object v8, v1

    move-object v9, v1

    invoke-virtual/range {v2 .. v9}, Lco/vine/android/client/AppController;->signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lco/vine/android/api/TwitterUser;Lco/vine/android/api/VineLogin;)Ljava/lang/String;

    goto :goto_e

    :catch_6b
    move-exception v0

    goto :goto_28

    :catch_6d
    move-exception v0

    goto :goto_59

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_f
        :pswitch_42
    .end packed-switch
.end method
