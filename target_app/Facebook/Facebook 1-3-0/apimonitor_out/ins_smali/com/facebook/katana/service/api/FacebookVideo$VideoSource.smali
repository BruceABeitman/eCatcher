.class public final enum Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
.super Ljava/lang/Enum;
.source "FacebookVideo.java"
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
.field public static final enum SOURCE_HTML:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
.field public static final enum SOURCE_RAW:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
const-string v1, "SOURCE_HTML"
invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_HTML:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
new-instance v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
const-string v1, "SOURCE_RAW"
invoke-direct {v0, v1, v3}, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_RAW:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
const/4 v0, 0x2
new-array v0, v0, [Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
sget-object v1, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_HTML:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_RAW:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
aput-object v1, v0, v3
sput-object v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->ENUM$VALUES:[Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
.registers 2
const-class v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
return-object p0
.end method
.method public static values()[Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->ENUM$VALUES:[Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
array-length v1, v0
new-array v2, v1, [Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method