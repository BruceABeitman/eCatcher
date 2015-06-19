.class final Lcom/bbm/ui/activities/rn;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/ui/activities/rm;
.method constructor <init>(Lcom/bbm/ui/activities/rm;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rn;->a:Lcom/bbm/ui/activities/rm;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/rn;->a:Lcom/bbm/ui/activities/rm;
iget-object v0, v0, Lcom/bbm/ui/activities/rm;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->h(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/EmoticonInputPanel;
move-result-object v0
sget-object v1, Lcom/bbm/ui/bl;->b:Lcom/bbm/ui/bl;
invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setLowerPanel(Lcom/bbm/ui/bl;)V
return-void
.end method