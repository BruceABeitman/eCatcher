.class public final enum Lcom/facebook/widget/LoginButton$ToolTipMode;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/widget/LoginButton$ToolTipMode;
.field public static final enum b:Lcom/facebook/widget/LoginButton$ToolTipMode;
.field public static final enum c:Lcom/facebook/widget/LoginButton$ToolTipMode;
.field private static final synthetic d:[Lcom/facebook/widget/LoginButton$ToolTipMode;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/widget/LoginButton$ToolTipMode;
const-string v1, "DEFAULT"
invoke-direct {v0, v1, v2}, Lcom/facebook/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->a:Lcom/facebook/widget/LoginButton$ToolTipMode;
new-instance v0, Lcom/facebook/widget/LoginButton$ToolTipMode;
const-string v1, "DISPLAY_ALWAYS"
invoke-direct {v0, v1, v3}, Lcom/facebook/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->b:Lcom/facebook/widget/LoginButton$ToolTipMode;
new-instance v0, Lcom/facebook/widget/LoginButton$ToolTipMode;
const-string v1, "NEVER_DISPLAY"
invoke-direct {v0, v1, v4}, Lcom/facebook/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->c:Lcom/facebook/widget/LoginButton$ToolTipMode;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/widget/LoginButton$ToolTipMode;
sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->a:Lcom/facebook/widget/LoginButton$ToolTipMode;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->b:Lcom/facebook/widget/LoginButton$ToolTipMode;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->c:Lcom/facebook/widget/LoginButton$ToolTipMode;
aput-object v1, v0, v4
sput-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->d:[Lcom/facebook/widget/LoginButton$ToolTipMode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/LoginButton$ToolTipMode;
.registers 2
const-class v0, Lcom/facebook/widget/LoginButton$ToolTipMode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/widget/LoginButton$ToolTipMode;
return-object v0
.end method
.method public static values()[Lcom/facebook/widget/LoginButton$ToolTipMode;
.registers 1
sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->d:[Lcom/facebook/widget/LoginButton$ToolTipMode;
invoke-virtual {v0}, [Lcom/facebook/widget/LoginButton$ToolTipMode;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/widget/LoginButton$ToolTipMode;
return-object v0
.end method