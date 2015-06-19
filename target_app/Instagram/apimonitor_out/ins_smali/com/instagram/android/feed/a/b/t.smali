.class final Lcom/instagram/android/feed/a/b/t;
.super Ljava/lang/Object;
.source "MediaSetRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/z;
.field final synthetic b:Lcom/instagram/common/ui/widget/imageview/IgImageView;
.field final synthetic c:Landroid/widget/CheckBox;
.method constructor <init>(Lcom/instagram/feed/d/z;Lcom/instagram/common/ui/widget/imageview/IgImageView;Landroid/widget/CheckBox;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/feed/a/b/t;->a:Lcom/instagram/feed/d/z;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/t;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;
iput-object p3, p0, Lcom/instagram/android/feed/a/b/t;->c:Landroid/widget/CheckBox;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/a/b/t; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v1
iget-object v0, p0, Lcom/instagram/android/feed/a/b/t;->a:Lcom/instagram/feed/d/z;
check-cast v0, Lcom/instagram/android/h/b;
invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/h/b;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/b/t;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/t;->c:Landroid/widget/CheckBox;
iget-object v2, p0, Lcom/instagram/android/feed/a/b/t;->a:Lcom/instagram/feed/d/z;
invoke-static {v0, v1, v2}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/z;)V
const-string v1, " - Lcom/instagram/android/feed/a/b/t; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method