.class Lco/vine/android/recorder/VineRecorder$6;
.super Ljava/lang/Object;
.source "VineRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;


# direct methods
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$6;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$6;->this$0:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->setHasPreviewedAlreadyIfNeeded()V

    iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$6;->this$0:Lco/vine/android/recorder/VineRecorder;

    const-string v1, "finishClicker"

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->finish(Ljava/lang/String;)V

    return-void
.end method
