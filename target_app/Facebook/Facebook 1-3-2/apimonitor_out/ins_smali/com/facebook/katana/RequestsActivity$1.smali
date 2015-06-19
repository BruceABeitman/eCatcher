.class  Lcom/facebook/katana/RequestsActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "RequestsActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/RequestsActivity;
.method constructor <init>(Lcom/facebook/katana/RequestsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/RequestsActivity$1;->this$0:Lcom/facebook/katana/RequestsActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method public onUserGetFriendRequestsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V
.registers 16
const/4 v8, 0x0
const/4 v0, 0x0
iget-object v5, p0, Lcom/facebook/katana/RequestsActivity$1;->this$0:Lcom/facebook/katana/RequestsActivity;
invoke-virtual {v5}, Lcom/facebook/katana/RequestsActivity;->getListView()Landroid/widget/ListView;
move-result-object v3
if-nez p6, :cond_23
iget-object v5, p0, Lcom/facebook/katana/RequestsActivity$1;->this$0:Lcom/facebook/katana/RequestsActivity;
iget-object v6, p0, Lcom/facebook/katana/RequestsActivity$1;->this$0:Lcom/facebook/katana/RequestsActivity;
const v7, 0x7f080107
invoke-virtual {v6, v7}, Lcom/facebook/katana/RequestsActivity;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/Toast;->show()V
:goto_1c
invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p1, p0}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
return-void
:cond_23
invoke-interface {p6}, Ljava/util/Map;->size()I
move-result v5
if-nez v5, :cond_4d
invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;
move-result-object v2
check-cast v2, Landroid/view/View;
const v5, 0x7f0b0013
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V
const v5, 0x7f08010b
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V
const v5, 0x7f0b0014
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
const/4 v5, 0x4
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
goto :goto_1c
:cond_4d
new-instance v0, Lcom/facebook/katana/RequestsAdapter;
iget-object v5, p0, Lcom/facebook/katana/RequestsActivity$1;->this$0:Lcom/facebook/katana/RequestsActivity;
iget-object v6, p0, Lcom/facebook/katana/RequestsActivity$1;->this$0:Lcom/facebook/katana/RequestsActivity;
#getter for: Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-static {v6}, Lcom/facebook/katana/RequestsActivity;->access$10(Lcom/facebook/katana/RequestsActivity;)Lcom/facebook/katana/binding/AppSession;
move-result-object v6
invoke-direct {v0, v5, v6, p6}, Lcom/facebook/katana/RequestsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Ljava/util/Map;)V
goto :goto_1c
.end method