.class final Lcom/instagram/android/people/b/r;
.super Ljava/lang/Object;
.source "PhotosOfYouOptionsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/people/b/q;
.method constructor <init>(Lcom/instagram/android/people/b/q;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/r;->a:Lcom/instagram/android/people/b/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/people/b/r; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/people/b/r;->a:Lcom/instagram/android/people/b/q;
invoke-static {v0}, Lcom/instagram/android/people/b/q;->a(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->a()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/people/b/r;->a:Lcom/instagram/android/people/b/q;
sget v1, Lcom/instagram/android/c/a/j;->b:I
invoke-static {v0, v1}, Lcom/instagram/android/people/b/q;->a(Lcom/instagram/android/people/b/q;I)V
:cond_13
const-string v1, " - Lcom/instagram/android/people/b/r; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method