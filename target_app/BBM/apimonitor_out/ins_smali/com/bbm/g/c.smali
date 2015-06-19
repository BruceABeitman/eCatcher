.class public final enum Lcom/bbm/g/c;
.super Ljava/lang/Enum;
.source "GroupCalendarAppointment.java"
.field public static final enum a:Lcom/bbm/g/c;
.field public static final enum b:Lcom/bbm/g/c;
.field public static final enum c:Lcom/bbm/g/c;
.field public static final enum d:Lcom/bbm/g/c;
.field public static final enum e:Lcom/bbm/g/c;
.field private static final synthetic g:[Lcom/bbm/g/c;
.field private final f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/g/c;
const-string v1, "Free"
const-string v2, "Free"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/g/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/c;->a:Lcom/bbm/g/c;
new-instance v0, Lcom/bbm/g/c;
const-string v1, "Tentative"
const-string v2, "Tentative"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/c;->b:Lcom/bbm/g/c;
new-instance v0, Lcom/bbm/g/c;
const-string v1, "Busy"
const-string v2, "Busy"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/c;->c:Lcom/bbm/g/c;
new-instance v0, Lcom/bbm/g/c;
const-string v1, "OutOfOffice"
const-string v2, "OutOfOffice"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/c;->d:Lcom/bbm/g/c;
new-instance v0, Lcom/bbm/g/c;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/c;->e:Lcom/bbm/g/c;
const/4 v0, 0x5
new-array v0, v0, [Lcom/bbm/g/c;
sget-object v1, Lcom/bbm/g/c;->a:Lcom/bbm/g/c;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/g/c;->b:Lcom/bbm/g/c;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/c;->c:Lcom/bbm/g/c;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/c;->d:Lcom/bbm/g/c;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/g/c;->e:Lcom/bbm/g/c;
aput-object v1, v0, v7
sput-object v0, Lcom/bbm/g/c;->g:[Lcom/bbm/g/c;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/g/c;->f:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/g/c;
.registers 2
const-string v0, "Free"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/g/c;->a:Lcom/bbm/g/c;
:goto_a
return-object v0
:cond_b
const-string v0, "Tentative"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/bbm/g/c;->b:Lcom/bbm/g/c;
goto :goto_a
:cond_16
const-string v0, "Busy"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/bbm/g/c;->c:Lcom/bbm/g/c;
goto :goto_a
:cond_21
const-string v0, "OutOfOffice"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
sget-object v0, Lcom/bbm/g/c;->d:Lcom/bbm/g/c;
goto :goto_a
:cond_2c
sget-object v0, Lcom/bbm/g/c;->e:Lcom/bbm/g/c;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/c;
.registers 2
const-class v0, Lcom/bbm/g/c;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/g/c;
return-object v0
.end method
.method public static values()[Lcom/bbm/g/c;
.registers 1
sget-object v0, Lcom/bbm/g/c;->g:[Lcom/bbm/g/c;
invoke-virtual {v0}, [Lcom/bbm/g/c;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/g/c;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/c;->f:Ljava/lang/String;
return-object v0
.end method