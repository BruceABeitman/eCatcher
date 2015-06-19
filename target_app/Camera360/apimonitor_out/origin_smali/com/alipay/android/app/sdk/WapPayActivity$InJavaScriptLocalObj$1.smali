.class Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;
.super Ljava/lang/Object;
.source "WapPayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->showSource(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;->this$1:Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;->this$1:Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;

    #getter for: Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
    invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->access$0(Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;)Lcom/alipay/android/app/sdk/WapPayActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->finish()V

    return-void
.end method
