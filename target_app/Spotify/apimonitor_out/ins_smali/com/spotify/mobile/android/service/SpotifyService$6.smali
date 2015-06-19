.class final Lcom/spotify/mobile/android/service/SpotifyService$6;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$6;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected final onPreExecute()V
.registers 2
const-string v0, "This dummy task must be called from the main thread"
invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V
invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V
return-void
.end method