.class final Lcom/spotify/mobile/android/ui/page/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/page/a/c;
.field final synthetic b:Lcom/spotify/mobile/android/ui/page/a/a;
.method constructor <init>(Lcom/spotify/mobile/android/ui/page/a/a;Lcom/spotify/mobile/android/ui/page/a/c;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->a:Lcom/spotify/mobile/android/ui/page/a/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/page/a/a$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/page/a/a;->a(Lcom/spotify/mobile/android/ui/page/a/a;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/page/a/a;->d()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->a:Lcom/spotify/mobile/android/ui/page/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a/a$1;->b:Lcom/spotify/mobile/android/ui/page/a/a;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/page/a/a$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method