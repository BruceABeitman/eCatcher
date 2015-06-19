.class final Lcom/instagram/android/creation/a/at;
.super Ljava/lang/Object;
.source "ShareLaterFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/creation/a/ar;
.method constructor <init>(Lcom/instagram/android/creation/a/ar;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/creation/a/at; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-static {v0}, Lcom/instagram/android/creation/a/ar;->c(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/sharelater/ShareLaterMedia;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-static {v1}, Lcom/instagram/android/creation/a/ar;->b(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/android/widget/IgAutoCompleteTextView;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/sharelater/ShareLaterMedia;->a(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/c/a/t;
iget-object v1, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-virtual {v1}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-virtual {v2}, Lcom/instagram/android/creation/a/ar;->y()Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-static {v3}, Lcom/instagram/android/creation/a/ar;->d(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/api/j/a;
move-result-object v3
iget-object v4, p0, Lcom/instagram/android/creation/a/at;->a:Lcom/instagram/android/creation/a/ar;
invoke-static {v4}, Lcom/instagram/android/creation/a/ar;->c(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/sharelater/ShareLaterMedia;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/c/a/t;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;Lcom/instagram/sharelater/ShareLaterMedia;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/t;->h()V
const-string v1, " - Lcom/instagram/android/creation/a/at; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method