.class Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$1;
.super Ljava/lang/Object;
.source "WapPayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;Landroid/webkit/JsResult;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$1;->this$1:Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient;

    iput-object p2, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/app/sdk/WapPayActivity$MyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
