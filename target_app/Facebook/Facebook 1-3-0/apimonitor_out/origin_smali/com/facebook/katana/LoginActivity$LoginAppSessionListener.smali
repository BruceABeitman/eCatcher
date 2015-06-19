.class Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/LoginActivity;Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;-><init>(Lcom/facebook/katana/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 11

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/LoginActivity;->removeDialog(I)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_16

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    #calls: Lcom/facebook/katana/LoginActivity;->startNextActivity()V
    invoke-static {v1}, Lcom/facebook/katana/LoginActivity;->access$9(Lcom/facebook/katana/LoginActivity;)V

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/LoginActivity;->finish()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    #getter for: Lcom/facebook/katana/LoginActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
    invoke-static {v1}, Lcom/facebook/katana/LoginActivity;->access$10(Lcom/facebook/katana/LoginActivity;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    const/4 v2, 0x0

    #setter for: Lcom/facebook/katana/LoginActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1, v2}, Lcom/facebook/katana/LoginActivity;->access$11(Lcom/facebook/katana/LoginActivity;Lcom/facebook/katana/binding/AppSession;)V

    if-nez p3, :cond_39

    instance-of v1, p5, Lcom/facebook/katana/service/api/FacebookApiException;

    if-eqz v1, :cond_58

    move-object v0, p5

    check-cast v0, Lcom/facebook/katana/service/api/FacebookApiException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I

    move-result p3

    check-cast p5, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-virtual {p5}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorMsg()Ljava/lang/String;

    move-result-object p4

    :cond_39
    :goto_39
    packed-switch p3, :pswitch_data_7a

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    iget-object v2, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    const v3, 0x7f080073

    invoke-virtual {v2, v3}, Lcom/facebook/katana/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/LoginActivity;->access$12(Lcom/facebook/katana/LoginActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    #getter for: Lcom/facebook/katana/LoginActivity;->mForeground:Z
    invoke-static {v1}, Lcom/facebook/katana/LoginActivity;->access$13(Lcom/facebook/katana/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    invoke-virtual {v1, v4}, Lcom/facebook/katana/LoginActivity;->showDialog(I)V

    goto :goto_15

    :cond_58
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    goto :goto_39

    :pswitch_5d
    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    iget-object v2, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Lcom/facebook/katana/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/facebook/katana/LoginActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/LoginActivity;->access$12(Lcom/facebook/katana/LoginActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    #getter for: Lcom/facebook/katana/LoginActivity;->mForeground:Z
    invoke-static {v1}, Lcom/facebook/katana/LoginActivity;->access$13(Lcom/facebook/katana/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/facebook/katana/LoginActivity$LoginAppSessionListener;->this$0:Lcom/facebook/katana/LoginActivity;

    invoke-virtual {v1, v4}, Lcom/facebook/katana/LoginActivity;->showDialog(I)V

    goto :goto_15

    nop

    :pswitch_data_7a
    .packed-switch 0x191
        :pswitch_5d
    .end packed-switch
.end method
