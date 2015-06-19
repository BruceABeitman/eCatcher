.class public final enum Lcom/instagram/user/c/c;
.super Ljava/lang/Enum;
.source "User.java"
.field public static final enum a:Lcom/instagram/user/c/c;
.field public static final enum b:Lcom/instagram/user/c/c;
.field public static final enum c:Lcom/instagram/user/c/c;
.field public static final enum d:Lcom/instagram/user/c/c;
.field public static final enum e:Lcom/instagram/user/c/c;
.field private static final synthetic f:[Lcom/instagram/user/c/c;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/user/c/c;
const-string v1, "FollowStatusUnknown"
invoke-direct {v0, v1, v2}, Lcom/instagram/user/c/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
new-instance v0, Lcom/instagram/user/c/c;
const-string v1, "FollowStatusFetching"
invoke-direct {v0, v1, v3}, Lcom/instagram/user/c/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;
new-instance v0, Lcom/instagram/user/c/c;
const-string v1, "FollowStatusNotFollowing"
invoke-direct {v0, v1, v4}, Lcom/instagram/user/c/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
new-instance v0, Lcom/instagram/user/c/c;
const-string v1, "FollowStatusFollowing"
invoke-direct {v0, v1, v5}, Lcom/instagram/user/c/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
new-instance v0, Lcom/instagram/user/c/c;
const-string v1, "FollowStatusRequested"
invoke-direct {v0, v1, v6}, Lcom/instagram/user/c/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;
const/4 v0, 0x5
new-array v0, v0, [Lcom/instagram/user/c/c;
sget-object v1, Lcom/instagram/user/c/c;->a:Lcom/instagram/user/c/c;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/user/c/c;->b:Lcom/instagram/user/c/c;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
aput-object v1, v0, v5
sget-object v1, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;
aput-object v1, v0, v6
sput-object v0, Lcom/instagram/user/c/c;->f:[Lcom/instagram/user/c/c;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/user/c/c;
.registers 2
const-class v0, Lcom/instagram/user/c/c;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/c;
return-object v0
.end method
.method public static values()[Lcom/instagram/user/c/c;
.registers 1
sget-object v0, Lcom/instagram/user/c/c;->f:[Lcom/instagram/user/c/c;
invoke-virtual {v0}, [Lcom/instagram/user/c/c;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/user/c/c;
return-object v0
.end method