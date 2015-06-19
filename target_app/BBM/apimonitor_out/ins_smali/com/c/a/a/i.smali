.class public final enum Lcom/c/a/a/i;
.super Ljava/lang/Enum;
.source "MPDbAdapter.java"
.field public static final enum a:Lcom/c/a/a/i;
.field public static final enum b:Lcom/c/a/a/i;
.field private static final synthetic d:[Lcom/c/a/a/i;
.field final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/c/a/a/i;
const-string v1, "EVENTS"
const-string v2, "events"
invoke-direct {v0, v1, v3, v2}, Lcom/c/a/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;
new-instance v0, Lcom/c/a/a/i;
const-string v1, "PEOPLE"
const-string v2, "people"
invoke-direct {v0, v1, v4, v2}, Lcom/c/a/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;
const/4 v0, 0x2
new-array v0, v0, [Lcom/c/a/a/i;
sget-object v1, Lcom/c/a/a/i;->a:Lcom/c/a/a/i;
aput-object v1, v0, v3
sget-object v1, Lcom/c/a/a/i;->b:Lcom/c/a/a/i;
aput-object v1, v0, v4
sput-object v0, Lcom/c/a/a/i;->d:[Lcom/c/a/a/i;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/c/a/a/i;->c:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/c/a/a/i;
.registers 2
const-class v0, Lcom/c/a/a/i;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/c/a/a/i;
return-object v0
.end method
.method public static values()[Lcom/c/a/a/i;
.registers 1
sget-object v0, Lcom/c/a/a/i;->d:[Lcom/c/a/a/i;
invoke-virtual {v0}, [Lcom/c/a/a/i;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/c/a/a/i;
return-object v0
.end method