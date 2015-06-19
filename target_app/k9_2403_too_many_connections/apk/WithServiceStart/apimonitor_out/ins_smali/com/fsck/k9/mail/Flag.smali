.class public final enum Lcom/fsck/k9/mail/Flag;
.super Ljava/lang/Enum;
.source "Flag.java"
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/Flag;
.field public static final enum ANSWERED:Lcom/fsck/k9/mail/Flag;
.field public static final enum DELETED:Lcom/fsck/k9/mail/Flag;
.field public static final enum DRAFT:Lcom/fsck/k9/mail/Flag;
.field public static final enum FLAGGED:Lcom/fsck/k9/mail/Flag;
.field public static final enum RECENT:Lcom/fsck/k9/mail/Flag;
.field public static final enum SEEN:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_DESTROYED:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_NO_SEEN_INFO:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_SEND_FAILED:Lcom/fsck/k9/mail/Flag;
.field public static final enum X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "DELETED"
invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "SEEN"
invoke-direct {v0, v1, v4}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "ANSWERED"
invoke-direct {v0, v1, v5}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "FLAGGED"
invoke-direct {v0, v1, v6}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "DRAFT"
invoke-direct {v0, v1, v7}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->DRAFT:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "RECENT"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->RECENT:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_NO_SEEN_INFO"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_NO_SEEN_INFO:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_DESTROYED"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_SEND_FAILED"
const/16 v2, 0x8
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_SEND_FAILED:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_SEND_IN_PROGRESS"
const/16 v2, 0x9
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_DOWNLOADED_FULL"
const/16 v2, 0xa
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_DOWNLOADED_PARTIAL"
const/16 v2, 0xb
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;
new-instance v0, Lcom/fsck/k9/mail/Flag;
const-string v1, "X_REMOTE_COPY_STARTED"
const/16 v2, 0xc
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Flag;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;
const/16 v0, 0xd
new-array v0, v0, [Lcom/fsck/k9/mail/Flag;
sget-object v1, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
aput-object v1, v0, v3
sget-object v1, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
aput-object v1, v0, v4
sget-object v1, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;
aput-object v1, v0, v5
sget-object v1, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;
aput-object v1, v0, v6
sget-object v1, Lcom/fsck/k9/mail/Flag;->DRAFT:Lcom/fsck/k9/mail/Flag;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/fsck/k9/mail/Flag;->RECENT:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_NO_SEEN_INFO:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DESTROYED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_SEND_FAILED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_SEND_IN_PROGRESS:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/mail/Flag;->$VALUES:[Lcom/fsck/k9/mail/Flag;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;
.registers 2
const-class v0, Lcom/fsck/k9/mail/Flag;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/fsck/k9/mail/Flag;
return-object p0
.end method
.method public static values()[Lcom/fsck/k9/mail/Flag;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/Flag;->$VALUES:[Lcom/fsck/k9/mail/Flag;
invoke-virtual {v0}, [Lcom/fsck/k9/mail/Flag;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fsck/k9/mail/Flag;
return-object v0
.end method