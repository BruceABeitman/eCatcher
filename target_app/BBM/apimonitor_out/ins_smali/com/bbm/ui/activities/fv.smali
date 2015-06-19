.class final Lcom/bbm/ui/activities/fv;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.field private b:F
.field private c:F
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
const/4 v0, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-nez v1, :cond_33
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/bbm/ui/activities/fv;->b:F
iget-object v1, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F
move-result v1
float-to-int v1, v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F
move-result v2
float-to-int v2, v2
iget-object v3, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/bbm/util/ff;->a(IILandroid/view/View;)Z
move-result v1
if-nez v1, :cond_78
:goto_32
return v0
:cond_33
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_78
iget-object v0, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->G(Lcom/bbm/ui/activities/ConversationActivity;)Z
move-result v0
if-nez v0, :cond_78
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/fv;->c:F
iget-object v0, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_78
iget-object v0, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_78
iget v0, p0, Lcom/bbm/ui/activities/fv;->c:F
iget v1, p0, Lcom/bbm/ui/activities/fv;->b:F
sub-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
const/high16 v1, 0x41f0
cmpg-float v0, v0, v1
if-gez v0, :cond_78
const-string v0, "mOnRootTouchListener Clicked"
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/fv;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
:cond_78
const/4 v0, 0x0
goto :goto_32
.end method