.class public Landroid/support/v4/app/NotificationCompat;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final DEFAULT_ALL:I = -0x1
.field public static final DEFAULT_LIGHTS:I = 0x4
.field public static final DEFAULT_SOUND:I = 0x1
.field public static final DEFAULT_VIBRATE:I = 0x2
.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"
.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"
.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"
.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"
.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"
.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"
.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"
.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"
.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"
.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"
.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"
.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"
.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"
.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"
.field public static final FLAG_AUTO_CANCEL:I = 0x10
.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40
.field public static final FLAG_GROUP_SUMMARY:I = 0x200
.field public static final FLAG_HIGH_PRIORITY:I = 0x80
.field public static final FLAG_INSISTENT:I = 0x4
.field public static final FLAG_LOCAL_ONLY:I = 0x100
.field public static final FLAG_NO_CLEAR:I = 0x20
.field public static final FLAG_ONGOING_EVENT:I = 0x2
.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8
.field public static final FLAG_SHOW_LIGHTS:I = 0x1
.field private static final IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl; = null
.field public static final PRIORITY_DEFAULT:I = 0x0
.field public static final PRIORITY_HIGH:I = 0x1
.field public static final PRIORITY_LOW:I = -0x1
.field public static final PRIORITY_MAX:I = 0x2
.field public static final PRIORITY_MIN:I = -0x2
.field public static final STREAM_DEFAULT:I = -0x1
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x14
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
goto :goto_d
:cond_1c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_2a
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
goto :goto_d
:cond_2a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_38
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
goto :goto_d
:cond_38
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_46
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
goto :goto_d
:cond_46
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_54
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplGingerbread;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplGingerbread;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
goto :goto_d
:cond_54
new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
goto :goto_d
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/NotificationCompat;->addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
return-void
.end method
.method static synthetic access$100(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/NotificationCompat;->addStyleToBuilderJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
return-void
.end method
.method static synthetic access$200()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
.registers 1
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
return-object v0
.end method
.method static synthetic access$500(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/app/NotificationCompat;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
move-result-object v0
return-object v0
.end method
.method private static addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
.registers 4
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;
invoke-interface {p0, v0}, Landroid/support/v4/app/NotificationBuilderWithActions;->addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
goto :goto_4
:cond_14
return-void
.end method
.method private static addStyleToBuilderJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
.registers 9
if-eqz p1, :cond_13
instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;
if-eqz v0, :cond_14
check-cast p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;
iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z
iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;
iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;
invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
:cond_13
:goto_13
return-void
:cond_14
instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;
if-eqz v0, :cond_26
check-cast p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;
iget-boolean v1, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z
iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;
iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;
invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompatJellybean;->addInboxStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
goto :goto_13
:cond_26
instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
if-eqz v0, :cond_13
check-cast p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;
iget-boolean v2, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z
iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;
iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;
iget-object v5, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;
iget-boolean v6, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z
move-object v0, p0
invoke-static/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigPictureStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
goto :goto_13
.end method
.method public static getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
.registers 3
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
move-result-object v0
return-object v0
.end method
.method public static getActionCount(Landroid/app/Notification;)I
.registers 2
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getActionCount(Landroid/app/Notification;)I
move-result v0
return v0
.end method
.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
.registers 2
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
.registers 2
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getGroup(Landroid/app/Notification;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getLocalOnly(Landroid/app/Notification;)Z
.registers 2
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getLocalOnly(Landroid/app/Notification;)Z
move-result v0
return v0
.end method
.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
.registers 6
invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
move-result-object v0
instance-of v1, v0, [Landroid/app/Notification;
if-nez v1, :cond_a
if-nez v0, :cond_f
:cond_a
check-cast v0, [Landroid/app/Notification;
check-cast v0, [Landroid/app/Notification;
:goto_e
return-object v0
:cond_f
array-length v1, v0
new-array v3, v1, [Landroid/app/Notification;
const/4 v1, 0x0
move v2, v1
:goto_14
array-length v1, v0
if-ge v2, v1, :cond_21
aget-object v1, v0, v2
check-cast v1, Landroid/app/Notification;
aput-object v1, v3, v2
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_14
:cond_21
invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
move-object v0, v3
goto :goto_e
.end method
.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
.registers 2
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static isGroupSummary(Landroid/app/Notification;)Z
.registers 2
sget-object v0, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->isGroupSummary(Landroid/app/Notification;)Z
move-result v0
return v0
.end method