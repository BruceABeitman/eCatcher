.class final Lcom/instagram/android/a/b/z;
.super Ljava/lang/Object;
.source "PepperMegaphoneRowViewBinder.java"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/instagram/feed/e/b;
.method constructor <init>(Landroid/content/Context;Lcom/instagram/feed/e/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/a/b/z;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/a/b/z;->b:Lcom/instagram/feed/e/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/a/b/z; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/feed/e/c;
iget-object v1, p0, Lcom/instagram/android/a/b/z;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/android/a/b/z;->b:Lcom/instagram/feed/e/b;
sget-object v3, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/feed/e/c;-><init>(Landroid/content/Context;Lcom/instagram/feed/e/b;Lcom/instagram/feed/f/d;)V
invoke-virtual {v0}, Lcom/instagram/feed/e/c;->a()V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/instagram/android/a/b/z; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method