.class final Lcom/spotify/mobile/android/service/flow/login/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/flow/login/a/d;
.field private final a:Z
.field private final b:Z
.field private final c:Z
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "pretick_eula"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->a:Z
const-string v0, "can_accept_licenses_in_one_step"
const/4 v1, 0x1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->b:Z
const-string v0, "requires_marketing_opt_in"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->c:Z
const-string v0, "marketing_opt_in_contact_us_url"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->d:Ljava/lang/String;
const-string v0, "country"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->e:Ljava/lang/String;
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->b:Z
return v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->a:Z
return v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->c:Z
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->d:Ljava/lang/String;
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/a/c;->e:Ljava/lang/String;
return-object v0
.end method