.class final Lcom/spotify/mobile/android/ui/adapter/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/common/base/j;
.field private final a:Z
.field private final b:Z
.method public constructor <init>(ZZ)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/adapter/r;->a:Z
iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/adapter/r;->b:Z
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
check-cast p1, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;
if-nez p1, :cond_7
:goto_6
return v2
:cond_7
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item;->a()Ljava/util/HashSet;
move-result-object v3
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->d:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/r;->a:Z
if-eqz v0, :cond_3c
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->a:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3c
move v0, v1
:goto_1e
or-int/2addr v4, v0
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/r;->a:Z
if-nez v0, :cond_3e
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->b:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
move v0, v1
:goto_2c
or-int/2addr v0, v4
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/adapter/r;->b:Z
if-eqz v4, :cond_40
sget-object v4, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;->c:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter$Item$For;
invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_40
:goto_39
or-int v2, v0, v1
goto :goto_6
:cond_3c
move v0, v2
goto :goto_1e
:cond_3e
move v0, v2
goto :goto_2c
:cond_40
move v1, v2
goto :goto_39
.end method