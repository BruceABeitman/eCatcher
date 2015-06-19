.class public Lcom/facebook/katana/HtmlActivity;
.super Landroid/app/Activity;
.source "HtmlActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lcom/facebook/katana/HtmlActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x3
const-string v1, "UTF-8"
invoke-virtual {p0, v4}, Lcom/facebook/katana/HtmlActivity;->requestWindowFeature(I)Z
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030019
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/facebook/katana/HtmlActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v3, "android.intent.extra.TITLE"
invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlActivity;->setTitle(Ljava/lang/CharSequence;)V
const v1, 0x7f0200a2
invoke-virtual {p0, v4, v1}, Lcom/facebook/katana/HtmlActivity;->setFeatureDrawableResource(II)V
const v1, 0x7f0b0030
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
:try_start_2b
invoke-virtual {p0}, Lcom/facebook/katana/HtmlActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {p0}, Lcom/facebook/katana/HtmlActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string v4, "android.intent.extra.SUBJECT"
const v5, 0x7f060002
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v8
invoke-virtual {v8}, Ljava/io/InputStream;->available()I
move-result v9
new-array v6, v9, [B
invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
new-instance v2, Ljava/lang/String;
const-string v1, "UTF-8"
invoke-direct {v2, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
const/4 v1, 0x0
const-string v3, "text/html"
const-string v4, "UTF-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_5c
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_5c} :catch_6c
const v1, 0x7f0b0043
invoke-virtual {p0, v1}, Lcom/facebook/katana/HtmlActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v3, Lcom/facebook/katana/HtmlActivity$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/HtmlActivity$1;-><init>(Lcom/facebook/katana/HtmlActivity;)V
invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/facebook/katana/HtmlActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_6c
move-exception v1
move-object v7, v1
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method