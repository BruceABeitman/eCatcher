.class final Lcom/instagram/android/feed/a/b/u;
.super Ljava/lang/Object;
.source "MediaSetRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/feed/a/b/v;
.field final synthetic b:Ljava/util/List;
.field final synthetic c:I
.field final synthetic d:I
.method constructor <init>(Lcom/instagram/android/feed/a/b/v;Ljava/util/List;II)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/feed/a/b/u;->a:Lcom/instagram/android/feed/a/b/v;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/u;->b:Ljava/util/List;
iput p3, p0, Lcom/instagram/android/feed/a/b/u;->c:I
iput p4, p0, Lcom/instagram/android/feed/a/b/u;->d:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/b/u; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/b/u;->a:Lcom/instagram/android/feed/a/b/v;
if-eqz v0, :cond_1a
iget-object v1, p0, Lcom/instagram/android/feed/a/b/u;->a:Lcom/instagram/android/feed/a/b/v;
iget-object v0, p0, Lcom/instagram/android/feed/a/b/u;->b:Ljava/util/List;
iget v2, p0, Lcom/instagram/android/feed/a/b/u;->c:I
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/z;
iget v2, p0, Lcom/instagram/android/feed/a/b/u;->d:I
mul-int/lit8 v2, v2, 0x3
iget v3, p0, Lcom/instagram/android/feed/a/b/u;->c:I
add-int/2addr v2, v3
invoke-interface {v1, v0, v2}, Lcom/instagram/android/feed/a/b/v;->a(Lcom/instagram/feed/d/z;I)V
:cond_1a
const-string v1, " - Lcom/instagram/android/feed/a/b/u; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method