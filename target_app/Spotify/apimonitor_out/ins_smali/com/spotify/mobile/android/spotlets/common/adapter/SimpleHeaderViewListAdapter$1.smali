.class final Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/h;
move-result-object v0
if-nez v0, :cond_9
:goto_8
:cond_8
const-string v1, " - Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;
if-ne v0, p1, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/h;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->b(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$FixedViewType;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$FixedViewType;
goto :goto_8
:cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;
if-ne v0, p1, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->a(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Lcom/spotify/mobile/android/spotlets/common/adapter/h;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;->c(Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;)Landroid/widget/ListView$FixedViewInfo;
move-result-object v0
iget-object v0, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$FixedViewType;->b:Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter$FixedViewType;
goto :goto_8
.end method