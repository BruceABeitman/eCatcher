.class public final enum Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
.super Ljava/lang/Enum;
.source "PGRendererMethod.java"
.field private static final synthetic ENUM$VALUES:[Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
.field public static final enum RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
.field public static final enum RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
const-string/jumbo v1, "RENDER_NORMAL"
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;-><init>(Ljava/lang/String;I)V
sput-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
new-instance v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
const-string/jumbo v1, "RENDER_SCENE"
invoke-direct {v0, v1, v3}, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;-><init>(Ljava/lang/String;I)V
sput-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
const/4 v0, 0x2
new-array v0, v0, [Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
aput-object v1, v0, v2
sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_SCENE:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
aput-object v1, v0, v3
sput-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->ENUM$VALUES:[Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
.registers 2
const-class v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
return-object v0
.end method
.method public static values()[Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
.registers 4
const/4 v3, 0x0
sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->ENUM$VALUES:[Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
array-length v1, v0
new-array v2, v1, [Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method