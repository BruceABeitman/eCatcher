.class public final Lcom/spotify/mobile/android/ui/activity/q;
.super Lcom/spotify/mobile/android/ui/fragments/x;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/x;-><init>()V
return-void
.end method
.method public static b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/q;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/ui/activity/q;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/activity/q;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "license_url"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/q;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method protected final a()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/q;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "license_url"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/q;->c(Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/q;->s()V
return-void
.end method