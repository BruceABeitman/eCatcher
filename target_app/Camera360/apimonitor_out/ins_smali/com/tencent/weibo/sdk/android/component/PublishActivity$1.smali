.class  Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;
.super Landroid/os/Handler;
.source "PublishActivity.java"
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)V
.registers 2
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 8
const/4 v5, 0x0
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget v0, p1, Landroid/os/Message;->what:I
const/4 v2, 0x5
if-ne v0, v2, :cond_1c
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_big:Landroid/widget/FrameLayout;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$0(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/FrameLayout;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->frameLayout_icon:Landroid/widget/FrameLayout;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$1(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/FrameLayout;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
:cond_1b
:goto_1b
return-void
:cond_1c
if-nez v0, :cond_79
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->popupWindow:Landroid/widget/PopupWindow;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$2(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/PopupWindow;
move-result-object v2
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->layout_set:Landroid/widget/LinearLayout;
invoke-static {v3}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$3(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/LinearLayout;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
const-string/jumbo v3, "input_method"
invoke-virtual {v2, v3}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/inputmethod/InputMethodManager;
const-string/jumbo v2, "alive"
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z
move-result v2
if-eqz v2, :cond_79
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->editText_text:Landroid/widget/EditText;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$4(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
invoke-virtual {v1, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
const-string/jumbo v2, "alive"
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z
move-result v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_79
const/16 v2, 0xa
if-ne v0, v2, :cond_8f
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$5(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/ImageButton;
move-result-object v2
const-string/jumbo v3, "dingwei_icon_hover2x"
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-static {v3, v4}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_8f
const/16 v2, 0xf
if-ne v0, v2, :cond_1b
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
const-string/jumbo v3, "\u5b9a\u4f4d\u5931\u8d25"
invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
#getter for: Lcom/tencent/weibo/sdk/android/component/PublishActivity;->button_location:Landroid/widget/ImageButton;
invoke-static {v2}, Lcom/tencent/weibo/sdk/android/component/PublishActivity;->access$5(Lcom/tencent/weibo/sdk/android/component/PublishActivity;)Landroid/widget/ImageButton;
move-result-object v2
const-string/jumbo v3, "dingwei_icon2x"
iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/PublishActivity$1;->this$0:Lcom/tencent/weibo/sdk/android/component/PublishActivity;
invoke-static {v3, v4}, Lcom/tencent/weibo/sdk/android/api/util/BackGroudSeletor;->getdrawble(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_1b
.end method