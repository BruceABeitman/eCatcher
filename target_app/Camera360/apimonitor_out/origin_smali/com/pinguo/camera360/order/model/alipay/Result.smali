.class public Lcom/pinguo/camera360/order/model/alipay/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static final sResultStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isSignOk:Z

.field private mResult:Ljava/lang/String;

.field memo:Ljava/lang/String;

.field result:Ljava/lang/String;

.field resultStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "9000"

    const-string/jumbo v2, "\u64cd\u4f5c\u6210\u529f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4000"

    const-string/jumbo v2, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4001"

    const-string/jumbo v2, "\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4003"

    const-string/jumbo v2, "\u8be5\u7528\u6237\u7ed1\u5b9a\u7684\u652f\u4ed8\u5b9d\u8d26\u6237\u88ab\u51bb\u7ed3\u6216\u4e0d\u5141\u8bb8\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4004"

    const-string/jumbo v2, "\u8be5\u7528\u6237\u5df2\u89e3\u9664\u7ed1\u5b9a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4005"

    const-string/jumbo v2, "\u7ed1\u5b9a\u5931\u8d25\u6216\u6ca1\u6709\u7ed1\u5b9a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4006"

    const-string/jumbo v2, "\u8ba2\u5355\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "4010"

    const-string/jumbo v2, "\u91cd\u65b0\u7ed1\u5b9a\u8d26\u6237"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "6000"

    const-string/jumbo v2, "\u652f\u4ed8\u670d\u52a1\u6b63\u5728\u8fdb\u884c\u5347\u7ea7\u64cd\u4f5c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "6001"

    const-string/jumbo v2, "\u7528\u6237\u4e2d\u9014\u53d6\u6d88\u652f\u4ed8\u64cd\u4f5c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    const-string/jumbo v1, "7001"

    const-string/jumbo v2, "\u7f51\u9875\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->result:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->isSignOk:Z

    iput-object p1, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->mResult:Ljava/lang/String;

    return-void
.end method

.method private checkSign(Ljava/lang/String;)Z
    .registers 12

    const/4 v3, 0x0

    :try_start_1
    const-string/jumbo v7, "&"

    invoke-virtual {p0, p1, v7}, Lcom/pinguo/camera360/order/model/alipay/Result;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v7, "&sign_type="

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "sign_type"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "sign"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "RSA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    const-string/jumbo v7, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"

    invoke-static {v5, v4, v7}, Lcom/pinguo/camera360/order/model/alipay/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_5d

    move-result v3

    :cond_46
    :goto_46
    const-string/jumbo v7, "Result"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "checkSign ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, "Result"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Exception ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private getContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    move-object v0, p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    if-eqz p3, :cond_15

    :try_start_c
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_14

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->mResult:Ljava/lang/String;

    const-string/jumbo v2, "{"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "}"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "memo="

    const-string/jumbo v2, ";result"

    invoke-direct {p0, v0, v1, v2}, Lcom/pinguo/camera360/order/model/alipay/Result;->getContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parseResult()V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->mResult:Ljava/lang/String;

    const-string/jumbo v4, "{"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "resultStatus="

    const-string/jumbo v4, ";memo"

    invoke-direct {p0, v2, v3, v4}, Lcom/pinguo/camera360/order/model/alipay/Result;->getContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    sget-object v3, Lcom/pinguo/camera360/order/model/alipay/Result;->sResultStatus:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;

    :goto_32
    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;

    const-string/jumbo v3, "memo="

    const-string/jumbo v4, ";result"

    invoke-direct {p0, v2, v3, v4}, Lcom/pinguo/camera360/order/model/alipay/Result;->getContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->memo:Ljava/lang/String;

    const-string/jumbo v3, "result="

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/pinguo/camera360/order/model/alipay/Result;->getContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->result:Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->result:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/order/model/alipay/Result;->checkSign(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->isSignOk:Z

    :goto_73
    return-void

    :cond_74
    const-string/jumbo v3, "\u5176\u4ed6\u9519\u8bef"

    iput-object v3, p0, Lcom/pinguo/camera360/order/model/alipay/Result;->resultStatus:Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7a

    goto :goto_32

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73
.end method

.method public string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_a
    array-length v5, v0

    if-lt v3, v5, :cond_e

    :goto_d
    return-object v4

    :cond_e
    aget-object v5, v0, v3

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v5, v1, v5

    aget-object v6, v0, v3

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2f

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :catch_2f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
