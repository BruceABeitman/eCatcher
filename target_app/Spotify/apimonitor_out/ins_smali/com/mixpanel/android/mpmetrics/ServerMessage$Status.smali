.class public final enum Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.field public static final enum b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.field public static final enum c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.field private static final synthetic d:[Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
const-string v1, "SUCCEEDED"
invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
new-instance v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
const-string v1, "FAILED_RECOVERABLE"
invoke-direct {v0, v1, v3}, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
new-instance v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
const-string v1, "FAILED_UNRECOVERABLE"
invoke-direct {v0, v1, v4}, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
const/4 v0, 0x3
new-array v0, v0, [Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
sget-object v1, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
aput-object v1, v0, v2
sget-object v1, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
aput-object v1, v0, v3
sget-object v1, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->c:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
aput-object v1, v0, v4
sput-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->d:[Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.registers 2
const-class v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
return-object v0
.end method
.method public static values()[Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
.registers 1
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->d:[Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
return-object v0
.end method