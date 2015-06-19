.class public Lco/vine/android/util/StringAnchorManager;
.super Ljava/lang/Object;
.source "StringAnchorManager.java"
.field public static final NONE_ID:I = 0x0
.field private static final sPrefixAnchor:Ljava/lang/String; = "anchor_"
.field private static final sPrefixIndex:Ljava/lang/String; = "index_"
.field private static final sPrefixLastId:Ljava/lang/String; = "lastId_"
.field private static final sPrefixRefreshTime:Ljava/lang/String; = "refresh_time_"
.field private final mPrefs:Landroid/content/SharedPreferences;
.field private final mType:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "StringAnchorManager"
invoke-static {p1, v0}, Lco/vine/android/util/Util;->getSharedPrefs(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lco/vine/android/util/StringAnchorManager;->mPrefs:Landroid/content/SharedPreferences;
iput-object p2, p0, Lco/vine/android/util/StringAnchorManager;->mType:Ljava/lang/String;
return-void
.end method
.method public edit()Lco/vine/android/util/StringAnchorManager$Editor;
.registers 4
new-instance v0, Lco/vine/android/util/StringAnchorManager$Editor;
iget-object v1, p0, Lco/vine/android/util/StringAnchorManager;->mPrefs:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
iget-object v2, p0, Lco/vine/android/util/StringAnchorManager;->mType:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lco/vine/android/util/StringAnchorManager$Editor;-><init>(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
return-object v0
.end method
.method public getIndex()J
.registers 5
iget-object v0, p0, Lco/vine/android/util/StringAnchorManager;->mPrefs:Landroid/content/SharedPreferences;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "index_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/util/StringAnchorManager;->mType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-wide/16 v2, -0x1
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getLastId()J
.registers 5
iget-object v0, p0, Lco/vine/android/util/StringAnchorManager;->mPrefs:Landroid/content/SharedPreferences;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "lastId_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/util/StringAnchorManager;->mType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-wide/16 v2, -0x1
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getRefreshTime()J
.registers 5
iget-object v0, p0, Lco/vine/android/util/StringAnchorManager;->mPrefs:Landroid/content/SharedPreferences;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "refresh_time_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/util/StringAnchorManager;->mType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-wide/16 v2, -0x1
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getStringAnchor()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lco/vine/android/util/StringAnchorManager;->mPrefs:Landroid/content/SharedPreferences;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "anchor_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/util/StringAnchorManager;->mType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public haveMore()Z
.registers 5
invoke-virtual {p0}, Lco/vine/android/util/StringAnchorManager;->getLastId()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method