.class final Lcom/instagram/android/people/c/d;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/l;
.field final synthetic b:Lcom/instagram/android/people/c/a;
.method constructor <init>(Lcom/instagram/android/people/c/a;Lcom/instagram/feed/d/l;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/people/c/d;->b:Lcom/instagram/android/people/c/a;
iput-object p2, p0, Lcom/instagram/android/people/c/d;->a:Lcom/instagram/feed/d/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/people/c/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/people/c/d;->a:Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->X()Z
move-result v0
if-nez v0, :cond_9
:goto_8
const-string v1, " - Lcom/instagram/android/people/c/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
new-instance v0, Lcom/instagram/android/c/a/h;
iget-object v1, p0, Lcom/instagram/android/people/c/d;->b:Lcom/instagram/android/people/c/a;
invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/people/c/d;->b:Lcom/instagram/android/people/c/a;
invoke-static {v2}, Lcom/instagram/android/people/c/a;->g(Lcom/instagram/android/people/c/a;)Landroid/support/v4/app/an;
move-result-object v2
const-string v3, "remove"
iget-object v4, p0, Lcom/instagram/android/people/c/d;->a:Lcom/instagram/feed/d/l;
new-instance v5, Lcom/instagram/android/people/c/l;
iget-object v6, p0, Lcom/instagram/android/people/c/d;->b:Lcom/instagram/android/people/c/a;
const-string v7, "remove"
const/4 v8, 0x0
invoke-direct {v5, v6, v7, v8}, Lcom/instagram/android/people/c/l;-><init>(Lcom/instagram/android/people/c/a;Ljava/lang/String;B)V
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/h;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/h;->h()V
goto :goto_8
.end method