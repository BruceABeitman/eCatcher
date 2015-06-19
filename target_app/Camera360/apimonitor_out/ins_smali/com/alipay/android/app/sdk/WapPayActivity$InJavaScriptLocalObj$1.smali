.class  Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;
.super Ljava/lang/Object;
.source "WapPayActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;->this$1:Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj$1;->this$1:Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;
#getter for: Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;
invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;->access$0(Lcom/alipay/android/app/sdk/WapPayActivity$InJavaScriptLocalObj;)Lcom/alipay/android/app/sdk/WapPayActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->finish()V
return-void
.end method