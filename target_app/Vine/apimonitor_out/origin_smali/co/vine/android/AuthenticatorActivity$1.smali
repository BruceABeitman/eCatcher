.class Lco/vine/android/AuthenticatorActivity$1;
.super Lco/vine/android/service/VineServiceResponder;
.source "AuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AuthenticatorActivity;->onClickHandler(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lco/vine/android/AuthenticatorActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/AuthenticatorActivity$1;->this$0:Lco/vine/android/AuthenticatorActivity;

    invoke-direct {p0}, Lco/vine/android/service/VineServiceResponder;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    const/4 v2, 0x1

    iget-object v1, p0, Lco/vine/android/AuthenticatorActivity$1;->this$0:Lco/vine/android/AuthenticatorActivity;

    invoke-virtual {v1, v2}, Lco/vine/android/AuthenticatorActivity;->removeDialog(I)V

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_26

    const-string v1, "s_key"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/AuthenticatorActivity$1;->this$0:Lco/vine/android/AuthenticatorActivity;

    iget-object v1, v1, Lco/vine/android/AuthenticatorActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lco/vine/android/AuthenticatorActivity$1;->this$0:Lco/vine/android/AuthenticatorActivity;

    invoke-virtual {v1, v0}, Lco/vine/android/AuthenticatorActivity;->finishLogin(Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v1, p0, Lco/vine/android/AuthenticatorActivity$1;->this$0:Lco/vine/android/AuthenticatorActivity;

    invoke-virtual {v1, v0, v2}, Lco/vine/android/AuthenticatorActivity;->finishConfirmCredentials(Ljava/lang/String;Z)V

    goto :goto_1f

    :cond_26
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "handle bad password scenario"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
