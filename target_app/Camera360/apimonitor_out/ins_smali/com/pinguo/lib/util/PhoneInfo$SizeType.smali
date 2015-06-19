.class public final enum Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.super Ljava/lang/Enum;
.source "PhoneInfo.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.field public static final enum G:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.field public static final enum K:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.field public static final enum M:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;
const-string/jumbo v1, "K"
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/util/PhoneInfo$SizeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->K:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
new-instance v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;
const-string/jumbo v1, "M"
invoke-direct {v0, v1, v3}, Lcom/pinguo/lib/util/PhoneInfo$SizeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->M:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
new-instance v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;
const-string/jumbo v1, "G"
invoke-direct {v0, v1, v4}, Lcom/pinguo/lib/util/PhoneInfo$SizeType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->G:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
const/4 v0, 0x3
new-array v0, v0, [Lcom/pinguo/lib/util/PhoneInfo$SizeType;
sget-object v1, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->K:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
aput-object v1, v0, v2
sget-object v1, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->M:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->G:Lcom/pinguo/lib/util/PhoneInfo$SizeType;
aput-object v1, v0, v4
sput-object v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->ENUM$VALUES:[Lcom/pinguo/lib/util/PhoneInfo$SizeType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.registers 2
const-class v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;
return-object v0
.end method
.method public static values()[Lcom/pinguo/lib/util/PhoneInfo$SizeType;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/lib/util/PhoneInfo$SizeType;->ENUM$VALUES:[Lcom/pinguo/lib/util/PhoneInfo$SizeType;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/lib/util/PhoneInfo$SizeType;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method