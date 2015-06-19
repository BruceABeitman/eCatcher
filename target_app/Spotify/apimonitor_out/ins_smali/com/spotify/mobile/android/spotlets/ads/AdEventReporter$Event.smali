.class public final enum Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum d:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum e:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum f:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum g:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum h:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum i:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum j:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum k:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum l:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum m:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field public static final enum n:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field private static final synthetic o:[Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.field private final mName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "CLICK"
const-string v2, "clicked"
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "START"
const-string v2, "started"
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "IMPRESSION"
const-string v2, "viewed"
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "FIRST_QUARTILE"
const-string v2, "first_quartile"
invoke-direct {v0, v1, v7, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->d:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "SECOND_QUARTILE"
const-string v2, "second_quartile"
invoke-direct {v0, v1, v8, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->e:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "THIRD_QUARTILE"
const/4 v2, 0x5
const-string v3, "third_quartile"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->f:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "COMPLETE"
const/4 v2, 0x6
const-string v3, "ended"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->g:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "PAUSE"
const/4 v2, 0x7
const-string v3, "paused"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->h:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "RESUME"
const/16 v2, 0x8
const-string v3, "resumed"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->i:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "MUTE"
const/16 v2, 0x9
const-string v3, "muted"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->j:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "UNMUTE"
const/16 v2, 0xa
const-string v3, "unmuted"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->k:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "EXPAND"
const/16 v2, 0xb
const-string v3, "expanded"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->l:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "COLLAPSE"
const/16 v2, 0xc
const-string v3, "collapsed"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->m:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const-string v1, "ERROR"
const/16 v2, 0xd
const-string v3, "errored"
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->n:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
const/16 v0, 0xe
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->a:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->b:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->c:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->d:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v1, v0, v7
sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->e:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->f:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->g:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->h:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->i:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->j:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->k:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->l:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->m:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
const/16 v1, 0xd
sget-object v2, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->n:Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->o:[Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->mName:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->o:[Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter$Event;->mName:Ljava/lang/String;
return-object v0
.end method