.class public final enum Lcom/alipay/android/app/sdk/ResultStatus;
.super Ljava/lang/Enum;
.source "ResultStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/sdk/ResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/alipay/android/app/sdk/ResultStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/app/sdk/ResultStatus;

.field public static final enum FAILED:Lcom/alipay/android/app/sdk/ResultStatus;

.field public static final enum NETWORK_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

.field public static final enum PARAMS_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

.field public static final enum SUCCEEDED:Lcom/alipay/android/app/sdk/ResultStatus;

.field public static final enum UNKNOWN:Lcom/alipay/android/app/sdk/ResultStatus;

.field public static final enum UNWORK:Lcom/alipay/android/app/sdk/ResultStatus;


# instance fields
.field private msg:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "SUCCEEDED"

    const/16 v2, 0x2328

    const-string/jumbo v3, "\u652f\u4ed8\u6210\u529f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->SUCCEEDED:Lcom/alipay/android/app/sdk/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "FAILED"

    const/16 v2, 0xfa0

    const-string/jumbo v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->FAILED:Lcom/alipay/android/app/sdk/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "CANCELED"

    const/16 v2, 0x1771

    const-string/jumbo v3, "\u7528\u6237\u53d6\u6d88"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->CANCELED:Lcom/alipay/android/app/sdk/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "NETWORK_ERROR"

    const/16 v2, 0x1772

    const-string/jumbo v3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x1773

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->UNKNOWN:Lcom/alipay/android/app/sdk/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "UNWORK"

    const/4 v2, 0x5

    const/16 v3, 0x1b59

    const-string/jumbo v4, "\u7f51\u9875\u652f\u4ed8\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->UNWORK:Lcom/alipay/android/app/sdk/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/sdk/ResultStatus;

    const-string/jumbo v1, "PARAMS_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0xfa1

    const-string/jumbo v4, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/sdk/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/android/app/sdk/ResultStatus;

    sget-object v1, Lcom/alipay/android/app/sdk/ResultStatus;->SUCCEEDED:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/sdk/ResultStatus;->FAILED:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/sdk/ResultStatus;->CANCELED:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/sdk/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/app/sdk/ResultStatus;->UNKNOWN:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/sdk/ResultStatus;->UNWORK:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/sdk/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->ENUM$VALUES:[Lcom/alipay/android/app/sdk/ResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/android/app/sdk/ResultStatus;->status:I

    iput-object p4, p0, Lcom/alipay/android/app/sdk/ResultStatus;->msg:Ljava/lang/String;

    return-void
.end method

.method public static getResultState(I)Lcom/alipay/android/app/sdk/ResultStatus;
    .registers 2

    sparse-switch p0, :sswitch_data_18

    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->FAILED:Lcom/alipay/android/app/sdk/ResultStatus;

    :goto_5
    return-object v0

    :sswitch_6
    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->SUCCEEDED:Lcom/alipay/android/app/sdk/ResultStatus;

    goto :goto_5

    :sswitch_9
    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->CANCELED:Lcom/alipay/android/app/sdk/ResultStatus;

    goto :goto_5

    :sswitch_c
    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

    goto :goto_5

    :sswitch_f
    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->UNKNOWN:Lcom/alipay/android/app/sdk/ResultStatus;

    goto :goto_5

    :sswitch_12
    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->UNWORK:Lcom/alipay/android/app/sdk/ResultStatus;

    goto :goto_5

    :sswitch_15
    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/sdk/ResultStatus;

    goto :goto_5

    :sswitch_data_18
    .sparse-switch
        0xfa1 -> :sswitch_15
        0x1771 -> :sswitch_9
        0x1772 -> :sswitch_c
        0x1773 -> :sswitch_f
        0x1b59 -> :sswitch_12
        0x2328 -> :sswitch_6
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/sdk/ResultStatus;
    .registers 2

    const-class v0, Lcom/alipay/android/app/sdk/ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/sdk/ResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/sdk/ResultStatus;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/sdk/ResultStatus;->ENUM$VALUES:[Lcom/alipay/android/app/sdk/ResultStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/sdk/ResultStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/sdk/ResultStatus;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/alipay/android/app/sdk/ResultStatus;->status:I

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/sdk/ResultStatus;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/alipay/android/app/sdk/ResultStatus;->status:I

    return-void
.end method
