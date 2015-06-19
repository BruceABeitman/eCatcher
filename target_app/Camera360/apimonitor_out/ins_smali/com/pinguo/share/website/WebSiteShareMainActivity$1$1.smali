.class  Lcom/pinguo/share/website/WebSiteShareMainActivity$1$1;
.super Ljava/lang/Object;
.source "WebSiteShareMainActivity.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
.method constructor <init>(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/website/WebSiteShareMainActivity$1$1;->this$1:Lcom/pinguo/share/website/WebSiteShareMainActivity$1;
#getter for: Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->this$0:Lcom/pinguo/share/website/WebSiteShareMainActivity;
invoke-static {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity$1;->access$0(Lcom/pinguo/share/website/WebSiteShareMainActivity$1;)Lcom/pinguo/share/website/WebSiteShareMainActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteShareMainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p2}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveSelectedBind(Landroid/content/Context;Z)V
return-void
.end method