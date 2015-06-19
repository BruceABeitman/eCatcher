.class public final Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;
.super Lcom/squareup/wire/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/g",
        "<",
        "Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/wire/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/g;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;->success:Ljava/lang/Boolean;

    goto :goto_5
.end method


# virtual methods
.method public final build()Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;->checkRequiredFields()V

    new-instance v0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;-><init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;B)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;->build()Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    move-result-object v0

    return-object v0
.end method

.method public final success(Ljava/lang/Boolean;)Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;->success:Ljava/lang/Boolean;

    return-object p0
.end method
