.class public final Lcom/spotify/mobile/android/util/cx;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Ljava/lang/String;
.field private c:Landroid/content/SharedPreferences;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/cx;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/util/cx;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cx;->a()V
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/da;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/da;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
return-object v0
.end method
.method public static b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/da;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/da;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/da;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
return-object v0
.end method
.method private e(Lcom/spotify/mobile/android/util/cz;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Ljava/util/NoSuchElementException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "key "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has no value"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;)I
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/cx;->e(Lcom/spotify/mobile/android/util/cz;)V
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I
move-result v0
return v0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;I)I
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;III)I
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
if-lt v0, p3, :cond_f
if-gt v0, p4, :cond_f
move p2, v0
:cond_f
return p2
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;J)J
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
array-length v2, p3
const/4 v1, 0x0
:goto_c
if-ge v1, v2, :cond_1c
aget-object v3, p3, v1
invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_19
:goto_16
check-cast v0, Ljava/lang/String;
return-object v0
:cond_19
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_1c
move-object v0, p2
goto :goto_16
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lorg/json/JSONArray;
.registers 7
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_b
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_b} :catch_15
move-result-object v0
:goto_c
if-nez v0, :cond_f
:goto_e
return-object p2
:cond_f
new-instance p2, Lorg/json/JSONArray;
invoke-direct {p2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
goto :goto_e
:catch_15
move-exception v1
goto :goto_c
.end method
.method final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/util/cx;->b:Ljava/lang/String;
const/4 v2, 0x4
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cz;Z)Z
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final b()Lcom/spotify/mobile/android/util/cy;
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cx;->a()V
new-instance v0, Lcom/spotify/mobile/android/util/cy;
iget-object v1, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;-><init>(Landroid/content/SharedPreferences$Editor;B)V
return-object v0
.end method
.method public final b(Lcom/spotify/mobile/android/util/cz;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/cx;->e(Lcom/spotify/mobile/android/util/cz;)V
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
return-void
.end method
.method public final c(Lcom/spotify/mobile/android/util/cz;)Z
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/cx;->c:Landroid/content/SharedPreferences;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cz;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final d(Lcom/spotify/mobile/android/util/cz;)V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
return-void
.end method