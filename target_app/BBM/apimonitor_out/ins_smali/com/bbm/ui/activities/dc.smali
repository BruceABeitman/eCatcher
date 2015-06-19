.class final Lcom/bbm/ui/activities/dc;
.super Lcom/bbm/j/k;
.source "ChannelOwnerProfileActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/dc;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-boolean v1, v0, Lcom/bbm/f/ae;->i:Z
if-eqz v1, :cond_22
iget-object v1, v0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_22
iget-object v1, p0, Lcom/bbm/ui/activities/dc;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->v(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/TextView;
move-result-object v1
iget-object v0, v0, Lcom/bbm/f/ae;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_22
return-void
.end method