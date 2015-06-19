.class Lcom/alipay/android/app/sdk/WapPayActivity$2;
.super Ljava/lang/Object;
.source "WapPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/sdk/WapPayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/sdk/WapPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$2;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$2;->this$0:Lcom/alipay/android/app/sdk/WapPayActivity;

    #getter for: Lcom/alipay/android/app/sdk/WapPayActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/alipay/android/app/sdk/WapPayActivity;->access$6(Lcom/alipay/android/app/sdk/WapPayActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method
