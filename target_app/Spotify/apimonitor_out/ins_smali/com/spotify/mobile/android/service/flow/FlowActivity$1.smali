.class final Lcom/spotify/mobile/android/service/flow/FlowActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/s;
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/FlowActivity;
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/FlowActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity$1;->a:Lcom/spotify/mobile/android/service/flow/FlowActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity$1;->a:Lcom/spotify/mobile/android/service/flow/FlowActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->y_()Landroid/support/v4/app/r;
move-result-object v0
const-string v1, "flow_fragment"
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->o()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity$1;->a:Lcom/spotify/mobile/android/service/flow/FlowActivity;
check-cast v0, Lcom/spotify/mobile/android/service/flow/a;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/FlowActivity;Lcom/spotify/mobile/android/service/flow/a;)Lcom/spotify/mobile/android/service/flow/a;
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity$1;->a:Lcom/spotify/mobile/android/service/flow/FlowActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/FlowActivity;Lcom/spotify/mobile/android/service/flow/a;)Lcom/spotify/mobile/android/service/flow/a;
goto :goto_1b
.end method