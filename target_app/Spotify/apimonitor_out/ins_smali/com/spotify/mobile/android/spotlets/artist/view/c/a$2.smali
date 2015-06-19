.class final Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2;->a:Lcom/spotify/mobile/android/spotlets/artist/view/c/a;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/b/d;
if-nez v0, :cond_1c
const-string v0, "ListItemTag for view is null"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
instance-of v0, p1, Lcom/spotify/android/paste/widget/SectionHeaderView;
if-nez v0, :cond_1b
const-string v0, "onItemClick called with a null tag item for the view"
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
:cond_1b
:goto_1b
const-string v1, " - Lcom/spotify/mobile/android/spotlets/artist/view/c/a$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1c
new-instance v2, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;
invoke-direct {v2, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/a;)V
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/b/d;->a(Lcom/spotify/mobile/android/spotlets/artist/view/b/e;)V
goto :goto_1b
.end method