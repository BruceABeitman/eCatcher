.class final Lcom/instagram/android/feed/comments/a/d;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/feed/d/b;
.field final synthetic b:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/d;->b:Lcom/instagram/android/feed/comments/a/a;
iput-object p2, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/feed/d/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/comments/a/d; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/feed/d/b;
invoke-static {v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V
const-string v1, " - Lcom/instagram/android/feed/comments/a/d; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method