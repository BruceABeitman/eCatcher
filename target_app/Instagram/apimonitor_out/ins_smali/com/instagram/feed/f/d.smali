.class public final enum Lcom/instagram/feed/f/d;
.super Ljava/lang/Enum;
.source "FeedMessage.java"
.field public static final enum a:Lcom/instagram/feed/f/d;
.field public static final enum b:Lcom/instagram/feed/f/d;
.field public static final enum c:Lcom/instagram/feed/f/d;
.field private static final synthetic e:[Lcom/instagram/feed/f/d;
.field public d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/instagram/feed/f/d;
const-string v1, "PEPPER"
const-string v2, "pepper"
invoke-direct {v0, v1, v3, v2}, Lcom/instagram/feed/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
new-instance v0, Lcom/instagram/feed/f/d;
const-string v1, "FOLLOW_DESTINATION"
const-string v2, "follow_destination"
invoke-direct {v0, v1, v4, v2}, Lcom/instagram/feed/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;
new-instance v0, Lcom/instagram/feed/f/d;
const-string v1, "FEED_AYSF"
const-string v2, "feed_aysf"
invoke-direct {v0, v1, v5, v2}, Lcom/instagram/feed/f/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/feed/f/d;
sget-object v1, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;
aput-object v1, v0, v5
sput-object v0, Lcom/instagram/feed/f/d;->e:[Lcom/instagram/feed/f/d;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/instagram/feed/f/d;->d:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/feed/f/d;
.registers 2
const-class v0, Lcom/instagram/feed/f/d;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/feed/f/d;
return-object v0
.end method
.method public static values()[Lcom/instagram/feed/f/d;
.registers 1
sget-object v0, Lcom/instagram/feed/f/d;->e:[Lcom/instagram/feed/f/d;
invoke-virtual {v0}, [Lcom/instagram/feed/f/d;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/feed/f/d;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/f/d;->d:Ljava/lang/String;
return-object v0
.end method