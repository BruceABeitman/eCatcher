.class final Lcom/bbm/ui/activities/ul;
.super Ljava/lang/Object;
.source "InviteActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ul;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ul;->a:Lcom/bbm/ui/activities/InviteActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->r(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
return-void
.end method