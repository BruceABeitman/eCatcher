.class public final enum Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.field public static final enum c:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.field private static final synthetic d:[Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
const-string v1, "CONNECTED"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->a:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
new-instance v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
const-string v1, "DISCONNECTED"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->b:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
new-instance v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->c:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
const/4 v0, 0x3
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
sget-object v1, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->a:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->b:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->c:Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
aput-object v1, v0, v4
sput-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->d:[Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->d:[Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/share/model/Network$State;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/share/model/Network$State;
return-object v0
.end method