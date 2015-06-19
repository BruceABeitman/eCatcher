.class Lco/vine/android/service/VineService$ExecutionRunnable;
.super Ljava/lang/Object;
.source "VineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/service/VineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecutionRunnable"
.end annotation


# instance fields
.field private final mActionCode:I

.field private final mBundle:Landroid/os/Bundle;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mResponder:Lco/vine/android/service/VineServiceResponder;

.field private final mStartId:I

.field final synthetic this$0:Lco/vine/android/service/VineService;


# direct methods
.method public constructor <init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;Landroid/os/Messenger;)V
    .registers 7

    iput-object p1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    iput p3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iput-object p4, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iput-object p5, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    iput-object p6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v6, 0x1

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lco/vine/android/service/VineService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const-string v1, "executionCode"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_114

    :cond_19
    :goto_19
    const-string v1, "statusCode"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "reasonPhrase"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    if-eqz v1, :cond_fb

    new-instance v0, Lco/vine/android/service/VineService$ResponderRunnable;

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget-object v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mResponder:Lco/vine/android/service/VineServiceResponder;

    iget v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iget v7, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    invoke-direct/range {v0 .. v7}, Lco/vine/android/service/VineService$ResponderRunnable;-><init>(Lco/vine/android/service/VineService;Lco/vine/android/service/VineServiceResponder;IILjava/lang/String;Landroid/os/Bundle;I)V

    :goto_38
    if-eqz v0, :cond_43

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    #getter for: Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lco/vine/android/service/VineService;->access$200(Lco/vine/android/service/VineService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_43
    return-void

    :pswitch_44
    const-string v1, "Session key was invalid. Refreshing session key and then will try again"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lco/vine/android/service/VineService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const-string v1, "executionCode"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_11e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session key successfully refreshed. Trying original action of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lco/vine/android/service/VineService;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const-string v1, "executionCode"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_126

    invoke-static {}, Lco/vine/android/service/VineService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "refresh_session"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "Session key refresh and retry complete."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_a1
    const-string v1, "Session key could not be refreshed. Aborting."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "logged_out"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_19

    :pswitch_af
    const-string v1, "Session was logged out."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "logged_out"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_19

    :pswitch_bd
    const-string v1, "Session key is still invalid. Aborting."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "logged_out"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_19

    :pswitch_cb
    const-string v1, "Session was logged out."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "logged_out"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_19

    :pswitch_d9
    const-string v1, "Captcha triggered"

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "captcha_url"

    const-string v3, "captcha_url"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_ed
    const-string v1, "Session was logged out."

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    const-string v2, "logged_out"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_19

    :cond_fb
    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_110

    new-instance v0, Lco/vine/android/service/VineService$MessengerResponderRunnable;

    iget-object v1, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->this$0:Lco/vine/android/service/VineService;

    iget-object v2, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mMessenger:Landroid/os/Messenger;

    iget v3, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mActionCode:I

    iget-object v6, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mBundle:Landroid/os/Bundle;

    iget v7, p0, Lco/vine/android/service/VineService$ExecutionRunnable;->mStartId:I

    invoke-direct/range {v0 .. v7}, Lco/vine/android/service/VineService$MessengerResponderRunnable;-><init>(Lco/vine/android/service/VineService;Landroid/os/Messenger;IILjava/lang/String;Landroid/os/Bundle;I)V

    goto/16 :goto_38

    :cond_110
    const/4 v0, 0x0

    goto/16 :goto_38

    nop

    :pswitch_data_114
    .packed-switch 0x2
        :pswitch_44
        :pswitch_ed
        :pswitch_d9
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x2
        :pswitch_a1
        :pswitch_af
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x2
        :pswitch_bd
        :pswitch_cb
    .end packed-switch
.end method
