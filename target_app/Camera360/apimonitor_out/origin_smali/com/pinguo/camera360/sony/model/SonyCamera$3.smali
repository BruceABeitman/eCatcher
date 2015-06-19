.class Lcom/pinguo/camera360/sony/model/SonyCamera$3;
.super Ljava/lang/Thread;
.source "SonyCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCamera;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v11, 0x1

    :try_start_1
    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->actTakePicture()Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v10, "result"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-gt v11, v10, :cond_23

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_23
    if-nez v6, :cond_35

    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "takeAndFetchPicture: post image URL is null."

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2f} :catch_65
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2f} :catch_8c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2f} :catch_a2

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    :goto_34
    return-void

    :cond_35
    :try_start_35
    invoke-static {v6}, Lcom/pinguo/camera360/sony/utils/SimpleHttpClient;->getUrlContentToByte(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_3e

    array-length v10, v2

    if-nez v10, :cond_49

    :cond_3e
    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireTakePictureFailListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$10(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_43} :catch_65
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_43} :catch_8c
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_43} :catch_a2

    :goto_43
    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    goto :goto_34

    :cond_49
    :try_start_49
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v10, 0x0

    array-length v11, v2

    invoke-static {v2, v10, v11, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    new-instance v9, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-direct {v9, v1, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePictureTakenListener([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    invoke-static {v10, v2, v9}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$11(Lcom/pinguo/camera360/sony/model/SonyCamera;[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_b9
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_64} :catch_65
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_64} :catch_8c
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_64} :catch_a2

    goto :goto_43

    :catch_65
    move-exception v3

    :try_start_66
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "IOException while closing slicer: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireTakePictureFailListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$10(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    :try_end_86
    .catchall {:try_start_66 .. :try_end_86} :catchall_b9

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    goto :goto_34

    :catch_8c
    move-exception v3

    :try_start_8d
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "JSONException while closing slicer"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireTakePictureFailListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$10(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    :try_end_9c
    .catchall {:try_start_8d .. :try_end_9c} :catchall_b9

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    goto :goto_34

    :catch_a2
    move-exception v3

    :try_start_a3
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "null pointer while fetch picture"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->fireTakePictureFailListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$10(Lcom/pinguo/camera360/sony/model/SonyCamera;)V
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_b9

    iget-object v10, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
    invoke-static {v10}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    goto/16 :goto_34

    :catchall_b9
    move-exception v10

    iget-object v11, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$3;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #calls: Lcom/pinguo/camera360/sony/model/SonyCamera;->firePicturePostTakenListener()V
    invoke-static {v11}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$9(Lcom/pinguo/camera360/sony/model/SonyCamera;)V

    throw v10
.end method
