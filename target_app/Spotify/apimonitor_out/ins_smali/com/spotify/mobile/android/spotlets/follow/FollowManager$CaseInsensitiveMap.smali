.class  Lcom/spotify/mobile/android/spotlets/follow/FollowManager$CaseInsensitiveMap;
.super Ljava/util/HashMap;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x642bbcdedc361b34L
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager$CaseInsensitiveMap;-><init>()V
return-void
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_14
check-cast p1, Ljava/lang/String;
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_11
check-cast p1, Ljava/lang/String;
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
check-cast p1, Ljava/lang/String;
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method