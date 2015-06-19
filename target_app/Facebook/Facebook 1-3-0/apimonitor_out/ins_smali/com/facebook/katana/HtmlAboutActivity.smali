.class public Lcom/facebook/katana/HtmlAboutActivity;
.super Landroid/app/Activity;
.source "HtmlAboutActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lcom/facebook/katana/HtmlAboutActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x3
invoke-virtual {p0, v3}, Lcom/facebook/katana/HtmlAboutActivity;->requestWindowFeature(I)Z
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030017
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlAboutActivity;->setContentView(I)V
const v1, 0x7f0200a2
invoke-virtual {p0, v3, v1}, Lcom/facebook/katana/HtmlAboutActivity;->setFeatureDrawableResource(II)V
const v1, 0x7f0b0030
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlAboutActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
:try_start_1c
invoke-virtual {p0}, Lcom/facebook/katana/HtmlAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Lcom/facebook/katana/HtmlAboutActivity;->getPackageName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v9
invoke-virtual {p0}, Lcom/facebook/katana/HtmlAboutActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/high16 v3, 0x7f06
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v8
invoke-virtual {v8}, Ljava/io/InputStream;->available()I
move-result v1
new-array v6, v1, [B
invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
new-instance v10, Ljava/lang/String;
const-string v1, "UTF-8"
invoke-direct {v10, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
const-string v1, "[0-9]+.[0-9]+.[0-9]+"
iget-object v3, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {v10, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v1, 0x0
const-string v3, "text/html"
const-string v4, "utf-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_57
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_57} :catch_76
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_57} :catch_7e
const v1, 0x7f0b0042
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlAboutActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v3, Lcom/facebook/katana/HtmlAboutActivity$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/HtmlAboutActivity$1;-><init>(Lcom/facebook/katana/HtmlAboutActivity;)V
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0b0043
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlAboutActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v3, Lcom/facebook/katana/HtmlAboutActivity$2;
invoke-direct {v3, p0}, Lcom/facebook/katana/HtmlAboutActivity$2;-><init>(Lcom/facebook/katana/HtmlAboutActivity;)V
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/facebook/katana/HtmlAboutActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_76
move-exception v1
move-object v7, v1
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_7e
move-exception v1
move-object v7, v1
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method