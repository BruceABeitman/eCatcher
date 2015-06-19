.class public final enum Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum c:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum e:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum h:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field public static final enum i:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field private static final synthetic j:[Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "INIT"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "HIDDEN"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "DOWNLOADABLE"
invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->c:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "DOWNLOADING"
invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "DOWNLOADED"
invoke-direct {v0, v1, v7}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->e:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "WAITING"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "NO_INTERNET"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "OFFLINE_MODE"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->h:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
new-instance v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const-string v1, "SYNC_NOT_ALLOWED"
const/16 v2, 0x8
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->i:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const/16 v0, 0x9
new-array v0, v0, [Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->c:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->e:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->h:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->i:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->j:[Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.registers 2
const-class v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->j:[Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
return-object v0
.end method