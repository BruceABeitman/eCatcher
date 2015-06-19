.class final Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$6;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$6;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->m(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Landroid/widget/ScrollView;
move-result-object v0
const/16 v1, 0x82
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z
return-void
.end method