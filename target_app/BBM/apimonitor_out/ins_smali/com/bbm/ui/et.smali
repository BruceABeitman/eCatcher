.class final Lcom/bbm/ui/et;
.super Ljava/lang/Object;
.source "QuickShareGlympseView.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/bbm/ui/QuickShareGlympseView;
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/et;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/et;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->f(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;
iput-boolean v1, v0, Lcom/bbm/ui/activities/ev;->y:Z
:cond_12
:goto_12
return v1
:cond_13
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v2, :cond_12
iget-object v0, p0, Lcom/bbm/ui/et;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->f(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;
iput-boolean v2, v0, Lcom/bbm/ui/activities/ev;->y:Z
goto :goto_12
.end method