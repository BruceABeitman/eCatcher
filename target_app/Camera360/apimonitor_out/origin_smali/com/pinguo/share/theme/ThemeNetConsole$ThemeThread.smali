.class Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;
.super Ljava/lang/Thread;
.source "ThemeNetConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/theme/ThemeNetConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeThread"
.end annotation


# instance fields
.field private bCurrentDownload:Z

.field private bDownload:Z

.field private mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

.field final synthetic this$0:Lcom/pinguo/share/theme/ThemeNetConsole;


# direct methods
.method private constructor <init>(Lcom/pinguo/share/theme/ThemeNetConsole;)V
    .registers 3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z

    iput-boolean v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;-><init>(Lcom/pinguo/share/theme/ThemeNetConsole;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)Lcom/pinguo/share/theme/ThemeXMLStruct;
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->getCurrentStruct()Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z

    return-void
.end method

.method private getCurrentStruct()Lcom/pinguo/share/theme/ThemeXMLStruct;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    iput-object v9, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    #calls: Lcom/pinguo/share/theme/ThemeNetConsole;->getNextData()Lcom/pinguo/share/theme/ThemeXMLStruct;
    invoke-static {v5}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$0(Lcom/pinguo/share/theme/ThemeNetConsole;)Lcom/pinguo/share/theme/ThemeXMLStruct;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    if-eqz v5, :cond_12

    iget-boolean v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bDownload:Z

    if-nez v5, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-boolean v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pinguo/share/theme/ThemeNetConsole;->THEME_TEMPLATE_SAVE_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    invoke-virtual {v6}, Lcom/pinguo/share/theme/ThemeXMLStruct;->getSmall()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pinguo/share/util/ShareModuleUtil;->getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7c

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    #getter for: Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$1(Lcom/pinguo/share/theme/ThemeNetConsole;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0x10004

    iget-object v7, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    #getter for: Lcom/pinguo/share/theme/ThemeNetConsole;->mParentHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$1(Lcom/pinguo/share/theme/ThemeNetConsole;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_6c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7c

    invoke-static {}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Delete file failed!"

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    iget-object v6, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    #calls: Lcom/pinguo/share/theme/ThemeNetConsole;->startFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
    invoke-static {v5, v6}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$3(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    iget-object v6, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    #calls: Lcom/pinguo/share/theme/ThemeNetConsole;->download(Lcom/pinguo/share/theme/ThemeXMLStruct;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)I
    invoke-static {v5, v6, p0}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$4(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;)I

    move-result v5

    packed-switch v5, :pswitch_data_b6

    invoke-static {}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$2()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Invalid operation!"

    invoke-static {v5, v6}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_98
    iput-object v9, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    iput-boolean v8, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->bCurrentDownload:Z

    goto/16 :goto_4

    :pswitch_9e
    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    iget-object v6, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    #calls: Lcom/pinguo/share/theme/ThemeNetConsole;->errorFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
    invoke-static {v5, v6}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$5(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    goto :goto_98

    :pswitch_a6
    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    iget-object v6, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    #calls: Lcom/pinguo/share/theme/ThemeNetConsole;->stopFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
    invoke-static {v5, v6}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$6(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    goto :goto_98

    :pswitch_ae
    iget-object v5, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;

    iget-object v6, p0, Lcom/pinguo/share/theme/ThemeNetConsole$ThemeThread;->mStruct:Lcom/pinguo/share/theme/ThemeXMLStruct;

    #calls: Lcom/pinguo/share/theme/ThemeNetConsole;->cancelFunction(Lcom/pinguo/share/theme/ThemeXMLStruct;)V
    invoke-static {v5, v6}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$7(Lcom/pinguo/share/theme/ThemeNetConsole;Lcom/pinguo/share/theme/ThemeXMLStruct;)V

    goto :goto_98

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_a6
        :pswitch_ae
    .end packed-switch
.end method
