.class public Lco/vine/android/widget/TypingEditText;
.super Lco/vine/android/views/SdkEditText;
.source "TypingEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/TypingEditText$1;,
        Lco/vine/android/widget/TypingEditText$TypingHandler;,
        Lco/vine/android/widget/TypingEditText$TypingTextWatcher;,
        Lco/vine/android/widget/TypingEditText$TypingListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x1f4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lco/vine/android/widget/TypingEditText$TypingListener;

.field private mTimeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lco/vine/android/widget/TypingEditText;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lco/vine/android/widget/TypingEditText;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/views/SdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lco/vine/android/widget/TypingEditText;->setup()V

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/widget/TypingEditText;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/TypingEditText;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/widget/TypingEditText;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/widget/TypingEditText;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$300(Lco/vine/android/widget/TypingEditText;)Lco/vine/android/widget/TypingEditText$TypingListener;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/TypingEditText;->mListener:Lco/vine/android/widget/TypingEditText$TypingListener;

    return-object v0
.end method

.method private setup()V
    .registers 3

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lco/vine/android/widget/TypingEditText;->mTimeout:J

    new-instance v0, Lco/vine/android/widget/TypingEditText$TypingHandler;

    invoke-direct {v0, p0}, Lco/vine/android/widget/TypingEditText$TypingHandler;-><init>(Lco/vine/android/widget/TypingEditText;)V

    iput-object v0, p0, Lco/vine/android/widget/TypingEditText;->mHandler:Landroid/os/Handler;

    new-instance v0, Lco/vine/android/widget/TypingEditText$TypingTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/vine/android/widget/TypingEditText$TypingTextWatcher;-><init>(Lco/vine/android/widget/TypingEditText;Lco/vine/android/widget/TypingEditText$1;)V

    invoke-virtual {p0, v0}, Lco/vine/android/widget/TypingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public setTimeout(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/widget/TypingEditText;->mTimeout:J

    return-void
.end method

.method public setTypingListener(Lco/vine/android/widget/TypingEditText$TypingListener;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/TypingEditText;->mListener:Lco/vine/android/widget/TypingEditText$TypingListener;

    return-void
.end method
