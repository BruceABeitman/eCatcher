.class public final enum Lcom/fsck/k9/MessagingController$SORT_TYPE;
.super Ljava/lang/Enum;
.source "MessagingController.java"
.field private static final synthetic $VALUES:[Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field public static final enum SORT_ATTACHMENT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field public static final enum SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field public static final enum SORT_FLAGGED:Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field public static final enum SORT_SENDER:Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field public static final enum SORT_SUBJECT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field public static final enum SORT_UNREAD:Lcom/fsck/k9/MessagingController$SORT_TYPE;
.field private ascendingToast:I
.field private defaultAscending:Z
.field private descendingToast:I
.method static constructor <clinit>()V
.registers 13
const/4 v12, 0x4
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v2, 0x0
const/4 v9, 0x1
new-instance v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;
const-string v1, "SORT_DATE"
const v3, 0x7f08019d
const v4, 0x7f08019e
move v5, v2
invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;IIIZ)V
sput-object v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;
new-instance v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;
const-string v4, "SORT_SUBJECT"
const v6, 0x7f0801a1
const v7, 0x7f0801a2
move v5, v9
move v8, v9
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;IIIZ)V
sput-object v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SUBJECT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
new-instance v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;
const-string v4, "SORT_SENDER"
const v6, 0x7f08019f
const v7, 0x7f0801a0
move v5, v10
move v8, v9
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;IIIZ)V
sput-object v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SENDER:Lcom/fsck/k9/MessagingController$SORT_TYPE;
new-instance v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;
const-string v4, "SORT_UNREAD"
const v6, 0x7f0801a5
const v7, 0x7f0801a6
move v5, v11
move v8, v9
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;IIIZ)V
sput-object v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_UNREAD:Lcom/fsck/k9/MessagingController$SORT_TYPE;
new-instance v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;
const-string v4, "SORT_FLAGGED"
const v6, 0x7f0801a3
const v7, 0x7f0801a4
move v5, v12
move v8, v9
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;IIIZ)V
sput-object v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_FLAGGED:Lcom/fsck/k9/MessagingController$SORT_TYPE;
new-instance v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;
const-string v4, "SORT_ATTACHMENT"
const/4 v5, 0x5
const v6, 0x7f0801a7
const v7, 0x7f0801a8
move v8, v9
invoke-direct/range {v3 .. v8}, Lcom/fsck/k9/MessagingController$SORT_TYPE;-><init>(Ljava/lang/String;IIIZ)V
sput-object v3, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_ATTACHMENT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
const/4 v0, 0x6
new-array v0, v0, [Lcom/fsck/k9/MessagingController$SORT_TYPE;
sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/MessagingController$SORT_TYPE;
aput-object v1, v0, v2
sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SUBJECT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
aput-object v1, v0, v9
sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_SENDER:Lcom/fsck/k9/MessagingController$SORT_TYPE;
aput-object v1, v0, v10
sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_UNREAD:Lcom/fsck/k9/MessagingController$SORT_TYPE;
aput-object v1, v0, v11
sget-object v1, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_FLAGGED:Lcom/fsck/k9/MessagingController$SORT_TYPE;
aput-object v1, v0, v12
const/4 v1, 0x5
sget-object v2, Lcom/fsck/k9/MessagingController$SORT_TYPE;->SORT_ATTACHMENT:Lcom/fsck/k9/MessagingController$SORT_TYPE;
aput-object v2, v0, v1
sput-object v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->$VALUES:[Lcom/fsck/k9/MessagingController$SORT_TYPE;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IIIZ)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->ascendingToast:I
iput p4, p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->descendingToast:I
iput-boolean p5, p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->defaultAscending:Z
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/MessagingController$SORT_TYPE;
.registers 2
const-class v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;
return-object p0
.end method
.method public static values()[Lcom/fsck/k9/MessagingController$SORT_TYPE;
.registers 1
sget-object v0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->$VALUES:[Lcom/fsck/k9/MessagingController$SORT_TYPE;
invoke-virtual {v0}, [Lcom/fsck/k9/MessagingController$SORT_TYPE;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fsck/k9/MessagingController$SORT_TYPE;
return-object v0
.end method
.method public getToast(Z)I
.registers 3
if-eqz p1, :cond_5
iget v0, p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->ascendingToast:I
:goto_4
return v0
:cond_5
iget v0, p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->descendingToast:I
goto :goto_4
.end method
.method public isDefaultAscending()Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/MessagingController$SORT_TYPE;->defaultAscending:Z
return v0
.end method