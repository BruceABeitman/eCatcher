.class public final Lcom/spotify/mobile/android/util/bc;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/util/Map;
.field private static b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/bc;->a:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/bc;->b:Ljava/util/Map;
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "spotify:genre:"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
const-string v1, "The given uri is not a spotify genre uri!"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const/16 v0, 0xe
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/bc;->a:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
sget-object v1, Lcom/spotify/mobile/android/util/bc;->a:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_21
return-object v0
:cond_22
const-string v0, ""
goto :goto_21
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "spotify:genre:"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
const-string v1, "The given uri is not a spotify genre uri!"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const/16 v0, 0xe
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/bc;->a:Ljava/util/Map;
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "spotify:genre:"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
const-string v1, "The given uri is not a spotify genre uri!"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const/16 v0, 0xe
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/bc;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
sget-object v1, Lcom/spotify/mobile/android/util/bc;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_21
return-object v0
:cond_22
const-string v0, ""
goto :goto_21
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "spotify:genre:"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
const-string v1, "The given uri is not a spotify genre uri!"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const/16 v0, 0xe
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/bc;->b:Ljava/util/Map;
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method