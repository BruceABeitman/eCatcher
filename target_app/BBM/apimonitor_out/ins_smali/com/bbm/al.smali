.class public final enum Lcom/bbm/al;
.super Ljava/lang/Enum;
.source "SetupStateError.java"
.field public static final enum a:Lcom/bbm/al;
.field public static final enum b:Lcom/bbm/al;
.field public static final enum c:Lcom/bbm/al;
.field public static final enum d:Lcom/bbm/al;
.field public static final enum e:Lcom/bbm/al;
.field public static final enum f:Lcom/bbm/al;
.field public static final enum g:Lcom/bbm/al;
.field public static final enum h:Lcom/bbm/al;
.field public static final enum i:Lcom/bbm/al;
.field public static final enum j:Lcom/bbm/al;
.field public static final enum k:Lcom/bbm/al;
.field public static final enum l:Lcom/bbm/al;
.field public static final enum m:Lcom/bbm/al;
.field private static final synthetic n:[Lcom/bbm/al;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/al;
const-string v1, "NoError"
invoke-direct {v0, v1, v3}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->a:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "Disabled"
invoke-direct {v0, v1, v4}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->b:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "InvalidSetupState"
invoke-direct {v0, v1, v5}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->c:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "RestartRequired"
invoke-direct {v0, v1, v6}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->d:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "PermanentServerError"
invoke-direct {v0, v1, v7}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->e:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "NoBlackBerryData"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->f:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "VerifyDeviceTime"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->g:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "TemporaryServerError"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->h:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "EmailNotValid"
const/16 v2, 0x8
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->i:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "UpgradeRequired"
const/16 v2, 0x9
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->j:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "UnknownError"
const/16 v2, 0xa
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->k:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "AttemptingReconnect"
const/16 v2, 0xb
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->l:Lcom/bbm/al;
new-instance v0, Lcom/bbm/al;
const-string v1, "FileNotValid"
const/16 v2, 0xc
invoke-direct {v0, v1, v2}, Lcom/bbm/al;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/al;->m:Lcom/bbm/al;
const/16 v0, 0xd
new-array v0, v0, [Lcom/bbm/al;
sget-object v1, Lcom/bbm/al;->a:Lcom/bbm/al;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/al;->b:Lcom/bbm/al;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/al;->c:Lcom/bbm/al;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/al;->d:Lcom/bbm/al;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/al;->e:Lcom/bbm/al;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/bbm/al;->f:Lcom/bbm/al;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/al;->g:Lcom/bbm/al;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/bbm/al;->h:Lcom/bbm/al;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/bbm/al;->i:Lcom/bbm/al;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/bbm/al;->j:Lcom/bbm/al;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/bbm/al;->k:Lcom/bbm/al;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/bbm/al;->l:Lcom/bbm/al;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/bbm/al;->m:Lcom/bbm/al;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/al;->n:[Lcom/bbm/al;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/al;
.registers 9
const/4 v2, 0x0
:try_start_1
const-class v0, Lcom/bbm/al;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/al;
:try_end_9
.catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_a
.catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_15
:goto_9
:cond_9
return-object v0
:catch_a
move-exception v0
const-string v0, "Argumentment null SetupStateError stringToEnum"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/al;->k:Lcom/bbm/al;
goto :goto_9
:catch_15
move-exception v0
const-string v0, "IllegalArgumentException with Enum.valueOf for SetupStateError stringToEnum"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/bbm/al;->values()[Lcom/bbm/al;
move-result-object v4
array-length v5, v4
move v1, v2
:goto_30
if-ge v1, v5, :cond_48
aget-object v0, v4, v1
invoke-virtual {v0}, Lcom/bbm/al;->name()Ljava/lang/String;
move-result-object v6
sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_9
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_30
:cond_48
const-string v0, "No matching SetupStateError enum for arguement %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/al;->k:Lcom/bbm/al;
goto :goto_9
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/al;
.registers 2
const-class v0, Lcom/bbm/al;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/al;
return-object v0
.end method
.method public static values()[Lcom/bbm/al;
.registers 1
sget-object v0, Lcom/bbm/al;->n:[Lcom/bbm/al;
invoke-virtual {v0}, [Lcom/bbm/al;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/al;
return-object v0
.end method