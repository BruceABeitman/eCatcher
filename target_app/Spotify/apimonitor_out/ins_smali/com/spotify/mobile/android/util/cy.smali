.class public final Lcom/spotify/mobile/android/util/cy;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Z
.field private final b:Landroid/content/SharedPreferences$Editor;
.method private constructor <init>(Landroid/content/SharedPreferences$Editor;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cy;->a:Z
return-void
.end method
.method synthetic constructor <init>(Landroid/content/SharedPreferences$Editor;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/cy;-><init>(Landroid/content/SharedPreferences$Editor;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
.registers 4
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
.registers 5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;
.registers 6
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
.registers 5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lcom/spotify/mobile/android/util/cy;
.registers 6
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
.registers 5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
return-object p0
.end method
.method public final a()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cy;->a:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must not use the same Editor instance twice"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cy;->a:Z
return-void
.end method
.method public final b()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cy;->a:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must not use the same Editor instance twice"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/util/cy;->b:Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cy;->a:Z
return-void
.end method