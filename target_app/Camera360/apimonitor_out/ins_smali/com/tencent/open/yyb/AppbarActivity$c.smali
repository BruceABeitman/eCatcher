.class  Lcom/tencent/open/yyb/AppbarActivity$c;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/open/yyb/AppbarActivity;
.method private constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/yyb/AppbarActivity$c;->a:Lcom/tencent/open/yyb/AppbarActivity;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/open/yyb/AppbarActivity;Lcom/tencent/open/yyb/AppbarActivity$2;)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/open/yyb/AppbarActivity$c;-><init>(Lcom/tencent/open/yyb/AppbarActivity;)V
return-void
.end method
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/tencent/open/yyb/AppbarActivity$c;->a:Lcom/tencent/open/yyb/AppbarActivity;
#getter for: Lcom/tencent/open/yyb/AppbarActivity;->mTitleBar:Lcom/tencent/open/yyb/TitleBar;
invoke-static {v0}, Lcom/tencent/open/yyb/AppbarActivity;->access$200(Lcom/tencent/open/yyb/AppbarActivity;)Lcom/tencent/open/yyb/TitleBar;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/tencent/open/yyb/TitleBar;->setTitle(Ljava/lang/String;)V
return-void
.end method