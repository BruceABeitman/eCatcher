.class final Lcom/bbm/ui/activities/aap;
.super Ljava/lang/Object;
.source "OwnProfileActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aap;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/aap;->a:Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->b(Lcom/bbm/ui/activities/OwnProfileActivity;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V
return-void
.end method