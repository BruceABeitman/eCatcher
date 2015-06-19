.class public final Lcom/spotify/mobile/android/spotlets/common/persistence/e;
.super Lcom/spotify/mobile/android/ui/fragments/k;
.source "SourceFile"
.field private a:Z
.field private b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
.field private c:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/k;-><init>()V
return-void
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/common/persistence/e;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_15
const-string v2, "feature_name"
invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_15
const-string v2, "user"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->c:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->h()Landroid/os/Bundle;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
const-string v1, "user"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->c:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "feature_name"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3e
new-instance v1, Lcom/spotify/mobile/android/spotlets/common/persistence/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->h()Landroid/os/Bundle;
move-result-object v0
const-string v2, "feature_name"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {v1, p0, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/e;Ljava/lang/String;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a:Z
:cond_3e
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Landroid/os/Bundle;)V
return-void
.end method
.method final c()Lcom/spotify/mobile/android/spotlets/common/persistence/a;
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a:Z
const-string v1, "Cannot call getFeaturePersistence with no feature name"
invoke-static {v0, v1}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
return-object v0
.end method