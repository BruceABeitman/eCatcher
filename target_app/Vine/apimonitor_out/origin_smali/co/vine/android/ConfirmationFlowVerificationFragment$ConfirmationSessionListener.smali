.class Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ConfirmationFlowVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConfirmationFlowVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmationSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ConfirmationFlowVerificationFragment;Lco/vine/android/ConfirmationFlowVerificationFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;-><init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V

    return-void
.end method


# virtual methods
.method public onRequestPhoneVerificationComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-virtual {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$700(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgainRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$600(Lco/vine/android/ConfirmationFlowVerificationFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_36

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mSentAgain:Z
    invoke-static {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$800(Lco/vine/android/ConfirmationFlowVerificationFragment;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    const v2, 0x7f0e0085

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    :cond_35
    :goto_35
    return-void

    :cond_36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_35
.end method

.method public onVerifyPhoneNumberComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-virtual {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    const/4 v2, 0x0

    #calls: Lco/vine/android/ConfirmationFlowVerificationFragment;->showProgressBar(Z)V
    invoke-static {v1, v2}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$900(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #calls: Lco/vine/android/ConfirmationFlowVerificationFragment;->toggleDoneAction(Z)V
    invoke-static {v1, v3}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$100(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_31

    const v1, 0x7f0e008b

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-virtual {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x5f7

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-virtual {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_30
    return-void

    :cond_31
    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #calls: Lco/vine/android/ConfirmationFlowVerificationFragment;->toggleErrorMessage(Z)V
    invoke-static {v1, v3}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$200(Lco/vine/android/ConfirmationFlowVerificationFragment;Z)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$1000(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    :cond_46
    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$ConfirmationSessionListener;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mErrorMessage:Landroid/widget/TextView;
    invoke-static {v1}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$1000(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e0087

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_30
.end method
