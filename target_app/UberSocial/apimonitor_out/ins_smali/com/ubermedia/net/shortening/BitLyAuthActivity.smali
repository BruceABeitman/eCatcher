.class public Lcom/ubermedia/net/shortening/BitLyAuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field public static final a:I = 0x7cf4
.field public static final b:Ljava/lang/String; = "redirect_uri"
.field public static final c:Ljava/lang/String; = "client_id"
.field public static final d:Ljava/lang/String; = "client_secret"
.field public static final e:Ljava/lang/String; = "result"
.field  f:Ljava/lang/String;
.field  g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field private i:Landroid/webkit/WebView;
.field private j:Landroid/widget/ProgressBar;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/ubermedia/net/shortening/BitLyAuthActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->j:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic a(Lcom/ubermedia/net/shortening/BitLyAuthActivity;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "result"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, -0x1
invoke-virtual {p0, v1, v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->finish()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/ubermedia/net/shortening/BitLyAuthActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
sget v0, Lcom/ubermedia/d/d;->activity_bitly_auth:I
invoke-virtual {p0, v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
if-nez v0, :cond_15
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->setResult(I)V
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->finish()V
:cond_15
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "redirect_uri"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->f:Ljava/lang/String;
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "client_id"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->g:Ljava/lang/String;
invoke-virtual {p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "client_secret"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->h:Ljava/lang/String;
sget v0, Lcom/ubermedia/d/c;->bitly_webview:I
invoke-virtual {p0, v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
iput-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->i:Landroid/webkit/WebView;
sget v0, Lcom/ubermedia/d/c;->bitly_progress:I
invoke-virtual {p0, v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->j:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->i:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->i:Landroid/webkit/WebView;
new-instance v1, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;
invoke-direct {v1, p0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;-><init>(Lcom/ubermedia/net/shortening/BitLyAuthActivity;)V
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->i:Landroid/webkit/WebView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "https://bitly.com/oauth/authorize?client_id="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "&redirect_uri="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
const-string v1, " - Lcom/ubermedia/net/shortening/BitLyAuthActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method