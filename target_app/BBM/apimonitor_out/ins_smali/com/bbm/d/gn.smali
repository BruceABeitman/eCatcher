.class public final enum Lcom/bbm/d/gn;
.super Ljava/lang/Enum;
.source "TextMessageContext.java"
.field public static final enum a:Lcom/bbm/d/gn;
.field public static final enum b:Lcom/bbm/d/gn;
.field public static final enum c:Lcom/bbm/d/gn;
.field public static final enum d:Lcom/bbm/d/gn;
.field public static final enum e:Lcom/bbm/d/gn;
.field public static final enum f:Lcom/bbm/d/gn;
.field public static final enum g:Lcom/bbm/d/gn;
.field public static final enum h:Lcom/bbm/d/gn;
.field public static final enum i:Lcom/bbm/d/gn;
.field public static final enum j:Lcom/bbm/d/gn;
.field private static k:Ljava/util/Hashtable;
.field private static final synthetic m:[Lcom/bbm/d/gn;
.field private final l:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "DisplayName"
const-string v2, "DisplayName"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->a:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "PersonalMessage"
const-string v2, "PersonalMessage"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->b:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "NowPlayingMessage"
const-string v2, "NowPlayingMessage"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->c:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "Avatar"
const-string v2, "Avatar"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->d:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "RealtimeLocation"
const-string v2, "RealtimeLocation"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "SharedUrl"
const/4 v2, 0x5
const-string v3, "SharedUrl"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->f:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "RichContent"
const/4 v2, 0x6
const-string v3, "RichContent"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->g:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "SharedChannelPost"
const/4 v2, 0x7
const-string v3, "SharedChannelPost"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->h:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "PartnerAppContent"
const/16 v2, 0x8
const-string v3, "PartnerAppContent"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->i:Lcom/bbm/d/gn;
new-instance v0, Lcom/bbm/d/gn;
const-string v1, "Unspecified"
const/16 v2, 0x9
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/d/gn;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/gn;->j:Lcom/bbm/d/gn;
const/16 v0, 0xa
new-array v0, v0, [Lcom/bbm/d/gn;
sget-object v1, Lcom/bbm/d/gn;->a:Lcom/bbm/d/gn;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/d/gn;->b:Lcom/bbm/d/gn;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/d/gn;->c:Lcom/bbm/d/gn;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/d/gn;->d:Lcom/bbm/d/gn;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/d/gn;->f:Lcom/bbm/d/gn;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/d/gn;->g:Lcom/bbm/d/gn;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/bbm/d/gn;->h:Lcom/bbm/d/gn;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/bbm/d/gn;->i:Lcom/bbm/d/gn;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/bbm/d/gn;->j:Lcom/bbm/d/gn;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/d/gn;->m:[Lcom/bbm/d/gn;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/gn;->l:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/d/gn;
.registers 7
sget-object v0, Lcom/bbm/d/gn;->k:Ljava/util/Hashtable;
if-nez v0, :cond_1d
new-instance v1, Ljava/util/Hashtable;
invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
invoke-static {}, Lcom/bbm/d/gn;->values()[Lcom/bbm/d/gn;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_f
if-ge v0, v3, :cond_1b
aget-object v4, v2, v0
iget-object v5, v4, Lcom/bbm/d/gn;->l:Ljava/lang/String;
invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1b
sput-object v1, Lcom/bbm/d/gn;->k:Ljava/util/Hashtable;
:cond_1d
if-eqz p0, :cond_2a
sget-object v0, Lcom/bbm/d/gn;->k:Ljava/util/Hashtable;
invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gn;
:goto_27
if-eqz v0, :cond_2c
:goto_29
return-object v0
:cond_2a
const/4 v0, 0x0
goto :goto_27
:cond_2c
sget-object v0, Lcom/bbm/d/gn;->j:Lcom/bbm/d/gn;
goto :goto_29
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/gn;
.registers 2
const-class v0, Lcom/bbm/d/gn;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/gn;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/gn;
.registers 1
sget-object v0, Lcom/bbm/d/gn;->m:[Lcom/bbm/d/gn;
invoke-virtual {v0}, [Lcom/bbm/d/gn;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/gn;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/gn;->l:Ljava/lang/String;
return-object v0
.end method