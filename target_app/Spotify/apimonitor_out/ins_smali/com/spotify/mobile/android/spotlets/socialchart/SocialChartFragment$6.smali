.class  Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->e(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->g(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->h(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->h(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V
goto :goto_1b
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 4
check-cast p2, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->e(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/c;Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
iput-object p2, v0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->f(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
return-void
.end method