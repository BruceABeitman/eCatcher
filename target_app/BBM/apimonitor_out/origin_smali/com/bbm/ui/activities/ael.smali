.class final Lcom/bbm/ui/activities/ael;
.super Ljava/lang/Object;
.source "SelectContactActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ael;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/ael;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/activities/ael;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/activities/ael;->a:Lcom/bbm/ui/activities/SelectContactActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
