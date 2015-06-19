.class  Lcom/twidroid/activity/k;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/MobileViewActivity;
.method private constructor <init>(Lcom/twidroid/activity/MobileViewActivity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/k;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/MobileViewActivity;Lcom/twidroid/activity/MobileViewActivity$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/k;-><init>(Lcom/twidroid/activity/MobileViewActivity;)V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/k;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/MobileViewActivity;->a()V
const/4 v0, 0x0
return v0
.end method