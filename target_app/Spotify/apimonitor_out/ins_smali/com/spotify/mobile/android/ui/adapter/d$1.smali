.class final Lcom/spotify/mobile/android/ui/adapter/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:I
.field final synthetic b:Lcom/spotify/mobile/android/ui/adapter/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/adapter/d;I)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->b:Lcom/spotify/mobile/android/ui/adapter/d;
iput p2, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/adapter/d$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->b:Lcom/spotify/mobile/android/ui/adapter/d;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/d;->a:Lcom/spotify/mobile/android/ui/adapter/b;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/adapter/b;->k:Lcom/spotify/mobile/android/ui/adapter/c;
iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->a:I
iget v1, p0, Lcom/spotify/mobile/android/ui/adapter/d$1;->a:I
int-to-long v1, v1
invoke-interface {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/c;->a(Landroid/view/View;J)V
const-string v1, " - Lcom/spotify/mobile/android/ui/adapter/d$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method