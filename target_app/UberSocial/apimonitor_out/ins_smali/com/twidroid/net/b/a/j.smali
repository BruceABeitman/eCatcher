.class public final enum Lcom/twidroid/net/b/a/j;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/twidroid/net/b/a/j;
.field public static final enum b:Lcom/twidroid/net/b/a/j;
.field public static final enum c:Lcom/twidroid/net/b/a/j;
.field private static final synthetic d:[Lcom/twidroid/net/b/a/j;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/twidroid/net/b/a/j;
const-string v1, "PENDING"
invoke-direct {v0, v1, v2}, Lcom/twidroid/net/b/a/j;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/net/b/a/j;->a:Lcom/twidroid/net/b/a/j;
new-instance v0, Lcom/twidroid/net/b/a/j;
const-string v1, "RUNNING"
invoke-direct {v0, v1, v3}, Lcom/twidroid/net/b/a/j;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/net/b/a/j;->b:Lcom/twidroid/net/b/a/j;
new-instance v0, Lcom/twidroid/net/b/a/j;
const-string v1, "FINISHED"
invoke-direct {v0, v1, v4}, Lcom/twidroid/net/b/a/j;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/net/b/a/j;->c:Lcom/twidroid/net/b/a/j;
const/4 v0, 0x3
new-array v0, v0, [Lcom/twidroid/net/b/a/j;
sget-object v1, Lcom/twidroid/net/b/a/j;->a:Lcom/twidroid/net/b/a/j;
aput-object v1, v0, v2
sget-object v1, Lcom/twidroid/net/b/a/j;->b:Lcom/twidroid/net/b/a/j;
aput-object v1, v0, v3
sget-object v1, Lcom/twidroid/net/b/a/j;->c:Lcom/twidroid/net/b/a/j;
aput-object v1, v0, v4
sput-object v0, Lcom/twidroid/net/b/a/j;->d:[Lcom/twidroid/net/b/a/j;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/net/b/a/j;
.registers 2
const-class v0, Lcom/twidroid/net/b/a/j;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/a/j;
return-object v0
.end method
.method public static values()[Lcom/twidroid/net/b/a/j;
.registers 1
sget-object v0, Lcom/twidroid/net/b/a/j;->d:[Lcom/twidroid/net/b/a/j;
invoke-virtual {v0}, [Lcom/twidroid/net/b/a/j;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/twidroid/net/b/a/j;
return-object v0
.end method