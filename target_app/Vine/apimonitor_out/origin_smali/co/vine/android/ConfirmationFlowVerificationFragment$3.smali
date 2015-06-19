.class Lco/vine/android/ConfirmationFlowVerificationFragment$3;
.super Ljava/lang/Object;
.source "ConfirmationFlowVerificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConfirmationFlowVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ConfirmationFlowVerificationFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$3;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$3;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    #getter for: Lco/vine/android/ConfirmationFlowVerificationFragment;->mSendAgain:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/ConfirmationFlowVerificationFragment;->access$300(Lco/vine/android/ConfirmationFlowVerificationFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConfirmationFlowVerificationFragment$3;->this$0:Lco/vine/android/ConfirmationFlowVerificationFragment;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
