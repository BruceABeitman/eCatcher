.class final Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$5;
.super Lcom/spotify/mobile/android/util/e;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-direct {p0}, Lcom/spotify/mobile/android/util/e;-><init>()V
return-void
.end method
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->e(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$5;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->h(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
return-void
.end method