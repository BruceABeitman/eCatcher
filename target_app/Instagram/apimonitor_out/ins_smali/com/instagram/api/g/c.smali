.class public final enum Lcom/instagram/api/g/c;
.super Ljava/lang/Enum;
.source "CdnTraceRequestHelper.java"
.field public static final enum a:Lcom/instagram/api/g/c;
.field public static final enum b:Lcom/instagram/api/g/c;
.field private static final synthetic c:[Lcom/instagram/api/g/c;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/api/g/c;
const-string v1, "AKAMAI"
invoke-direct {v0, v1, v2}, Lcom/instagram/api/g/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;
new-instance v0, Lcom/instagram/api/g/c;
const-string v1, "IGCDN"
invoke-direct {v0, v1, v3}, Lcom/instagram/api/g/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/api/g/c;->b:Lcom/instagram/api/g/c;
const/4 v0, 0x2
new-array v0, v0, [Lcom/instagram/api/g/c;
sget-object v1, Lcom/instagram/api/g/c;->a:Lcom/instagram/api/g/c;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/api/g/c;->b:Lcom/instagram/api/g/c;
aput-object v1, v0, v3
sput-object v0, Lcom/instagram/api/g/c;->c:[Lcom/instagram/api/g/c;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/api/g/c;
.registers 2
const-class v0, Lcom/instagram/api/g/c;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/c;
return-object v0
.end method
.method public static values()[Lcom/instagram/api/g/c;
.registers 1
sget-object v0, Lcom/instagram/api/g/c;->c:[Lcom/instagram/api/g/c;
invoke-virtual {v0}, [Lcom/instagram/api/g/c;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/api/g/c;
return-object v0
.end method