.class public final enum Lcom/fsck/k9/Account$FolderMode;
.super Ljava/lang/Enum;
.source "Account.java"
.field private static final synthetic $VALUES:[Lcom/fsck/k9/Account$FolderMode;
.field public static final enum ALL:Lcom/fsck/k9/Account$FolderMode;
.field public static final enum FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
.field public static final enum FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;
.field public static final enum NONE:Lcom/fsck/k9/Account$FolderMode;
.field public static final enum NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/fsck/k9/Account$FolderMode;
const-string v1, "NONE"
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/Account$FolderMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;
new-instance v0, Lcom/fsck/k9/Account$FolderMode;
const-string v1, "ALL"
invoke-direct {v0, v1, v3}, Lcom/fsck/k9/Account$FolderMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;
new-instance v0, Lcom/fsck/k9/Account$FolderMode;
const-string v1, "FIRST_CLASS"
invoke-direct {v0, v1, v4}, Lcom/fsck/k9/Account$FolderMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;
new-instance v0, Lcom/fsck/k9/Account$FolderMode;
const-string v1, "FIRST_AND_SECOND_CLASS"
invoke-direct {v0, v1, v5}, Lcom/fsck/k9/Account$FolderMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
new-instance v0, Lcom/fsck/k9/Account$FolderMode;
const-string v1, "NOT_SECOND_CLASS"
invoke-direct {v0, v1, v6}, Lcom/fsck/k9/Account$FolderMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
const/4 v0, 0x5
new-array v0, v0, [Lcom/fsck/k9/Account$FolderMode;
sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;
aput-object v1, v0, v2
sget-object v1, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;
aput-object v1, v0, v3
sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;
aput-object v1, v0, v4
sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
aput-object v1, v0, v5
sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;
aput-object v1, v0, v6
sput-object v0, Lcom/fsck/k9/Account$FolderMode;->$VALUES:[Lcom/fsck/k9/Account$FolderMode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;
.registers 2
const-class v0, Lcom/fsck/k9/Account$FolderMode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/fsck/k9/Account$FolderMode;
return-object p0
.end method
.method public static values()[Lcom/fsck/k9/Account$FolderMode;
.registers 1
sget-object v0, Lcom/fsck/k9/Account$FolderMode;->$VALUES:[Lcom/fsck/k9/Account$FolderMode;
invoke-virtual {v0}, [Lcom/fsck/k9/Account$FolderMode;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fsck/k9/Account$FolderMode;
return-object v0
.end method