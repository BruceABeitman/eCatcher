.class  Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "HomeActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;
.method private constructor <init>(Lcom/facebook/katana/HomeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/HomeActivity;Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;-><init>(Lcom/facebook/katana/HomeActivity;)V
return-void
.end method
.method public onGetNotificationHistoryComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 11
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
const/4 v3, 0x0
#calls: Lcom/facebook/katana/HomeActivity;->showProgress(Z)V
invoke-static {v2, v3}, Lcom/facebook/katana/HomeActivity;->access$7(Lcom/facebook/katana/HomeActivity;Z)V
const/16 v2, 0xc8
if-eq p3, v2, :cond_24
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
iget-object v3, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
const v4, 0x7f0800b8
invoke-virtual {v3, v4}, Lcom/facebook/katana/HomeActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
const/4 v3, 0x1
invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
:cond_23
:goto_23
return-void
:cond_24
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
#calls: Lcom/facebook/katana/HomeActivity;->getUnreadNotifications()Ljava/util/List;
invoke-static {v2}, Lcom/facebook/katana/HomeActivity;->access$10(Lcom/facebook/katana/HomeActivity;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_23
iget-object v2, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
#calls: Lcom/facebook/katana/HomeActivity;->showUnreadNotificationsBadge(I)V
invoke-static {v2, v1}, Lcom/facebook/katana/HomeActivity;->access$11(Lcom/facebook/katana/HomeActivity;I)V
goto :goto_23
.end method
.method public onPhotoDecodeComplete(Lcom/facebook/katana/binding/AppSession;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;
invoke-static {v0}, Lcom/facebook/katana/HomeActivity;->access$9(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/NotificationsAdapter;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/facebook/katana/NotificationsAdapter;->updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
return-void
.end method