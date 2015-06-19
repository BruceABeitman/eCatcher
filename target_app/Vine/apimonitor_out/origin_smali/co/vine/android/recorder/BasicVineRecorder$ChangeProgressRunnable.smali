.class Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;
.super Ljava/lang/Object;
.source "BasicVineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/BasicVineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeProgressRunnable"
.end annotation


# instance fields
.field public progress:I

.field final synthetic this$0:Lco/vine/android/recorder/BasicVineRecorder;


# direct methods
.method private constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Lco/vine/android/recorder/BasicVineRecorder$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;-><init>(Lco/vine/android/recorder/BasicVineRecorder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget v1, p0, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;->progress:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/BasicVineRecorder;->changeProgress(J)V

    return-void
.end method
