.class final Lcom/instagram/android/feed/a/b/d;
.super Ljava/lang/Object;
.source "FeedMediaRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/l;
.field final synthetic b:Landroid/view/View;
.field final synthetic c:I
.field final synthetic d:Lcom/instagram/android/feed/a/b/a;
.method constructor <init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;Landroid/view/View;I)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/feed/a/b/d;->d:Lcom/instagram/android/feed/a/b/a;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/d;->a:Lcom/instagram/feed/d/l;
iput-object p3, p0, Lcom/instagram/android/feed/a/b/d;->b:Landroid/view/View;
iput p4, p0, Lcom/instagram/android/feed/a/b/d;->c:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/b/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/b/d;->d:Lcom/instagram/android/feed/a/b/a;
invoke-static {v0}, Lcom/instagram/android/feed/a/b/a;->f(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/feed/a/b/f;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/b/d;->a:Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/android/feed/a/b/d;->b:Landroid/view/View;
iget v3, p0, Lcom/instagram/android/feed/a/b/d;->c:I
invoke-interface {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/b/f;->a(Lcom/instagram/feed/d/l;Landroid/view/View;I)V
const-string v1, " - Lcom/instagram/android/feed/a/b/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method