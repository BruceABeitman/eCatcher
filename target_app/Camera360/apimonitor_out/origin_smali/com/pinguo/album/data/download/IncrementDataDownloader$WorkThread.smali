.class Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;
.super Ljava/lang/Thread;
.source "IncrementDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/data/download/IncrementDataDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/data/download/IncrementDataDownloader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v7, Lcom/pinguo/album/data/download/PGImageDownloader;

    iget-object v8, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    #getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$2(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Landroid/content/Context;

    move-result-object v8

    const v9, 0xea60

    const v10, 0xea60

    invoke-direct {v7, v8, v9, v10}, Lcom/pinguo/album/data/download/PGImageDownloader;-><init>(Landroid/content/Context;II)V

    iget-object v8, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->url:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/album/data/download/PGImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_5f

    :try_start_22
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/pinguo/album/data/download/entity/IncrementDataJson;

    invoke-virtual {v2, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/pinguo/album/data/download/entity/IncrementDataJson;

    move-object v3, v0

    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_7a

    const/4 v5, 0x0

    if-eqz v3, :cond_54

    :try_start_37
    iget v7, v3, Lcom/pinguo/album/data/download/entity/IncrementDataJson;->status:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_54

    iget-object v7, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    iget-object v8, v3, Lcom/pinguo/album/data/download/entity/IncrementDataJson;->data:Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;

    #calls: Lcom/pinguo/album/data/download/IncrementDataDownloader;->insertData(Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;)V
    invoke-static {v7, v8}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$3(Lcom/pinguo/album/data/download/IncrementDataDownloader;Lcom/pinguo/album/data/download/entity/IncrementDataJson$ResultJson;)V

    iget-object v7, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    #getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$4(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4e} :catch_5f

    :goto_4e
    if-eqz v5, :cond_53

    invoke-static {v5}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    :try_start_54
    iget-object v7, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    #getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$4(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5e} :catch_5f

    goto :goto_4e

    :catch_5f
    move-exception v1

    :goto_60
    :try_start_60
    iget-object v7, p0, Lcom/pinguo/album/data/download/IncrementDataDownloader$WorkThread;->this$0:Lcom/pinguo/album/data/download/IncrementDataDownloader;

    #getter for: Lcom/pinguo/album/data/download/IncrementDataDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->access$4(Lcom/pinguo/album/data/download/IncrementDataDownloader;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_70

    if-eqz v5, :cond_53

    invoke-static {v5}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_53

    :catchall_70
    move-exception v7

    :goto_71
    if-eqz v5, :cond_76

    invoke-static {v5}, Lcom/pinguo/album/utils/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_76
    throw v7

    :catchall_77
    move-exception v7

    move-object v5, v6

    goto :goto_71

    :catch_7a
    move-exception v1

    move-object v5, v6

    goto :goto_60
.end method
