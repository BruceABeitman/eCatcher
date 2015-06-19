.class final enum Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.field public static final enum b:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.field public static final enum c:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.field private static final synthetic d:[Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
const-string v1, "Info"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->a:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
new-instance v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
const-string v1, "Warning"
invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->b:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
new-instance v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
const-string v1, "Error"
invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->c:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
const/4 v0, 0x3
new-array v0, v0, [Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
sget-object v1, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->a:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
aput-object v1, v0, v2
sget-object v1, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->b:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
aput-object v1, v0, v3
sget-object v1, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->c:Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
aput-object v1, v0, v4
sput-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->d:[Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.registers 2
const-class v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
return-object v0
.end method
.method public static values()[Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
.registers 1
sget-object v0, Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->d:[Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
invoke-virtual {v0}, [Lcom/ford/syncV4/util/NativeLogTool$LogTarget;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ford/syncV4/util/NativeLogTool$LogTarget;
return-object v0
.end method