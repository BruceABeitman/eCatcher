.class final Lcom/bbm/ui/activities/rc;
.super Ljava/lang/Object;
.source "GroupPictureActivity.java"
.implements Lcom/bbm/ui/cx;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rc;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/rc;->a:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300a7
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method