.class public final enum Lcom/bbm/c/r;
.super Ljava/lang/Enum;
.source "EventTracker.java"
.field public static final enum a:Lcom/bbm/c/r;
.field public static final enum b:Lcom/bbm/c/r;
.field private static final synthetic d:[Lcom/bbm/c/r;
.field private c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/c/r;
const-string v1, "Picker"
const-string v2, "Picker"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/c/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/r;->a:Lcom/bbm/c/r;
new-instance v0, Lcom/bbm/c/r;
const-string v1, "Recents"
const-string v2, "Recents"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/c/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/r;->b:Lcom/bbm/c/r;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/c/r;
sget-object v1, Lcom/bbm/c/r;->a:Lcom/bbm/c/r;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/c/r;->b:Lcom/bbm/c/r;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/c/r;->d:[Lcom/bbm/c/r;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/c/r;->c:Ljava/lang/String;
return-void
.end method
.method public static final a(Z)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_9
sget-object v0, Lcom/bbm/c/r;->a:Lcom/bbm/c/r;
invoke-virtual {v0}, Lcom/bbm/c/r;->toString()Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
sget-object v0, Lcom/bbm/c/r;->b:Lcom/bbm/c/r;
invoke-virtual {v0}, Lcom/bbm/c/r;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/c/r;
.registers 2
const-class v0, Lcom/bbm/c/r;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/c/r;
return-object v0
.end method
.method public static values()[Lcom/bbm/c/r;
.registers 1
sget-object v0, Lcom/bbm/c/r;->d:[Lcom/bbm/c/r;
invoke-virtual {v0}, [Lcom/bbm/c/r;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/c/r;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/c/r;->c:Ljava/lang/String;
return-object v0
.end method