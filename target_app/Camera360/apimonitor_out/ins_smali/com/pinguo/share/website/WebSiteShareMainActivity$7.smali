.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$7;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Lcom/pinguo/share/ShareAccess$LocationCallback;
.field final synthetic this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$7;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public successGetLocation(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_d
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$7;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
#setter for: Lcom/pinguo/share/website/WebSiteShareMainActivity;->mReversedAddress:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->access$29(Lcom/pinguo/share/website/WebSiteShareMainActivity;Ljava/lang/String;)V
:cond_d
return-void
.end method