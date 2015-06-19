.class Lco/vine/android/ConfirmationFlowEntryFragment$1;
.super Ljava/lang/Object;
.source "ConfirmationFlowEntryFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ConfirmationFlowEntryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConfirmationFlowEntryFragment;

.field final synthetic val$phoneNumberBox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lco/vine/android/ConfirmationFlowEntryFragment;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/ConfirmationFlowEntryFragment$1;->this$0:Lco/vine/android/ConfirmationFlowEntryFragment;

    iput-object p2, p0, Lco/vine/android/ConfirmationFlowEntryFragment$1;->val$phoneNumberBox:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment$1;->val$phoneNumberBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment$1;->this$0:Lco/vine/android/ConfirmationFlowEntryFragment;

    const/4 v1, 0x1

    #calls: Lco/vine/android/ConfirmationFlowEntryFragment;->toggleNextAction(Z)V
    invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowEntryFragment;->access$000(Lco/vine/android/ConfirmationFlowEntryFragment;Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lco/vine/android/ConfirmationFlowEntryFragment$1;->this$0:Lco/vine/android/ConfirmationFlowEntryFragment;

    const/4 v1, 0x0

    #calls: Lco/vine/android/ConfirmationFlowEntryFragment;->toggleNextAction(Z)V
    invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowEntryFragment;->access$000(Lco/vine/android/ConfirmationFlowEntryFragment;Z)V

    goto :goto_12
.end method
