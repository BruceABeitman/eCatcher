.class  Lcom/millennialmedia/android/at;
.super Ljava/lang/Object;
.source "SourceFile"
.field  a:J
.field  b:J
.field  c:Z
.field final synthetic d:Lcom/millennialmedia/android/as;
.method constructor <init>(Lcom/millennialmedia/android/as;)V
.registers 4
const-wide/16 v0, 0x0
iput-object p1, p0, Lcom/millennialmedia/android/at;->d:Lcom/millennialmedia/android/as;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/millennialmedia/android/at;->a:J
iput-wide v0, p0, Lcom/millennialmedia/android/at;->b:J
return-void
.end method
.method  a(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/at;->a:J
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/at;->c(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method  a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "handshake_lastvideo_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/millennialmedia/android/at;->a:J
invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "handshake_videointerval_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-wide v1, p0, Lcom/millennialmedia/android/at;->b:J
invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
return-void
.end method
.method  a(Lorg/json/JSONObject;)V
.registers 6
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const-string v0, "videointerval"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
iput-wide v0, p0, Lcom/millennialmedia/android/at;->b:J
goto :goto_2
.end method
.method  a(J)Z
.registers 7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sub-long/2addr v0, p1
iget-object v2, p0, Lcom/millennialmedia/android/at;->d:Lcom/millennialmedia/android/as;
invoke-static {v2}, Lcom/millennialmedia/android/as;->f(Lcom/millennialmedia/android/as;)J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_11
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method  a(Landroid/content/Context;)Z
.registers 10
const-wide/16 v6, 0x3e8
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-string v2, "HandShake"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "canRequestVideo() Current Time:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " Last Video: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v4, p0, Lcom/millennialmedia/android/at;->a:J
div-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "  Diff: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v4, p0, Lcom/millennialmedia/android/at;->a:J
sub-long/2addr v0, v4
div-long/2addr v0, v6
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "  Video interval: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v3, p0, Lcom/millennialmedia/android/at;->b:J
div-long/2addr v3, v6
invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/millennialmedia/android/at;->a:J
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/millennialmedia/android/at;->b:J
cmp-long v0, v0, v2
if-lez v0, :cond_55
const/4 v0, 0x1
:goto_54
return v0
:cond_55
const/4 v0, 0x0
goto :goto_54
.end method
.method  a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "handshake_lastvideo_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_37
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handshake_lastvideo_"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-wide v2, p0, Lcom/millennialmedia/android/at;->a:J
invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/at;->a:J
move v0, v1
:cond_37
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "handshake_videointerval_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handshake_videointerval_"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-wide v2, p0, Lcom/millennialmedia/android/at;->b:J
invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/at;->b:J
:goto_6b
return v1
:cond_6c
move v1, v0
goto :goto_6b
.end method
.method  b(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
const-string v0, "MillennialMediaSettings"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
if-eqz v0, :cond_3d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handshake_lastvideo_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "handshake_lastvideo_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-wide v2, p0, Lcom/millennialmedia/android/at;->a:J
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/at;->a:J
:cond_3d
return-void
.end method
.method  c(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
const-string v0, "MillennialMediaSettings"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/android/at;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method