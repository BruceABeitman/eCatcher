.class public final Lcom/spotify/mobile/android/util/c/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/util/Map;
.field private static b:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/c/a;->a:Ljava/util/Map;
const-string v1, "es_ES"
const-string v2, "es"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->a:Ljava/util/Map;
const-string v1, "fr_CA"
const-string v2, "fr-ca"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
const-string v1, "es"
const-string v2, "es-419"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
const-string v1, "pt"
const-string v2, "pt-br"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
const-string v1, "zh"
const-string v2, "zh-tw"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
const-string v1, "in"
const-string v2, "id"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
const-string v1, "ji"
const-string v2, "yi"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
const-string v1, "iw"
const-string v2, "he"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v5, 0x7a
const/16 v4, 0x61
const/4 v1, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
if-nez p0, :cond_c
const-string v0, "en"
:cond_b
:goto_b
return-object v0
:cond_c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-ge v0, v1, :cond_15
const-string v0, "en"
goto :goto_b
:cond_15
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->a:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_b
invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-lt v0, v4, :cond_3b
invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-gt v0, v5, :cond_3b
invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
if-lt v0, v4, :cond_3b
invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
if-le v0, v5, :cond_3e
:cond_3b
const-string v0, "en"
goto :goto_b
:cond_3e
sget-object v0, Lcom/spotify/mobile/android/util/c/a;->b:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_b
move-object v0, v1
goto :goto_b
.end method