.class public final enum Lcom/spotify/music/spotlets/radio/model/ThumbState;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/music/spotlets/radio/model/ThumbState;
.field public static final enum b:Lcom/spotify/music/spotlets/radio/model/ThumbState;
.field public static final enum c:Lcom/spotify/music/spotlets/radio/model/ThumbState;
.field private static final synthetic d:[Lcom/spotify/music/spotlets/radio/model/ThumbState;
.field private final mState:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;
const-string v1, "None"
const-string v2, "none"
invoke-direct {v0, v1, v3, v2}, Lcom/spotify/music/spotlets/radio/model/ThumbState;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->a:Lcom/spotify/music/spotlets/radio/model/ThumbState;
new-instance v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;
const-string v1, "Up"
const-string v2, "ups"
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/music/spotlets/radio/model/ThumbState;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->b:Lcom/spotify/music/spotlets/radio/model/ThumbState;
new-instance v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;
const-string v1, "Down"
const-string v2, "downs"
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/music/spotlets/radio/model/ThumbState;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->c:Lcom/spotify/music/spotlets/radio/model/ThumbState;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/music/spotlets/radio/model/ThumbState;
sget-object v1, Lcom/spotify/music/spotlets/radio/model/ThumbState;->a:Lcom/spotify/music/spotlets/radio/model/ThumbState;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/music/spotlets/radio/model/ThumbState;->b:Lcom/spotify/music/spotlets/radio/model/ThumbState;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/music/spotlets/radio/model/ThumbState;->c:Lcom/spotify/music/spotlets/radio/model/ThumbState;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->d:[Lcom/spotify/music/spotlets/radio/model/ThumbState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->mState:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/music/spotlets/radio/model/ThumbState;
.registers 2
const-class v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;
return-object v0
.end method
.method public static values()[Lcom/spotify/music/spotlets/radio/model/ThumbState;
.registers 1
sget-object v0, Lcom/spotify/music/spotlets/radio/model/ThumbState;->d:[Lcom/spotify/music/spotlets/radio/model/ThumbState;
invoke-virtual {v0}, [Lcom/spotify/music/spotlets/radio/model/ThumbState;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/music/spotlets/radio/model/ThumbState;
return-object v0
.end method