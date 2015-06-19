.class public Lco/vine/android/ConfirmationFlowEntryFragment;
.super Lco/vine/android/BaseControllerFragment;
.source "ConfirmationFlowEntryFragment.java"

# interfaces
.implements Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;


# static fields
.field public static final ARG_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final STATE_PHONE_NUMBER:Ljava/lang/String; = "phone_number"


# instance fields
.field private mNext:Landroid/view/MenuItem;

.field private mNextEnabled:Z

.field private mPhone:Ljava/lang/String;

.field private mPhoneNumberBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseControllerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ConfirmationFlowEntryFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ConfirmationFlowEntryFragment;->toggleNextAction(Z)V

    return-void
.end method

.method private toggleNextAction(Z)V
    .registers 3

    iput-boolean p1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mNextEnabled:Z

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mNext:Landroid/view/MenuItem;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mNext:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lco/vine/android/ConfirmationFlowEntryFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowEntryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    :cond_15
    :goto_15
    return-void

    :cond_16
    if-eqz p1, :cond_15

    const-string v1, "phone_number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    goto :goto_15
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    const v0, 0x7f10000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0246

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mNext:Landroid/view/MenuItem;

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mNext:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mNextEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseControllerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v4, 0x7f0a0084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0e008a

    invoke-virtual {p0, v4}, Lco/vine/android/ConfirmationFlowEntryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_36
    new-instance v4, Lco/vine/android/ConfirmationFlowEntryFragment$1;

    invoke-direct {v4, p0, v2}, Lco/vine/android/ConfirmationFlowEntryFragment$1;-><init>(Lco/vine/android/ConfirmationFlowEntryFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput-object v2, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhoneNumberBox:Landroid/widget/EditText;

    return-object v3
.end method

.method public onDialogDone(Landroid/content/DialogInterface;II)V
    .registers 10

    packed-switch p2, :pswitch_data_46

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    packed-switch p3, :pswitch_data_4c

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-direct {v2}, Lco/vine/android/ConfirmationFlowVerificationFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "phone_number"

    iget-object v4, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "from_sign_up"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f040017

    const v5, 0x7f040018

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0a0102

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_3

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_58

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_d
    :goto_d
    return v2

    :pswitch_e
    iget-object v4, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhoneNumberBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(II)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    const v4, 0x7f0e026f

    invoke-virtual {v1, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v4

    const v5, 0x7f0e0117

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Lco/vine/android/ConfirmationFlowEntryFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(Ljava/lang/String;)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v2

    const v4, 0x7f0e0163

    invoke-virtual {v2, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v2

    const v4, 0x7f0e0057

    invoke-virtual {v2, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNeutralButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v2

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    move v2, v3

    goto :goto_d

    nop

    :pswitch_data_58
    .packed-switch 0x7f0a0246
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 4

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onPause()V

    invoke-virtual {p0}, Lco/vine/android/ConfirmationFlowEntryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhoneNumberBox:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/BaseControllerFragment;->onResume()V

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/ConfirmationFlowEntryFragment;->toggleNextAction(Z)V

    :cond_f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "phone_number"

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowEntryFragment;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lco/vine/android/BaseControllerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
