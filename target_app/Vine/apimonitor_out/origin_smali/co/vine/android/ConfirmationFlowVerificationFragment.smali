.class public Lco/vine/android/ConfirmationFlowVerificationFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "ConfirmationFlowVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;
    }
.end annotation


# static fields
.field public static final ARG_FROM_SIGNUP:Ljava/lang/String; = "from_sign_up"

.field public static final ARG_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final SEND_AGAIN_DELAY_MS:J = 0x2710L

.field private static final TRANSITION_DELAY_MS:J = 0x1f4L


# instance fields
.field private mConfirmationBox:Landroid/widget/EditText;

.field private mDone:Landroid/view/MenuItem;

.field private mErrorMessage:Landroid/widget/TextView;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFadingIn:Landroid/view/View;

.field private mFadingOut:Landroid/view/View;

.field private mFromSignup:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/widget/TextView;

.field private mPhone:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSendAgain:Landroid/view/View;

.field private mSendAgainRunnable:Ljava/lang/Runnable;

.field private mSentAgain:Z

.field private mShowMessageRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V

    new-instance v0, Lco/vine/android/ConfirmationFlowVerificationFragment$2;

    invoke-direct {v0, p0}, Lco/vine/android/ConfirmationFlowVerificationFragment$2;-><init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mShowMessageRunnable:Ljava/lang/Runnable;

    new-instance v0, Lco/vine/android/ConfirmationFlowVerificationFragment$3;

    invoke-direct {v0, p0}, Lco/vine/android/ConfirmationFlowVerificationFragment$3;-><init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgainRunnable:Ljava/lang/Runnable;

    new-instance v0, Lco/vine/android/ConfirmationFlowVerificationFragment$4;

    invoke-direct {v0, p0}, Lco/vine/android/ConfirmationFlowVerificationFragment$4;-><init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->toggleDoneAction(Z)V

    return-void
.end method

.method static synthetic access$1000(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->toggleErrorMessage(Z)V

    return-void
.end method

.method static synthetic access$300(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgain:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingIn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingOut:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/ConfirmationFlowVerificationFragment;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgainRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lco/vine/android/ConfirmationFlowVerificationFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSentAgain:Z

    return v0
.end method

.method static synthetic access$900(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->showProgressBar(Z)V

    return-void
.end method

.method private clearTextViewAnimations()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    return-void
.end method

.method private showProgressBar(Z)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_c
    return-void

    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method

.method private toggleDoneAction(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mDone:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_9
    return-void
.end method

.method private toggleErrorMessage(Z)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->clearTextViewAnimations()V

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingIn:Landroid/view/View;

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingOut:Landroid/view/View;

    goto :goto_8

    :cond_2d
    if-nez p1, :cond_8

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingIn:Landroid/view/View;

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadingOut:Landroid/view/View;

    goto :goto_8
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFromSignup:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowActivity;->requestPhoneVerification(Lco/vine/android/client/AppController;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    :goto_7
    return-void

    :pswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSentAgain:Z

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowActivity;->requestPhoneVerification(Lco/vine/android/client/AppController;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mShowMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgain:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :pswitch_22
    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/FindFriendsNUXActivity;->start(Landroid/content/Context;)V

    goto :goto_7

    :pswitch_data_2a
    .packed-switch 0x7f0a0089
        :pswitch_8
        :pswitch_22
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;-><init>(Lco/vine/android/ConfirmationFlowVerificationFragment;Lco/vine/android/ConfirmationFlowVerificationFragment$1;)V

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->setHasOptionsMenu(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeOutAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeOutAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeInAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeInAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFadeListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5b

    const-string v1, "phone_number"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mPhone:Ljava/lang/String;

    const-string v1, "from_sign_up"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFromSignup:Z

    :cond_5b
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0245

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mDone:Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseControllerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    const v8, 0x7f0a0086

    const/4 v7, 0x0

    const v4, 0x7f030028

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_f

    const/4 v3, 0x0

    :goto_e
    return-object v3

    :cond_f
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0e0088

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mPhone:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mFromSignup:Z

    if-eqz v4, :cond_37

    const v4, 0x7f0a008a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v4, Lco/vine/android/ConfirmationFlowVerificationFragment$1;

    invoke-direct {v4, p0, v1}, Lco/vine/android/ConfirmationFlowVerificationFragment$1;-><init>(Lco/vine/android/ConfirmationFlowVerificationFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mConfirmationBox:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mMessage:Landroid/widget/TextView;

    const v4, 0x7f0a0087

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;

    const v4, 0x7f0a0089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgain:Landroid/view/View;

    const v4, 0x7f0a0088

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_2e

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_d
    :goto_d
    return v1

    :pswitch_e
    iget-object v3, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mConfirmationBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v2}, Lco/vine/android/ConfirmationFlowVerificationFragment;->showProgressBar(Z)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lco/vine/android/client/AppController;->verifyPhoneNumber(Lco/vine/android/client/Session;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    goto :goto_d

    nop

    :pswitch_data_2e
    .packed-switch 0x7f0a0245
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mShowMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mConfirmationBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgain:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
