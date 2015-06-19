.class final Landroid/support/v7/internal/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/v;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
return-void
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/v; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Landroid/support/v7/internal/widget/v; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/v; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
if-ne p2, v0, :cond_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->j()Z
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/x;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/x;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/x;->run()V
:cond_2f
const-string v1, " - Landroid/support/v7/internal/widget/v; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method