.class public Lcom/twidroid/net/hockeyapp/android/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field public static final o:I = 0xe

.field public static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Crash Data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "The app found information about previous crashes. Would you like to send this data to the developer?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Dismiss"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Send"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Download Failed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The update could not be downloaded. Would you like to try again?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Cancel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Retry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Please install the latest version to continue to use this app."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Update Available"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Show information about the new update?"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dismiss"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Show"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Build Expired"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "This has build has expired. Please check HockeyApp for any updates."

    aput-object v2, v0, v1

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/j;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/twidroid/net/hockeyapp/android/j;->a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twidroid/net/hockeyapp/android/i;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/twidroid/net/hockeyapp/android/i;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_14

    if-ltz p1, :cond_14

    sget-object v1, Lcom/twidroid/net/hockeyapp/android/j;->p:[Ljava/lang/String;

    array-length v1, v1

    if-gt p1, v1, :cond_14

    sget-object v0, Lcom/twidroid/net/hockeyapp/android/j;->p:[Ljava/lang/String;

    aget-object v0, v0, p1

    :cond_14
    return-object v0
.end method
