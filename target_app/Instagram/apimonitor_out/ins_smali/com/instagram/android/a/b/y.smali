.class final Lcom/instagram/android/a/b/y;
.super Ljava/lang/Object;
.source "PepperMegaphoneRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/e/b;
.method constructor <init>(Lcom/instagram/feed/e/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/a/b/y;->a:Lcom/instagram/feed/e/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/a/b/y; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/a/b/y;->a:Lcom/instagram/feed/e/b;
sget-object v1, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
invoke-interface {v0, v1}, Lcom/instagram/feed/e/b;->b(Lcom/instagram/feed/f/d;)V
const-string v1, " - Lcom/instagram/android/a/b/y; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method