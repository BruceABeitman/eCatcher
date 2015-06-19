.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"
.implements Landroid/view/View$OnDragListener;
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenListener;
.implements Landroid/view/View$OnClickListener;
.field private final mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
.method public constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
invoke-interface {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;->onMenuClick(Landroid/view/View;)V
const-string v1, " - Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onClose()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;->onMenuClose()V
return-void
.end method
.method public onClosed()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;->onMenuClosed()V
return-void
.end method
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler; onDrag "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
invoke-interface {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;->onMenuDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler; onDrag"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onOpen()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;->onMenuOpen()V
return-void
.end method
.method public onOpened()V
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler;->mListener:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;
invoke-interface {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper$MenuStateHandler$MenuStateListener;->onMenuOpened()V
return-void
.end method