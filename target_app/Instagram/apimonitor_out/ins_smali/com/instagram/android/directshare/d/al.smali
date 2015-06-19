.class final Lcom/instagram/android/directshare/d/al;
.super Ljava/lang/Object;
.source "DirectSharePermalinkRecipientsRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/directshare/d/am;
.field final synthetic b:Ljava/util/List;
.field final synthetic c:I
.field final synthetic d:Lcom/instagram/android/directshare/widget/RecipientView;
.method constructor <init>(Lcom/instagram/android/directshare/d/am;Ljava/util/List;ILcom/instagram/android/directshare/widget/RecipientView;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/directshare/d/al;->a:Lcom/instagram/android/directshare/d/am;
iput-object p2, p0, Lcom/instagram/android/directshare/d/al;->b:Ljava/util/List;
iput p3, p0, Lcom/instagram/android/directshare/d/al;->c:I
iput-object p4, p0, Lcom/instagram/android/directshare/d/al;->d:Lcom/instagram/android/directshare/widget/RecipientView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/al; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/android/directshare/d/al;->a:Lcom/instagram/android/directshare/d/am;
iget-object v0, p0, Lcom/instagram/android/directshare/d/al;->b:Ljava/util/List;
iget v2, p0, Lcom/instagram/android/directshare/d/al;->c:I
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/model/b/a;
iget-object v2, p0, Lcom/instagram/android/directshare/d/al;->d:Lcom/instagram/android/directshare/widget/RecipientView;
invoke-interface {v1, v0, v2}, Lcom/instagram/android/directshare/d/am;->a(Lcom/instagram/model/b/a;Landroid/view/View;)V
const-string v1, " - Lcom/instagram/android/directshare/d/al; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method