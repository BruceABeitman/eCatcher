.class final Lcom/spotify/mobile/android/ui/activity/upsell/r$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/r;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/r$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/r;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/r;->a(Lcom/spotify/mobile/android/ui/activity/upsell/r;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/cosmos/android/DeferredResolver;->destroy()V
const-string v0, "Cosmos resolver destroyed"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
return-object v0
.end method