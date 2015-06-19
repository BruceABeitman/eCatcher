.class public final enum Lcom/bbm/c/s;
.super Ljava/lang/Enum;
.source "EventTracker.java"
.field public static final enum a:Lcom/bbm/c/s;
.field public static final enum b:Lcom/bbm/c/s;
.field private static final synthetic d:[Lcom/bbm/c/s;
.field private c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/c/s;
const-string v1, "Tab"
const-string v2, "Tab"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/c/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/s;->a:Lcom/bbm/c/s;
new-instance v0, Lcom/bbm/c/s;
const-string v1, "StickerPicker"
const-string v2, "Sticker Picker"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/c/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/c/s;->b:Lcom/bbm/c/s;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/c/s;
sget-object v1, Lcom/bbm/c/s;->a:Lcom/bbm/c/s;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/c/s;->b:Lcom/bbm/c/s;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/c/s;->d:[Lcom/bbm/c/s;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/c/s;->c:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/c/s;
.registers 2
const-class v0, Lcom/bbm/c/s;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/c/s;
return-object v0
.end method
.method public static values()[Lcom/bbm/c/s;
.registers 1
sget-object v0, Lcom/bbm/c/s;->d:[Lcom/bbm/c/s;
invoke-virtual {v0}, [Lcom/bbm/c/s;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/c/s;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/c/s;->c:Ljava/lang/String;
return-object v0
.end method