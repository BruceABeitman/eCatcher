.class Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->b:Ljava/lang/String;

    iput p3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->d:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;B)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;)V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;)Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;
    .registers 8

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "translation"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "Got %s=%d (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    sget-object v4, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->a:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;)V

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
