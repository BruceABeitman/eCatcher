.class public final enum Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.super Ljava/lang/Enum;
.source "CacheResponseStatus.java"
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.field public static final enum CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.field public static final enum CACHE_MISS:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.field public static final enum CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.field public static final enum VALIDATED:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
const-string v1, "CACHE_MODULE_RESPONSE"
invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V
sput-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
new-instance v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
const-string v1, "CACHE_HIT"
invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V
sput-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
new-instance v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
const-string v1, "CACHE_MISS"
invoke-direct {v0, v1, v4}, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V
sput-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MISS:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
new-instance v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
const-string v1, "VALIDATED"
invoke-direct {v0, v1, v5}, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V
sput-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->VALIDATED:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
const/4 v0, 0x4
new-array v0, v0, [Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
aput-object v1, v0, v2
sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
aput-object v1, v0, v3
sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MISS:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
aput-object v1, v0, v4
sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->VALIDATED:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
aput-object v1, v0, v5
sput-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->$VALUES:[Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.registers 2
const-class v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
return-object v0
.end method
.method public static values()[Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
.registers 1
sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->$VALUES:[Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
return-object v0
.end method