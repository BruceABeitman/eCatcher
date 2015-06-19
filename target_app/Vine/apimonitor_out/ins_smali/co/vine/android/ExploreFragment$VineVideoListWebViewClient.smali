.class  Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ExploreFragment.java"
.field final synthetic this$0:Lco/vine/android/ExploreFragment;
.method constructor <init>(Lco/vine/android/ExploreFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x0
iget-object v0, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/ExploreFragment;->access$100(Lco/vine/android/ExploreFragment;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p1, v2, v2}, Landroid/webkit/WebView;->scrollTo(II)V
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 11
const/16 v5, 0x8
const/4 v4, 0x0
const-string v1, "ExploreFragment"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "WebViewClient errorCode="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v5}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$000(Lco/vine/android/ExploreFragment;)Landroid/widget/RelativeLayout;
move-result-object v1
if-eqz v1, :cond_2f
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mProgressContainer:Landroid/widget/RelativeLayout;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$000(Lco/vine/android/ExploreFragment;)Landroid/widget/RelativeLayout;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:cond_2f
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$100(Lco/vine/android/ExploreFragment;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_40
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mEmpty:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$100(Lco/vine/android/ExploreFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
:cond_40
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mSadface:Landroid/widget/ImageView;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$200(Lco/vine/android/ExploreFragment;)Landroid/widget/ImageView;
move-result-object v1
if-eqz v1, :cond_51
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mSadfaceContainer:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$300(Lco/vine/android/ExploreFragment;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
:cond_51
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;
move-result-object v1
if-eqz v1, :cond_62
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
:cond_62
const/4 v1, -0x2
if-ne p2, v1, :cond_78
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
const v2, 0x7f0e00d2
invoke-virtual {v1, v2}, Lco/vine/android/ExploreFragment;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_6e
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
#getter for: Lco/vine/android/ExploreFragment;->mEmptyText:Landroid/widget/TextView;
invoke-static {v1}, Lco/vine/android/ExploreFragment;->access$400(Lco/vine/android/ExploreFragment;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_78
iget-object v1, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
const v2, 0x7f0e00d1
invoke-virtual {v1, v2}, Lco/vine/android/ExploreFragment;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_6e
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 8
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v3
const-string v4, "vine"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_42
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
const-string v3, "channels"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_36
iget-object v3, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
invoke-virtual {v3}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const-class v4, Lco/vine/android/ExploreChannelsActivity;
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
:goto_2f
iget-object v3, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
invoke-virtual {v3, v1}, Lco/vine/android/ExploreFragment;->startActivity(Landroid/content/Intent;)V
const/4 v3, 0x1
:goto_35
return v3
:cond_36
iget-object v3, p0, Lco/vine/android/ExploreFragment$VineVideoListWebViewClient;->this$0:Lco/vine/android/ExploreFragment;
invoke-virtual {v3}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const-class v4, Lco/vine/android/ExploreVideoListActivity;
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
goto :goto_2f
:cond_42
const/4 v3, 0x0
goto :goto_35
.end method