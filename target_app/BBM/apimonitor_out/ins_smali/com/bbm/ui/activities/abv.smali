.class final Lcom/bbm/ui/activities/abv;
.super Ljava/lang/Object;
.source "ProfileActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/ProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/abv;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/abv;->a:Lcom/bbm/ui/activities/ProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ProfileActivity;->l(Lcom/bbm/ui/activities/ProfileActivity;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V
return-void
.end method