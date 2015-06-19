.class final Lcom/instagram/base/activity/tabactivity/b;
.super Ljava/lang/Object;
.source "IgTabHost.java"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
.method constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;)V
.registers 2
iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/b;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/base/activity/tabactivity/b; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sparse-switch p2, :sswitch_data_1a
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/b;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/IgTabHost;)Landroid/widget/FrameLayout;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z
iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/b;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;
invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/IgTabHost;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
:goto_17
move v2, v0
const-string v1, " - Lcom/instagram/base/activity/tabactivity/b; onKey"
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