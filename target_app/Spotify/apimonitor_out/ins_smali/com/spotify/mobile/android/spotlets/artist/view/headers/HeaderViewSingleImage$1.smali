.class final Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;
move-result-object v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;->a(Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/b;
:cond_d
const-string v1, " - Lcom/spotify/mobile/android/spotlets/artist/view/headers/HeaderViewSingleImage$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method