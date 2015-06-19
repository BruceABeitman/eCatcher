.class public final enum Lcom/fsck/k9/mail/Folder$OpenMode;
.super Ljava/lang/Enum;
.source "Folder.java"
.field private static final synthetic $VALUES:[Lcom/fsck/k9/mail/Folder$OpenMode;
.field public static final enum READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;
.field public static final enum READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/fsck/k9/mail/Folder$OpenMode;
const-string v1, "READ_WRITE"
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/mail/Folder$OpenMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
new-instance v0, Lcom/fsck/k9/mail/Folder$OpenMode;
const-string v1, "READ_ONLY"
invoke-direct {v0, v1, v3}, Lcom/fsck/k9/mail/Folder$OpenMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;
const/4 v0, 0x2
new-array v0, v0, [Lcom/fsck/k9/mail/Folder$OpenMode;
sget-object v1, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
aput-object v1, v0, v2
sget-object v1, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_ONLY:Lcom/fsck/k9/mail/Folder$OpenMode;
aput-object v1, v0, v3
sput-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->$VALUES:[Lcom/fsck/k9/mail/Folder$OpenMode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder$OpenMode;
.registers 2
const-class v0, Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/fsck/k9/mail/Folder$OpenMode;
return-object p0
.end method
.method public static values()[Lcom/fsck/k9/mail/Folder$OpenMode;
.registers 1
sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->$VALUES:[Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v0}, [Lcom/fsck/k9/mail/Folder$OpenMode;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fsck/k9/mail/Folder$OpenMode;
return-object v0
.end method