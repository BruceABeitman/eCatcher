.class Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ResetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ResetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetPasswordListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ResetPasswordActivity;


# direct methods
.method private constructor <init>(Lco/vine/android/ResetPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;->this$0:Lco/vine/android/ResetPasswordActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ResetPasswordActivity;Lco/vine/android/ResetPasswordActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;-><init>(Lco/vine/android/ResetPasswordActivity;)V

    return-void
.end method


# virtual methods
.method public onResetPasswordComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;->this$0:Lco/vine/android/ResetPasswordActivity;

    invoke-virtual {v2}, Lco/vine/android/ResetPasswordActivity;->dismissDialog()V

    sparse-switch p2, :sswitch_data_2c

    const v0, 0x7f0e016f

    :goto_b
    const/4 v2, 0x1

    invoke-static {v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    iget-object v2, p0, Lco/vine/android/ResetPasswordActivity$ResetPasswordListener;->this$0:Lco/vine/android/ResetPasswordActivity;

    invoke-virtual {v2}, Lco/vine/android/ResetPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    return-void

    :sswitch_23
    const v0, 0x7f0e016e

    goto :goto_b

    :sswitch_27
    const v0, 0x7f0e0170

    goto :goto_b

    nop

    :sswitch_data_2c
    .sparse-switch
        0xc8 -> :sswitch_23
        0x194 -> :sswitch_27
    .end sparse-switch
.end method
