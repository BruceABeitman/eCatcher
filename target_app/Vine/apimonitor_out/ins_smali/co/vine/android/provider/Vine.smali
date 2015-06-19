.class public Lco/vine/android/provider/Vine;
.super Ljava/lang/Object;
.source "Vine.java"
.field public static final AUTHORITY:Ljava/lang/String; = null
.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = null
.field public static final LIMIT_DEFAULT:I = 0x14
.field public static final QUERY_PARAMETER_DB_OWNER_ID:Ljava/lang/String; = "db_owner_id"
.field public static final QUERY_PARAMETER_LIMIT:Ljava/lang/String; = "limit"
.field private static final sUserSectionAnchorManager:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 2
const-string v0, ".provider.VineProvider"
invoke-static {v0}, Lco/vine/android/util/BuildUtil;->getAuthority(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "content://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lco/vine/android/provider/Vine;->sUserSectionAnchorManager:Ljava/util/HashMap;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getUserSectionsAnchorManager(Landroid/content/Context;I)Lco/vine/android/util/StringAnchorManager;
.registers 6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "user_sections_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v2, Lco/vine/android/provider/Vine;->sUserSectionAnchorManager:Ljava/util/HashMap;
invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/util/StringAnchorManager;
if-nez v1, :cond_2b
new-instance v1, Lco/vine/android/util/StringAnchorManager;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2, v0}, Lco/vine/android/util/StringAnchorManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
sget-object v2, Lco/vine/android/provider/Vine;->sUserSectionAnchorManager:Ljava/util/HashMap;
invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2b
return-object v1
.end method