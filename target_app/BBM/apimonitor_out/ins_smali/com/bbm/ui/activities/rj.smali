.class final Lcom/bbm/ui/activities/rj;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/rj;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 8
iget-object v0, p0, Lcom/bbm/ui/activities/rj;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->b(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/bbm/ui/activities/rj;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->a(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
return-void
.end method