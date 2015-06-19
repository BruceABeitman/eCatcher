.class final Lcom/spotify/mobile/android/spotlets/b/a$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$8;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/b/a$8; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/provider/m;->a:Landroid/net/Uri;
const-class v1, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$8;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->x:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v1, v2, v0, p4, p5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$8;->a:Lcom/spotify/mobile/android/spotlets/b/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->d(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/b/a$8; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method