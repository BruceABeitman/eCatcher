.class public final enum Lcom/instagram/f/a/a/b;
.super Ljava/lang/Enum;
.source "AbstractHideDeleteDirectShareRequest.java"
.field public static final enum a:Lcom/instagram/f/a/a/b;
.field public static final enum b:Lcom/instagram/f/a/a/b;
.field private static final synthetic d:[Lcom/instagram/f/a/a/b;
.field private final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/instagram/f/a/a/b;
const-string v1, "HIDE"
const-string v2, "hide"
invoke-direct {v0, v1, v3, v2}, Lcom/instagram/f/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/f/a/a/b;->a:Lcom/instagram/f/a/a/b;
new-instance v0, Lcom/instagram/f/a/a/b;
const-string v1, "DELETE"
const-string v2, "delete"
invoke-direct {v0, v1, v4, v2}, Lcom/instagram/f/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/f/a/a/b;->b:Lcom/instagram/f/a/a/b;
const/4 v0, 0x2
new-array v0, v0, [Lcom/instagram/f/a/a/b;
sget-object v1, Lcom/instagram/f/a/a/b;->a:Lcom/instagram/f/a/a/b;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/f/a/a/b;->b:Lcom/instagram/f/a/a/b;
aput-object v1, v0, v4
sput-object v0, Lcom/instagram/f/a/a/b;->d:[Lcom/instagram/f/a/a/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/instagram/f/a/a/b;->c:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/instagram/f/a/a/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/f/a/a/b;->c:Ljava/lang/String;
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/f/a/a/b;
.registers 2
const-class v0, Lcom/instagram/f/a/a/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/f/a/a/b;
return-object v0
.end method
.method public static values()[Lcom/instagram/f/a/a/b;
.registers 1
sget-object v0, Lcom/instagram/f/a/a/b;->d:[Lcom/instagram/f/a/a/b;
invoke-virtual {v0}, [Lcom/instagram/f/a/a/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/f/a/a/b;
return-object v0
.end method