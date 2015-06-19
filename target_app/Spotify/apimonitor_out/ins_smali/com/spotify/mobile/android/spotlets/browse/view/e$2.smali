.class final Lcom/spotify/mobile/android/spotlets/browse/view/e$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:I
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Ljava/lang/String;
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Lcom/spotify/mobile/android/spotlets/browse/view/e;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/view/e;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->e:Lcom/spotify/mobile/android/spotlets/browse/view/e;
iput p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->a:I
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/view/e$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->e:Lcom/spotify/mobile/android/spotlets/browse/view/e;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->a(Lcom/spotify/mobile/android/spotlets/browse/view/e;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->e:Lcom/spotify/mobile/android/spotlets/browse/view/e;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->getContext()Landroid/content/Context;
move-result-object v1
iget v2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->a:I
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->b:Ljava/lang/String;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->c:Ljava/lang/String;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;->d:Ljava/lang/String;
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/view/e$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method