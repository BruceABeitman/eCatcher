.class public final enum Lcom/bbm/g/h;
.super Ljava/lang/Enum;
.source "GroupCalendarManager.java"
.field public static final enum a:Lcom/bbm/g/h;
.field public static final enum b:Lcom/bbm/g/h;
.field public static final enum c:Lcom/bbm/g/h;
.field public static final enum d:Lcom/bbm/g/h;
.field public static final enum e:Lcom/bbm/g/h;
.field public static final enum f:Lcom/bbm/g/h;
.field public static final enum g:Lcom/bbm/g/h;
.field public static final i:[Ljava/lang/String;
.field private static final synthetic j:[Lcom/bbm/g/h;
.field public final h:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/g/h;
const-string v1, "ID"
const-string v2, "_id"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->a:Lcom/bbm/g/h;
new-instance v0, Lcom/bbm/g/h;
const-string v1, "URI"
const-string v2, "_sync_id"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->b:Lcom/bbm/g/h;
new-instance v0, Lcom/bbm/g/h;
const-string v1, "NAME"
const-string v2, "name"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->c:Lcom/bbm/g/h;
new-instance v0, Lcom/bbm/g/h;
const-string v1, "DISPLAY_NAME"
const-string v2, "calendar_displayName"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->d:Lcom/bbm/g/h;
new-instance v0, Lcom/bbm/g/h;
const-string v1, "ACCOUNT_TYPE"
const-string v2, "account_type"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->e:Lcom/bbm/g/h;
new-instance v0, Lcom/bbm/g/h;
const-string v1, "ACCOUNT_NAME"
const/4 v2, 0x5
const-string v3, "account_name"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->f:Lcom/bbm/g/h;
new-instance v0, Lcom/bbm/g/h;
const-string v1, "OWNER_ACCOUNT"
const/4 v2, 0x6
const-string v3, "ownerAccount"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/h;->g:Lcom/bbm/g/h;
const/4 v0, 0x7
new-array v0, v0, [Lcom/bbm/g/h;
sget-object v1, Lcom/bbm/g/h;->a:Lcom/bbm/g/h;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/h;->b:Lcom/bbm/g/h;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/h;->c:Lcom/bbm/g/h;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/g/h;->d:Lcom/bbm/g/h;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/g/h;->e:Lcom/bbm/g/h;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/g/h;->f:Lcom/bbm/g/h;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/g/h;->g:Lcom/bbm/g/h;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/g/h;->j:[Lcom/bbm/g/h;
const/4 v0, 0x7
new-array v0, v0, [Ljava/lang/String;
sget-object v1, Lcom/bbm/g/h;->a:Lcom/bbm/g/h;
iget-object v1, v1, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/h;->b:Lcom/bbm/g/h;
iget-object v1, v1, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/h;->c:Lcom/bbm/g/h;
iget-object v1, v1, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/g/h;->d:Lcom/bbm/g/h;
iget-object v1, v1, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/g/h;->e:Lcom/bbm/g/h;
iget-object v1, v1, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/g/h;->f:Lcom/bbm/g/h;
iget-object v2, v2, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/g/h;->g:Lcom/bbm/g/h;
iget-object v2, v2, Lcom/bbm/g/h;->h:Ljava/lang/String;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/g/h;->i:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/g/h;->h:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/h;
.registers 2
const-class v0, Lcom/bbm/g/h;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/g/h;
return-object v0
.end method
.method public static values()[Lcom/bbm/g/h;
.registers 1
sget-object v0, Lcom/bbm/g/h;->j:[Lcom/bbm/g/h;
invoke-virtual {v0}, [Lcom/bbm/g/h;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/g/h;
return-object v0
.end method