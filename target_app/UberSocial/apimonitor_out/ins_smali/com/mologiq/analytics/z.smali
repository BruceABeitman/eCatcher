.class final enum Lcom/mologiq/analytics/z;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/mologiq/analytics/z;
.field public static final enum b:Lcom/mologiq/analytics/z;
.field public static final enum c:Lcom/mologiq/analytics/z;
.field private static final synthetic d:[Lcom/mologiq/analytics/z;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/mologiq/analytics/z;
const-string v1, "REQUEST"
invoke-direct {v0, v1, v2}, Lcom/mologiq/analytics/z;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mologiq/analytics/z;->a:Lcom/mologiq/analytics/z;
new-instance v0, Lcom/mologiq/analytics/z;
const-string v1, "IMPRESSION"
invoke-direct {v0, v1, v3}, Lcom/mologiq/analytics/z;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mologiq/analytics/z;->b:Lcom/mologiq/analytics/z;
new-instance v0, Lcom/mologiq/analytics/z;
const-string v1, "CLICK"
invoke-direct {v0, v1, v4}, Lcom/mologiq/analytics/z;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mologiq/analytics/z;->c:Lcom/mologiq/analytics/z;
const/4 v0, 0x3
new-array v0, v0, [Lcom/mologiq/analytics/z;
sget-object v1, Lcom/mologiq/analytics/z;->a:Lcom/mologiq/analytics/z;
aput-object v1, v0, v2
sget-object v1, Lcom/mologiq/analytics/z;->b:Lcom/mologiq/analytics/z;
aput-object v1, v0, v3
sget-object v1, Lcom/mologiq/analytics/z;->c:Lcom/mologiq/analytics/z;
aput-object v1, v0, v4
sput-object v0, Lcom/mologiq/analytics/z;->d:[Lcom/mologiq/analytics/z;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/mologiq/analytics/z;
.registers 2
const-class v0, Lcom/mologiq/analytics/z;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/z;
return-object v0
.end method
.method public static values()[Lcom/mologiq/analytics/z;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/mologiq/analytics/z;->d:[Lcom/mologiq/analytics/z;
array-length v1, v0
new-array v2, v1, [Lcom/mologiq/analytics/z;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method