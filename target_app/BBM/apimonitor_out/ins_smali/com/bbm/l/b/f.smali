.class public final enum Lcom/bbm/l/b/f;
.super Ljava/lang/Enum;
.source "WebAvatar.java"
.field public static final enum a:Lcom/bbm/l/b/f;
.field public static final enum b:Lcom/bbm/l/b/f;
.field public static final enum c:Lcom/bbm/l/b/f;
.field public static final enum d:Lcom/bbm/l/b/f;
.field public static final enum e:Lcom/bbm/l/b/f;
.field public static final enum f:Lcom/bbm/l/b/f;
.field private static final h:Ljava/util/Hashtable;
.field private static final synthetic i:[Lcom/bbm/l/b/f;
.field public final g:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v0, 0x0
new-instance v1, Lcom/bbm/l/b/f;
const-string v2, "OUTER_LEFT"
const-string v3, "OUTER_LEFT"
invoke-direct {v1, v2, v0, v3}, Lcom/bbm/l/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v1, Lcom/bbm/l/b/f;->a:Lcom/bbm/l/b/f;
new-instance v1, Lcom/bbm/l/b/f;
const-string v2, "INNER_LEFT"
const-string v3, "INNER_LEFT"
invoke-direct {v1, v2, v5, v3}, Lcom/bbm/l/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v1, Lcom/bbm/l/b/f;->b:Lcom/bbm/l/b/f;
new-instance v1, Lcom/bbm/l/b/f;
const-string v2, "MIDDLE"
const-string v3, "MIDDLE"
invoke-direct {v1, v2, v6, v3}, Lcom/bbm/l/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v1, Lcom/bbm/l/b/f;->c:Lcom/bbm/l/b/f;
new-instance v1, Lcom/bbm/l/b/f;
const-string v2, "INNER_RIGHT"
const-string v3, "INNER_RIGHT"
invoke-direct {v1, v2, v7, v3}, Lcom/bbm/l/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v1, Lcom/bbm/l/b/f;->d:Lcom/bbm/l/b/f;
new-instance v1, Lcom/bbm/l/b/f;
const-string v2, "OUTER_RIGHT"
const-string v3, "OUTER_RIGHT"
invoke-direct {v1, v2, v8, v3}, Lcom/bbm/l/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v1, Lcom/bbm/l/b/f;->e:Lcom/bbm/l/b/f;
new-instance v1, Lcom/bbm/l/b/f;
const-string v2, "OTHER"
const/4 v3, 0x5
const-string v4, ""
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/l/b/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v1, Lcom/bbm/l/b/f;->f:Lcom/bbm/l/b/f;
const/4 v1, 0x6
new-array v1, v1, [Lcom/bbm/l/b/f;
sget-object v2, Lcom/bbm/l/b/f;->a:Lcom/bbm/l/b/f;
aput-object v2, v1, v0
sget-object v2, Lcom/bbm/l/b/f;->b:Lcom/bbm/l/b/f;
aput-object v2, v1, v5
sget-object v2, Lcom/bbm/l/b/f;->c:Lcom/bbm/l/b/f;
aput-object v2, v1, v6
sget-object v2, Lcom/bbm/l/b/f;->d:Lcom/bbm/l/b/f;
aput-object v2, v1, v7
sget-object v2, Lcom/bbm/l/b/f;->e:Lcom/bbm/l/b/f;
aput-object v2, v1, v8
const/4 v2, 0x5
sget-object v3, Lcom/bbm/l/b/f;->f:Lcom/bbm/l/b/f;
aput-object v3, v1, v2
sput-object v1, Lcom/bbm/l/b/f;->i:[Lcom/bbm/l/b/f;
new-instance v1, Ljava/util/Hashtable;
invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
sput-object v1, Lcom/bbm/l/b/f;->h:Ljava/util/Hashtable;
invoke-static {}, Lcom/bbm/l/b/f;->values()[Lcom/bbm/l/b/f;
move-result-object v1
array-length v2, v1
:goto_72
if-ge v0, v2, :cond_80
aget-object v3, v1, v0
sget-object v4, Lcom/bbm/l/b/f;->h:Ljava/util/Hashtable;
iget-object v5, v3, Lcom/bbm/l/b/f;->g:Ljava/lang/String;
invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_72
:cond_80
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/l/b/f;->g:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/l/b/f;
.registers 2
sget-object v0, Lcom/bbm/l/b/f;->h:Ljava/util/Hashtable;
invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/b/f;
if-eqz v0, :cond_b
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/bbm/l/b/f;->f:Lcom/bbm/l/b/f;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/l/b/f;
.registers 2
const-class v0, Lcom/bbm/l/b/f;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/l/b/f;
return-object v0
.end method
.method public static values()[Lcom/bbm/l/b/f;
.registers 1
sget-object v0, Lcom/bbm/l/b/f;->i:[Lcom/bbm/l/b/f;
invoke-virtual {v0}, [Lcom/bbm/l/b/f;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/l/b/f;
return-object v0
.end method