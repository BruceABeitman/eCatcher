.class final Lcom/instagram/android/fragment/bf;
.super Ljava/lang/Object;
.source "FindContactListFriendsPromptFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/bb;
.method constructor <init>(Lcom/instagram/android/fragment/bb;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/bf;->a:Lcom/instagram/android/fragment/bb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/bf; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/widget/a;
iget-object v1, p0, Lcom/instagram/android/fragment/bf;->a:Lcom/instagram/android/fragment/bb;
invoke-virtual {v1}, Lcom/instagram/android/fragment/bb;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/bf;->a:Lcom/instagram/android/fragment/bb;
invoke-direct {v0, v1, v2}, Lcom/instagram/android/widget/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
iget-object v1, p0, Lcom/instagram/android/fragment/bf;->a:Lcom/instagram/android/fragment/bb;
sget v2, Lcom/facebook/az;->find_friends_item_from_my_contact_list:I
invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/bb;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/a;->a(Ljava/lang/String;)Lcom/instagram/android/widget/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/widget/a;->a()Lcom/instagram/android/widget/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/widget/a;->b()V
const-string v1, " - Lcom/instagram/android/fragment/bf; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method