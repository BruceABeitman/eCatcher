.class final Lcom/bbm/ui/activities/ade;
.super Ljava/lang/Object;
.source "ReportProblemActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/bbm/ui/activities/ReportProblemActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ade;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 5
const-string v0, "mOnRootTouchListener onTouch"
const-class v1, Lcom/bbm/ui/activities/ReportProblemActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/activities/ade;->a:Lcom/bbm/ui/activities/ReportProblemActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
:cond_13
const/4 v0, 0x0
return v0
.end method