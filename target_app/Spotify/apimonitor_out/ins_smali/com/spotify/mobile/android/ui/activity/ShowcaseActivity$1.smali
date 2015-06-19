.class final Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->a(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/support/v4/view/ViewPager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I
move-result v0
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->b(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Lcom/spotify/mobile/android/ui/activity/m;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/m;->b()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->a(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/support/v4/view/ViewPager;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->a(IZ)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method