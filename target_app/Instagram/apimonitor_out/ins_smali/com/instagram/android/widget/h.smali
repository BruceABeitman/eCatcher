.class public final Lcom/instagram/android/widget/h;
.super Ljava/lang/Object;
.source "FindPeopleButtonsHelper.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/widget/e;
.method public constructor <init>(Lcom/instagram/android/widget/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/widget/h;->a:Lcom/instagram/android/widget/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/widget/h; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v1
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/instagram/android/widget/h;->a:Lcom/instagram/android/widget/e;
invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/android/widget/e;->a(Lcom/instagram/android/widget/e;Ljava/lang/String;)V
:goto_13
const-string v1, " - Lcom/instagram/android/widget/h; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_14
iget-object v1, p0, Lcom/instagram/android/widget/h;->a:Lcom/instagram/android/widget/e;
invoke-static {v1}, Lcom/instagram/android/widget/e;->a(Lcom/instagram/android/widget/e;)Landroid/widget/BaseAdapter;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
iget-object v1, p0, Lcom/instagram/android/widget/h;->a:Lcom/instagram/android/widget/e;
invoke-static {v1}, Lcom/instagram/android/widget/e;->b(Lcom/instagram/android/widget/e;)Landroid/support/v4/app/Fragment;
move-result-object v1
sget-object v2, Lcom/instagram/share/b/f;->a:[Ljava/lang/String;
iget-object v3, p0, Lcom/instagram/android/widget/h;->a:Lcom/instagram/android/widget/e;
invoke-static {v3}, Lcom/instagram/android/widget/e;->c(Lcom/instagram/android/widget/e;)Lcom/instagram/android/widget/g;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
goto :goto_13
.end method