.class public final Lcom/instagram/i/a/a/t;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderWebview.java"
.method public static a(Landroid/content/Context;)Landroid/view/View;
.registers 5
const/4 v3, 0x0
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_newsfeed_story_webview:I
invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/i/a/a/u;
invoke-direct {v2}, Lcom/instagram/i/a/a/u;-><init>()V
move-object v0, v1
check-cast v0, Landroid/webkit/WebView;
iput-object v0, v2, Lcom/instagram/i/a/a/u;->a:Landroid/webkit/WebView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v0, v2, :cond_22
const/4 v0, 0x1
invoke-virtual {v1, v0, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
:cond_22
return-object v1
.end method
.method public static a(Lcom/instagram/i/a/a/u;Lcom/instagram/i/d/c;)V
.registers 8
iget-object v0, p0, Lcom/instagram/i/a/a/u;->a:Landroid/webkit/WebView;
const-string v1, "http://instagram.com"
invoke-virtual {p1}, Lcom/instagram/i/d/c;->b()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "UTF-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method