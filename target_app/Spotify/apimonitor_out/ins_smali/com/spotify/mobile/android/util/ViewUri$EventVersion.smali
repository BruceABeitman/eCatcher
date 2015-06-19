.class public final enum Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field public static final enum b:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field public static final enum c:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field public static final enum d:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field public static final enum e:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field public static final enum f:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field private static final synthetic g:[Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.field private final mEventVersion:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const-string v1, "NONE"
const-string v2, ""
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->a:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
new-instance v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const-string v1, "CONTEXT_MENU"
const-string v2, "context-menu"
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->b:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
new-instance v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const-string v1, "ACTION_BAR"
const-string v2, "action-bar"
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->c:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
new-instance v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const-string v1, "LIST_ITEM"
const-string v2, "list-item"
invoke-direct {v0, v1, v7, v2}, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->d:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
new-instance v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const-string v1, "LIST_ITEM_CARD"
const-string v2, "list-item-card"
invoke-direct {v0, v1, v8, v2}, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->e:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
new-instance v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const-string v1, "PRIMARY_BUTTON"
const/4 v2, 0x5
const-string v3, "primary-button"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->f:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
const/4 v0, 0x6
new-array v0, v0, [Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->a:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->b:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->c:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->d:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
aput-object v1, v0, v7
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->e:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->f:Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->g:[Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->mEventVersion:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->g:[Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/util/ViewUri$EventVersion;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/ViewUri$EventVersion;->mEventVersion:Ljava/lang/String;
return-object v0
.end method