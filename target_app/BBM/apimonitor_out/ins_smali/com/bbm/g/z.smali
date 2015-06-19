.class public final enum Lcom/bbm/g/z;
.super Ljava/lang/Enum;
.source "GroupListItem.java"
.field public static final enum a:Lcom/bbm/g/z;
.field public static final enum b:Lcom/bbm/g/z;
.field public static final enum c:Lcom/bbm/g/z;
.field public static final enum d:Lcom/bbm/g/z;
.field public static final enum e:Lcom/bbm/g/z;
.field public static final enum f:Lcom/bbm/g/z;
.field public static final enum g:Lcom/bbm/g/z;
.field public static final enum h:Lcom/bbm/g/z;
.field public static final enum i:Lcom/bbm/g/z;
.field private static j:Ljava/util/Hashtable;
.field private static final synthetic l:[Lcom/bbm/g/z;
.field private final k:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/g/z;
const-string v1, "Never"
const-string v2, "Never"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->a:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_1DayBefore"
const-string v2, "1 day before"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->b:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_2DaysBefore"
const-string v2, "2 days before"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->c:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_3DaysBefore"
const-string v2, "3 days before"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->d:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_1WeekBefore"
const-string v2, "1 week before"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->e:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_2WeeksBefore"
const/4 v2, 0x5
const-string v3, "2 weeks before"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->f:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_3WeeksBefore"
const/4 v2, 0x6
const-string v3, "3 weeks before"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->g:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "_1MonthBefore"
const/4 v2, 0x7
const-string v3, "1 month before"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->h:Lcom/bbm/g/z;
new-instance v0, Lcom/bbm/g/z;
const-string v1, "Unspecified"
const/16 v2, 0x8
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/z;->i:Lcom/bbm/g/z;
const/16 v0, 0x9
new-array v0, v0, [Lcom/bbm/g/z;
sget-object v1, Lcom/bbm/g/z;->a:Lcom/bbm/g/z;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/z;->b:Lcom/bbm/g/z;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/z;->c:Lcom/bbm/g/z;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/g/z;->d:Lcom/bbm/g/z;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/g/z;->e:Lcom/bbm/g/z;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/g/z;->f:Lcom/bbm/g/z;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/g/z;->g:Lcom/bbm/g/z;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/bbm/g/z;->h:Lcom/bbm/g/z;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/bbm/g/z;->i:Lcom/bbm/g/z;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/g/z;->l:[Lcom/bbm/g/z;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/g/z;->k:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/g/z;
.registers 7
sget-object v0, Lcom/bbm/g/z;->j:Ljava/util/Hashtable;
if-nez v0, :cond_1d
new-instance v1, Ljava/util/Hashtable;
invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
invoke-static {}, Lcom/bbm/g/z;->values()[Lcom/bbm/g/z;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_f
if-ge v0, v3, :cond_1b
aget-object v4, v2, v0
iget-object v5, v4, Lcom/bbm/g/z;->k:Ljava/lang/String;
invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1b
sput-object v1, Lcom/bbm/g/z;->j:Ljava/util/Hashtable;
:cond_1d
if-eqz p0, :cond_2a
sget-object v0, Lcom/bbm/g/z;->j:Ljava/util/Hashtable;
invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/z;
:goto_27
if-eqz v0, :cond_2c
:goto_29
return-object v0
:cond_2a
const/4 v0, 0x0
goto :goto_27
:cond_2c
sget-object v0, Lcom/bbm/g/z;->i:Lcom/bbm/g/z;
goto :goto_29
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/z;
.registers 2
const-class v0, Lcom/bbm/g/z;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/g/z;
return-object v0
.end method
.method public static values()[Lcom/bbm/g/z;
.registers 1
sget-object v0, Lcom/bbm/g/z;->l:[Lcom/bbm/g/z;
invoke-virtual {v0}, [Lcom/bbm/g/z;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/g/z;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/z;->k:Ljava/lang/String;
return-object v0
.end method