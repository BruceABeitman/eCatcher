.class Lcom/pinguo/camera360/push/PushThread$1;
.super Ljava/lang/Object;
.source "PushThread.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/push/PushThread;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/push/PushThread;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/push/PushThread;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/PushThread$1;->this$0:Lcom/pinguo/camera360/push/PushThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 9

    const/16 v6, 0xa

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    :goto_9
    return v3

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v6, :cond_9

    const-string/jumbo v4, ".json"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_9

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/pinguo/camera360/push/PushThread$1;->this$0:Lcom/pinguo/camera360/push/PushThread;

    #getter for: Lcom/pinguo/camera360/push/PushThread;->oldDay:Ljava/lang/String;
    invoke-static {v4}, Lcom/pinguo/camera360/push/PushThread;->access$0(Lcom/pinguo/camera360/push/PushThread;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_9

    const/4 v3, 0x0

    goto :goto_9
.end method
