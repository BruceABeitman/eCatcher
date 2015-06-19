.class  Lcom/facebook/katana/MyTabHost$1;
.super Ljava/lang/Object;
.source "MyTabHost.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic this$0:Lcom/facebook/katana/MyTabHost;
.method constructor <init>(Lcom/facebook/katana/MyTabHost;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MyTabHost$1;->this$0:Lcom/facebook/katana/MyTabHost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/MyTabHost$1; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sparse-switch p2, :sswitch_data_1a
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$1;->this$0:Lcom/facebook/katana/MyTabHost;
#getter for: Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;
invoke-static {v0}, Lcom/facebook/katana/MyTabHost;->access$0(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z
iget-object v0, p0, Lcom/facebook/katana/MyTabHost$1;->this$0:Lcom/facebook/katana/MyTabHost;
#getter for: Lcom/facebook/katana/MyTabHost;->mTabContent:Landroid/widget/FrameLayout;
invoke-static {v0}, Lcom/facebook/katana/MyTabHost;->access$0(Lcom/facebook/katana/MyTabHost;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
:goto_17
move v2, v0
const-string v1, " - Lcom/facebook/katana/MyTabHost$1; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:sswitch_18
const/4 v0, 0x0
goto :goto_17
:sswitch_data_1a
.sparse-switch
0x13 -> :sswitch_18
0x14 -> :sswitch_18
0x15 -> :sswitch_18
0x16 -> :sswitch_18
0x17 -> :sswitch_18
0x42 -> :sswitch_18
.end sparse-switch
.end method