.class final Lcom/instagram/android/feed/a/b/q;
.super Ljava/lang/Object;
.source "MediaHeaderViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/l;
.field final synthetic b:Lcom/instagram/android/feed/a/b/m;
.method constructor <init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/a/b/q;->b:Lcom/instagram/android/feed/a/b/m;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/q;->a:Lcom/instagram/feed/d/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/b/q; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/feed/d/a;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/q;->b:Lcom/instagram/android/feed/a/b/m;
invoke-static {v1}, Lcom/instagram/android/feed/a/b/m;->a(Lcom/instagram/android/feed/a/b/m;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/android/feed/d/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/android/feed/d/a;->a()V
const-string v0, "sponsored_label"
iget-object v1, p0, Lcom/instagram/android/feed/a/b/q;->a:Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/android/feed/a/b/q;->b:Lcom/instagram/android/feed/a/b/m;
invoke-static {v2}, Lcom/instagram/android/feed/a/b/m;->b(Lcom/instagram/android/feed/a/b/m;)Lcom/instagram/feed/g/a;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
const-string v1, " - Lcom/instagram/android/feed/a/b/q; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method