.class public final enum Lcom/fsck/k9/Account$HideButtons;
.super Ljava/lang/Enum;
.source "Account.java"
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$HideButtons;
.field public static final enum ALWAYS:Lcom/fsck/k9/Account$HideButtons;
.field public static final enum KEYBOARD_AVAILABLE:Lcom/fsck/k9/Account$HideButtons;
.field public static final enum NEVER:Lcom/fsck/k9/Account$HideButtons;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/fsck/k9/Account$HideButtons;
const-string v1, "NEVER"
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/Account$HideButtons;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;
new-instance v0, Lcom/fsck/k9/Account$HideButtons;
const-string v1, "ALWAYS"
invoke-direct {v0, v1, v3}, Lcom/fsck/k9/Account$HideButtons;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$HideButtons;->ALWAYS:Lcom/fsck/k9/Account$HideButtons;
new-instance v0, Lcom/fsck/k9/Account$HideButtons;
const-string v1, "KEYBOARD_AVAILABLE"
invoke-direct {v0, v1, v4}, Lcom/fsck/k9/Account$HideButtons;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$HideButtons;->KEYBOARD_AVAILABLE:Lcom/fsck/k9/Account$HideButtons;
const/4 v0, 0x3
new-array v0, v0, [Lcom/fsck/k9/Account$HideButtons;
sget-object v1, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;
aput-object v1, v0, v2
sget-object v1, Lcom/fsck/k9/Account$HideButtons;->ALWAYS:Lcom/fsck/k9/Account$HideButtons;
aput-object v1, v0, v3
sget-object v1, Lcom/fsck/k9/Account$HideButtons;->KEYBOARD_AVAILABLE:Lcom/fsck/k9/Account$HideButtons;
aput-object v1, v0, v4
sput-object v0, Lcom/fsck/k9/Account$HideButtons;->$VALUES:[Lcom/fsck/k9/Account$HideButtons;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$HideButtons;
.registers 2
const-class v0, Lcom/fsck/k9/Account$HideButtons;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/fsck/k9/Account$HideButtons;
return-object p0
.end method
.method public static values()[Lcom/fsck/k9/Account$HideButtons;
.registers 1
sget-object v0, Lcom/fsck/k9/Account$HideButtons;->$VALUES:[Lcom/fsck/k9/Account$HideButtons;
invoke-virtual {v0}, [Lcom/fsck/k9/Account$HideButtons;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fsck/k9/Account$HideButtons;
return-object v0
.end method