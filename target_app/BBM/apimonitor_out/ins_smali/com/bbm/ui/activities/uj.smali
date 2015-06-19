.class final Lcom/bbm/ui/activities/uj;
.super Ljava/lang/Object;
.source "InviteActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/uj;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/uj;->a:Lcom/bbm/ui/activities/InviteActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
const/4 v0, 0x0
return v0
.end method