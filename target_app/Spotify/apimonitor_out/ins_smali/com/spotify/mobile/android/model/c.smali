.class public final Lcom/spotify/mobile/android/model/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/model/ContextType;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/spotify/mobile/android/util/SpotifyLink;
.method public constructor <init>(Lcom/spotify/mobile/android/model/ContextType;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/SpotifyLink;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/ContextType;
iput-object v0, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/SpotifyLink;
iput-object v0, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
return-void
.end method
.method public final a(Landroid/content/res/Resources;Z)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
sget-object v1, Lcom/spotify/mobile/android/model/ContextType;->a:Lcom/spotify/mobile/android/model/ContextType;
if-ne v0, v1, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dd;->b(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_1c
sget-object v0, Lcom/spotify/mobile/android/model/ContextType;->q:Lcom/spotify/mobile/android/model/ContextType;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/model/ContextType;->a(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v0
:goto_1b
return-object v0
:cond_1c
const-string v0, ""
goto :goto_1b
:cond_1f
if-eqz p2, :cond_29
const v0, 0x7f0f02d4
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_1b
:cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/model/ContextType;->a(Landroid/content/res/Resources;)Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method
.method public final a()Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->F:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final b()Lcom/spotify/mobile/android/model/ContextType;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
return-object v0
.end method
.method public final b(Landroid/content/res/Resources;Z)Ljava/lang/String;
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
sget-object v1, Lcom/spotify/mobile/android/model/ContextType;->a:Lcom/spotify/mobile/android/model/ContextType;
if-ne v0, v1, :cond_42
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dd;->b(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dd;->b(Lcom/spotify/mobile/android/util/SpotifyLink;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_21
const-string v0, ""
:goto_20
:cond_20
return-object v0
:cond_21
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Lcom/spotify/mobile/android/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/bc;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v2, ""
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_20
const/4 v0, 0x3
aget-object v0, v1, v0
goto :goto_20
:cond_3f
const-string v0, ""
goto :goto_20
:cond_42
if-eqz p2, :cond_47
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
goto :goto_20
:cond_47
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
iget-object v1, p0, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/model/ContextType;->a(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_20
const v1, 0x7f0f02db
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
const/4 v0, 0x1
iget-object v3, p0, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
aput-object v3, v2, v0
invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_20
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
return-object v0
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
check-cast p1, Lcom/spotify/mobile/android/model/c;
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
iget-object v3, p1, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v3, p1, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-static {v2, v3}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_3d
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/google/common/base/e;->a(Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mContextType"
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->a:Lcom/spotify/mobile/android/model/ContextType;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mContextTitle"
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mContextOwner"
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
const-string v1, "mContextLink"
iget-object v2, p0, Lcom/spotify/mobile/android/model/c;->d:Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-virtual {v0, v1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/f;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/f;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method