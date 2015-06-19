.class final Lcom/instagram/i/a/a/g;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderMultiMedia.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/i/a/a/a;
.field final synthetic b:Lcom/instagram/i/d/c;
.field final synthetic c:I
.method constructor <init>(Lcom/instagram/i/a/a/a;Lcom/instagram/i/d/c;I)V
.registers 4
iput-object p1, p0, Lcom/instagram/i/a/a/g;->a:Lcom/instagram/i/a/a/a;
iput-object p2, p0, Lcom/instagram/i/a/a/g;->b:Lcom/instagram/i/d/c;
iput p3, p0, Lcom/instagram/i/a/a/g;->c:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/i/a/a/g; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/i/a/a/g;->a:Lcom/instagram/i/a/a/a;
iget-object v0, p0, Lcom/instagram/i/a/a/g;->b:Lcom/instagram/i/d/c;
invoke-virtual {v0}, Lcom/instagram/i/d/c;->h()Ljava/util/List;
move-result-object v0
iget v2, p0, Lcom/instagram/i/a/a/g;->c:I
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/i/d/f;
invoke-virtual {v0}, Lcom/instagram/i/d/f;->a()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Lcom/instagram/i/a/a/a;->b(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/i/a/a/g; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method