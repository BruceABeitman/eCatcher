.class public final Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;


# instance fields
.field public final success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x1
        b = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
        c = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V

    iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;-><init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    check-cast p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;

    iget-object v1, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->hashCode:I

    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_f
    iput v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseResponse;->hashCode:I

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method
