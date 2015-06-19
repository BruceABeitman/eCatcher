.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/stuff/d;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$5;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
.registers 4
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
if-ne p2, v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$5;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->c(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
:goto_d
return-void
:cond_e
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
goto :goto_d
.end method