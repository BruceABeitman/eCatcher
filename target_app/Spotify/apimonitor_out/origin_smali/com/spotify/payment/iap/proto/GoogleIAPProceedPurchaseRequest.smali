.class public final Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DATA_SIGNATURE:Ljava/lang/String; = ""

.field public static final DEFAULT_PURCHASE_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_RESPONSE_CODE:Ljava/lang/Integer;


# instance fields
.field public final data_signature:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x3
        b = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
        c = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
    .end annotation
.end field

.field public final purchase_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x2
        b = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
        c = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
    .end annotation
.end field

.field public final response_code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/n;
        a = 0x1
        b = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
        c = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->DEFAULT_RESPONSE_CODE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/g;)V

    iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->response_code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->response_code:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->purchase_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->purchase_data:Ljava/lang/String;

    iget-object v0, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;->data_signature:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->data_signature:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;-><init>(Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;

    iget-object v2, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->response_code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->response_code:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->purchase_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->purchase_data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->data_signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->data_signature:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->hashCode:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->response_code:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->response_code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_f
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->purchase_data:Ljava/lang/String;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->purchase_data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->data_signature:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v1, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->data_signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_28
    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/payment/iap/proto/GoogleIAPProceedPurchaseRequest;->hashCode:I

    :cond_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_f

    :cond_2e
    move v0, v1

    goto :goto_1b
.end method
