.class public final Lcom/millennialmedia/android/cc;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0xa

.field public static final e:I = 0xb

.field public static final f:I = 0xc

.field public static final g:I = 0xd

.field public static final h:I = 0xe

.field public static final i:I = 0xf

.field public static final j:I = 0x10

.field public static final k:I = 0x11

.field public static final l:I = 0x14

.field public static final m:I = 0x15

.field public static final n:I = 0x16

.field public static final o:I = 0x17

.field public static final p:I = 0x18

.field public static final q:I = 0x19

.field public static final r:I = 0x1a

.field public static final s:I = 0x64

.field static final t:Ljava/lang/String; = "MMJS is not downloaded"


# instance fields
.field private final u:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-static {p1}, Lcom/millennialmedia/android/cc;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/millennialmedia/android/cc;->u:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/cc;->u:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/millennialmedia/android/cc;->u:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/cc;->u:I

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_3c

    const-string v0, "No error."

    :goto_5
    return-object v0

    :sswitch_6
    const-string v0, "An invalid parameter was given."

    goto :goto_5

    :sswitch_9
    const-string v0, "Requires the main thread."

    goto :goto_5

    :sswitch_c
    const-string v0, "The request timed out."

    goto :goto_5

    :sswitch_f
    const-string v0, "There is no network available."

    goto :goto_5

    :sswitch_12
    const-string v0, "A request is already in progress."

    goto :goto_5

    :sswitch_15
    const-string v0, "A request is already being cached."

    goto :goto_5

    :sswitch_18
    const-string v0, "The request was not filled by the server."

    goto :goto_5

    :sswitch_1b
    const-string v0, "The server replied with unknown or bad content."

    goto :goto_5

    :sswitch_1e
    const-string v0, "The system is not permitting a request at this time, try again later."

    goto :goto_5

    :sswitch_21
    const-string v0, "Previously fetched ad exists in the playback queue"

    goto :goto_5

    :sswitch_24
    const-string v0, "There is no fetched ad to display."

    goto :goto_5

    :sswitch_27
    const-string v0, "The ad to display has expired."

    goto :goto_5

    :sswitch_2a
    const-string v0, "The ad could not be found on disk."

    goto :goto_5

    :sswitch_2d
    const-string v0, "The ad has already been displayed."

    goto :goto_5

    :sswitch_30
    const-string v0, "The ad has already been displayed."

    goto :goto_5

    :sswitch_33
    const-string v0, "The reference to the ad view was broken."

    goto :goto_5

    :sswitch_36
    const-string v0, "The ad view does not have a parent activity."

    goto :goto_5

    :sswitch_39
    const-string v0, "An unknown error occured."

    goto :goto_5

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_6
        0x3 -> :sswitch_9
        0xa -> :sswitch_c
        0xb -> :sswitch_f
        0xc -> :sswitch_12
        0xd -> :sswitch_15
        0xe -> :sswitch_18
        0xf -> :sswitch_1b
        0x10 -> :sswitch_1e
        0x11 -> :sswitch_21
        0x14 -> :sswitch_24
        0x15 -> :sswitch_27
        0x16 -> :sswitch_2a
        0x17 -> :sswitch_2d
        0x18 -> :sswitch_30
        0x19 -> :sswitch_33
        0x1a -> :sswitch_36
        0x64 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/millennialmedia/android/cc;->u:I

    return v0
.end method
