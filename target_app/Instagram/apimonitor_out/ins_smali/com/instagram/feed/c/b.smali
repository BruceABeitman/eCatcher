.class final enum Lcom/instagram/feed/c/b;
.super Ljava/lang/Enum;
.source "ImpressionTracker.java"
.field public static final enum a:Lcom/instagram/feed/c/b;
.field public static final enum b:Lcom/instagram/feed/c/b;
.field private static final synthetic c:[Lcom/instagram/feed/c/b;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/feed/c/b;
const-string v1, "IMPRESSION"
invoke-direct {v0, v1, v2}, Lcom/instagram/feed/c/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
new-instance v0, Lcom/instagram/feed/c/b;
const-string v1, "VIEWED_IMPRESSION"
invoke-direct {v0, v1, v3}, Lcom/instagram/feed/c/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
const/4 v0, 0x2
new-array v0, v0, [Lcom/instagram/feed/c/b;
sget-object v1, Lcom/instagram/feed/c/b;->a:Lcom/instagram/feed/c/b;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/feed/c/b;->b:Lcom/instagram/feed/c/b;
aput-object v1, v0, v3
sput-object v0, Lcom/instagram/feed/c/b;->c:[Lcom/instagram/feed/c/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/feed/c/b;
.registers 2
const-class v0, Lcom/instagram/feed/c/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/feed/c/b;
return-object v0
.end method
.method public static values()[Lcom/instagram/feed/c/b;
.registers 1
sget-object v0, Lcom/instagram/feed/c/b;->c:[Lcom/instagram/feed/c/b;
invoke-virtual {v0}, [Lcom/instagram/feed/c/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/feed/c/b;
return-object v0
.end method