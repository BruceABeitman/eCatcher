.class public final Lcom/spotify/mobile/android/service/v;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Z
.field private final b:Z
.method public constructor <init>(Landroid/os/Bundle;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_b
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/v;->a:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/service/v;->b:Z
:goto_a
return-void
:cond_b
const-string v0, "with_radio"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->a:Z
const-string v0, "shuffle_restricted"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->b:Z
goto :goto_a
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "dmca-radio"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->a:Z
const-string v0, "shuffle-restricted"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->b:Z
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
const-string v0, "with_radio"
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/v;->a:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "shuffle_restricted"
iget-boolean v1, p0, Lcom/spotify/mobile/android/service/v;->b:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->a:Z
return v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->b:Z
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/service/v;
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/v;->a:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/v;->a:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-boolean v2, p0, Lcom/spotify/mobile/android/service/v;->b:Z
iget-boolean v3, p1, Lcom/spotify/mobile/android/service/v;->b:Z
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/v;->a:Z
if-eqz v0, :cond_f
move v0, v1
:goto_7
mul-int/lit8 v0, v0, 0x1f
iget-boolean v3, p0, Lcom/spotify/mobile/android/service/v;->b:Z
if-eqz v3, :cond_11
:goto_d
add-int/2addr v0, v1
return v0
:cond_f
move v0, v2
goto :goto_7
:cond_11
move v1, v2
goto :goto_d
.end method