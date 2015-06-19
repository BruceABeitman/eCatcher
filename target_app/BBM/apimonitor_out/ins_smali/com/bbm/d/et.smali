.class public final enum Lcom/bbm/d/et;
.super Ljava/lang/Enum;
.source "Conversation.java"
.field public static final enum a:Lcom/bbm/d/et;
.field public static final enum b:Lcom/bbm/d/et;
.field private static final synthetic d:[Lcom/bbm/d/et;
.field private final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/d/et;
const-string v1, "ChannelSubscriberBlocked"
const-string v2, "ChannelSubscriberBlocked"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/et;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/et;->a:Lcom/bbm/d/et;
new-instance v0, Lcom/bbm/d/et;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/et;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/et;->b:Lcom/bbm/d/et;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/d/et;
sget-object v1, Lcom/bbm/d/et;->a:Lcom/bbm/d/et;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/et;->b:Lcom/bbm/d/et;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/d/et;->d:[Lcom/bbm/d/et;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/et;->c:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/d/et;
.registers 2
const-string v0, "ChannelSubscriberBlocked"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/d/et;->a:Lcom/bbm/d/et;
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/bbm/d/et;->b:Lcom/bbm/d/et;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/et;
.registers 2
const-class v0, Lcom/bbm/d/et;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/et;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/et;
.registers 1
sget-object v0, Lcom/bbm/d/et;->d:[Lcom/bbm/d/et;
invoke-virtual {v0}, [Lcom/bbm/d/et;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/et;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/et;->c:Ljava/lang/String;
return-object v0
.end method