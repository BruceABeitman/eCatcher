.class final Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;
.super Ljava/lang/Object;
.source "WapPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/sdk/WapPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InJavaScriptLocalObj"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/sdk/WapPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;)Lcom/alipay/android/app/sdk/WapPayActivity;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;

    return-object v0
.end method


# virtual methods
.method public showSource(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    const-string/jumbo v4, "sdk_result_code:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string/jumbo v4, "sdk_result_code:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "-->"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "sdk_result_code:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/sdk/Result;->setPayResult(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;-><init>(Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;)V

    iget-object v4, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;

    invoke-virtual {v4, v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method
