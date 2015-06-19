.class public final Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/e;
.field public final facebook:Z
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 15
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p7
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
if-eqz p6, :cond_16
invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_13
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;->facebook:Z
return-void
:cond_16
const/4 v0, 0x0
goto :goto_13
.end method