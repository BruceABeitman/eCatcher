.class final Lcom/crashlytics/android/internal/aO;
.super Lcom/crashlytics/android/internal/Z;
.source "SourceFile"
.implements Lcom/crashlytics/android/internal/ba;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;)V
.registers 5
sget-object v0, Lcom/crashlytics/android/internal/ax;->a:Lcom/crashlytics/android/internal/ax;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/crashlytics/android/internal/aO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;Lcom/crashlytics/android/internal/ax;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;Lcom/crashlytics/android/internal/ax;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/crashlytics/android/internal/Z;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/av;Lcom/crashlytics/android/internal/ax;)V
return-void
.end method
.method public final a(Lcom/crashlytics/android/internal/aZ;)Lorg/json/JSONObject;
.registers 9
const/4 v1, 0x0
:try_start_1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v2, "build_version"
iget-object v3, p1, Lcom/crashlytics/android/internal/aZ;->e:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "display_version"
iget-object v3, p1, Lcom/crashlytics/android/internal/aZ;->d:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "source"
iget v3, p1, Lcom/crashlytics/android/internal/aZ;->f:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p1, Lcom/crashlytics/android/internal/aZ;->g:Ljava/lang/String;
if-eqz v2, :cond_2a
const-string v2, "icon_hash"
iget-object v3, p1, Lcom/crashlytics/android/internal/aZ;->g:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2a
iget-object v2, p1, Lcom/crashlytics/android/internal/aZ;->c:Ljava/lang/String;
invoke-static {v2}, Lcom/crashlytics/android/internal/ab;->e(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_37
const-string v3, "instance"
invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_37
invoke-virtual {p0, v0}, Lcom/crashlytics/android/internal/aO;->a(Ljava/util/Map;)Lcom/crashlytics/android/internal/ay;
:try_end_3a
.catchall {:try_start_1 .. :try_end_3a} :catchall_11b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_d3
move-result-object v2
:try_start_3b
const-string v3, "X-CRASHLYTICS-API-KEY"
iget-object v4, p1, Lcom/crashlytics/android/internal/aZ;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;
move-result-object v3
const-string v4, "X-CRASHLYTICS-API-CLIENT-TYPE"
const-string v5, "android"
invoke-virtual {v3, v4, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;
move-result-object v3
const-string v4, "X-CRASHLYTICS-D"
iget-object v5, p1, Lcom/crashlytics/android/internal/aZ;->b:Ljava/lang/String;
invoke-virtual {v3, v4, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;
move-result-object v3
const-string v4, "X-CRASHLYTICS-API-CLIENT-VERSION"
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v5
invoke-virtual {v5}, Lcom/crashlytics/android/internal/v;->getVersion()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;
move-result-object v3
const-string v4, "Accept"
const-string v5, "application/json"
invoke-virtual {v3, v4, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/ay;
move-result-object v2
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v3
invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Requesting settings from "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/crashlytics/android/internal/aO;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v3
invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Settings query params were: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v4, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/json/JSONObject;
invoke-virtual {v2}, Lcom/crashlytics/android/internal/ay;->c()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:try_end_ae
.catchall {:try_start_3b .. :try_end_ae} :catchall_142
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_ae} :catch_144
if-eqz v2, :cond_d2
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v3, "Crashlytics"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Settings request ID: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v5, "X-REQUEST-ID"
invoke-virtual {v2, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v3, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_d2
:goto_d2
return-object v0
:catch_d3
move-exception v0
move-object v2, v1
:goto_d5
:try_start_d5
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v3
invoke-virtual {v3}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v3
const-string v4, "Crashlytics"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to retrieve settings from "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/crashlytics/android/internal/aO;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5, v0}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_f5
.catchall {:try_start_d5 .. :try_end_f5} :catchall_142
if-eqz v2, :cond_146
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v0
invoke-virtual {v0}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v0
const-string v3, "Crashlytics"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Settings request ID: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v5, "X-REQUEST-ID"
invoke-virtual {v2, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v3, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_d2
:catchall_11b
move-exception v0
move-object v2, v1
:goto_11d
if-eqz v2, :cond_141
invoke-static {}, Lcom/crashlytics/android/internal/v;->a()Lcom/crashlytics/android/internal/v;
move-result-object v1
invoke-virtual {v1}, Lcom/crashlytics/android/internal/v;->b()Lcom/crashlytics/android/internal/q;
move-result-object v1
const-string v3, "Crashlytics"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Settings request ID: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v5, "X-REQUEST-ID"
invoke-virtual {v2, v5}, Lcom/crashlytics/android/internal/ay;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v3, v2}, Lcom/crashlytics/android/internal/q;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_141
throw v0
:catchall_142
move-exception v0
goto :goto_11d
:catch_144
move-exception v0
goto :goto_d5
:cond_146
move-object v0, v1
goto :goto_d2
.end method