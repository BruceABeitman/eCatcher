.class final Lcom/bbm/ui/e/l;
.super Ljava/lang/Object;
.source "EphemeralPictureHolder.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/view/View;
.field final synthetic b:Lcom/bbm/ui/e/k;
.method constructor <init>(Lcom/bbm/ui/e/k;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
iput-object p2, p0, Lcom/bbm/ui/e/l;->a:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
const-string v0, "Ephemeral Picture Pressed"
const-class v1, Lcom/bbm/ui/e/j;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
invoke-static {v0}, Lcom/bbm/ui/e/k;->a(Lcom/bbm/ui/e/k;)Lcom/bbm/d/fs;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/fs;->i:Ljava/lang/String;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
invoke-static {v0}, Lcom/bbm/ui/e/k;->a(Lcom/bbm/ui/e/k;)Lcom/bbm/d/fs;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/fs;->i:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_28
:cond_1f
const-string v0, "no largestPicturePath, aborting"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_27
return-void
:cond_28
iget-object v0, p0, Lcom/bbm/ui/e/l;->a:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
iget-object v0, v0, Lcom/bbm/ui/e/k;->a:Lcom/bbm/ui/e/j;
invoke-static {v0}, Lcom/bbm/ui/e/j;->a(Lcom/bbm/ui/e/j;)Landroid/app/Activity;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
invoke-static {v0}, Lcom/bbm/ui/e/k;->b(Lcom/bbm/ui/e/k;)Lcom/bbm/d/eu;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
invoke-static {v0}, Lcom/bbm/ui/e/k;->a(Lcom/bbm/ui/e/k;)Lcom/bbm/d/fs;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/e/l;->b:Lcom/bbm/ui/e/k;
iget-object v0, v0, Lcom/bbm/ui/e/k;->a:Lcom/bbm/ui/e/j;
invoke-static {v0}, Lcom/bbm/ui/e/j;->a(Lcom/bbm/ui/e/j;)Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->o:Lcom/bbm/ui/activities/jm;
invoke-static {v1, v2, v3, v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->a(Landroid/app/Activity;Lcom/bbm/d/eu;Lcom/bbm/d/fs;Lcom/bbm/ui/activities/jm;)V
goto :goto_27
.end method