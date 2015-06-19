.class Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;
.super Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;
.source "RecMicToMp3Proxyer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;

.field private final synthetic val$pcmFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;->val$pcmFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/ThreadUtils$BackGroundThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;->val$pcmFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " delete pcm file : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;->val$pcmFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
