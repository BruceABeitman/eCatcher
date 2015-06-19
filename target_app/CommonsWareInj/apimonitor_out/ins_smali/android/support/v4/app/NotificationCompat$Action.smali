.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/NotificationCompatBase$Action;
.source "NotificationCompat.java"
.field public static final FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
.field public actionIntent:Landroid/app/PendingIntent;
.field public icon:I
.field private final mExtras:Landroid/os/Bundle;
.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;
.field public title:Ljava/lang/CharSequence;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
return-void
.end method
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
.registers 10
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
const/4 v5, 0x0
move-object v0, p0
move v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V
return-void
.end method
.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V
.registers 6
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;-><init>()V
iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I
iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;
iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;
if-eqz p4, :cond_10
:goto_b
iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;
iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;
return-void
:cond_10
new-instance p4, Landroid/os/Bundle;
invoke-direct {p4}, Landroid/os/Bundle;-><init>()V
goto :goto_b
.end method
.method synthetic constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Landroid/support/v4/app/NotificationCompat$1;)V
.registers 7
invoke-direct/range {p0 .. p5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V
return-void
.end method
.method static synthetic access$300(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;
return-object v0
.end method
.method protected getActionIntent()Landroid/app/PendingIntent;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;
return-object v0
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;
return-object v0
.end method
.method protected getIcon()I
.registers 2
iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I
return v0
.end method
.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;
return-object v0
.end method
.method public bridge synthetic getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
move-result-object v0
return-object v0
.end method
.method protected getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;
return-object v0
.end method