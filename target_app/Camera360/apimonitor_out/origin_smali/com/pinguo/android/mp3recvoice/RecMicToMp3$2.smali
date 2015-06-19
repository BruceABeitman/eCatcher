.class Lcom/pinguo/android/mp3recvoice/RecMicToMp3$2;
.super Ljava/util/TimerTask;
.source "RecMicToMp3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkEncodeMp3Performance(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;


# direct methods
.method constructor <init>(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$2;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$2;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    #getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsCompleteChecking:Z
    invoke-static {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$10(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Z

    move-result v0

    invoke-static {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$11(Z)V

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$2;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The rate of try to test Encode mp3 data is"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$12()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, " good"

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$3(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/String;)V

    return-void

    :cond_28
    const-string/jumbo v0, " bad"

    goto :goto_1c
.end method
