.class final Lcom/bbm/ui/activities/mr;
.super Ljava/lang/Object;
.source "GroupConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupConversationActivity;

.field private b:F

.field private c:F

.field private d:F

.field private e:F


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bbm/ui/activities/mr;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bbm/ui/activities/mr;->d:F

    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->b(Lcom/bbm/ui/activities/GroupConversationActivity;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bbm/ui/activities/mr;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bbm/ui/activities/mr;->e:F

    iget-object v0, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/bbm/ui/activities/mr;->e:F

    iget v1, p0, Lcom/bbm/ui/activities/mr;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_68

    iget-object v0, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonInputPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_68
    iget v0, p0, Lcom/bbm/ui/activities/mr;->c:F

    iget v1, p0, Lcom/bbm/ui/activities/mr;->b:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    iget v0, p0, Lcom/bbm/ui/activities/mr;->e:F

    iget v1, p0, Lcom/bbm/ui/activities/mr;->d:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4248

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    iget v0, p0, Lcom/bbm/ui/activities/mr;->e:F

    iget v1, p0, Lcom/bbm/ui/activities/mr;->d:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3db8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/activities/mr;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->h()V

    goto :goto_12
.end method
