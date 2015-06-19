.class Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;
.super Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/upsell/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver",
        "<",
        "Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/j;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/j;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private a(Lcom/spotify/cosmos/router/Response;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->a(Lcom/spotify/mobile/android/ui/activity/upsell/j;)Lcom/squareup/wire/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getBody()[B

    move-result-object v1

    const-class v2, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/x;->a([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    new-instance v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ParserException;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->b(Lcom/spotify/mobile/android/ui/activity/upsell/j;)Lcom/spotify/mobile/android/ui/activity/upsell/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Failed posting"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->a(Lcom/spotify/mobile/android/ui/activity/upsell/j;Z)V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p2, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->b(Lcom/spotify/mobile/android/ui/activity/upsell/j;)Lcom/spotify/mobile/android/ui/activity/upsell/o;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    iget-object v2, p2, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    :cond_19
    const-string v0, "Registration was not successful"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_21
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->a(Lcom/spotify/mobile/android/ui/activity/upsell/j;Z)V

    return-void

    :cond_27
    const-string v2, "Purchase (%s) registration success"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/j;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/activity/upsell/j;->b(Lcom/spotify/mobile/android/ui/activity/upsell/j;)Lcom/spotify/mobile/android/ui/activity/upsell/o;

    move-result-object v4

    iget-object v4, v4, Lcom/spotify/mobile/android/ui/activity/upsell/o;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21
.end method

.method protected synthetic parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/GooglePlayInAppBillingRegisterPurchasesTask$1;->a(Lcom/spotify/cosmos/router/Response;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    move-result-object v0

    return-object v0
.end method
