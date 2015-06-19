.class Lcom/pinguo/camera360/sony/model/SonyCamera$9;
.super Ljava/lang/Thread;
.source "SonyCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/model/SonyCamera;->setPostViewSize(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

.field private final synthetic val$oldPostViewSize:Ljava/lang/String;

.field private final synthetic val$postViewSize:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/model/SonyCamera;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$postViewSize:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$oldPostViewSize:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$postViewSize:Ljava/lang/String;

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aget-object v0, v2, v7

    const/4 v7, 0x1

    aget-object v6, v2, v7

    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$1(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/pinguo/camera360/sony/model/SonyRemoteApi;->setStillSize(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v7, "result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    if-nez v4, :cond_45

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v7

    const-string/jumbo v8, "still-size"

    iget-object v9, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$postViewSize:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_cd
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_69
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_a3

    :goto_33
    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v7

    if-eqz v7, :cond_44

    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->updateSonyTopBarView()V

    :cond_44
    :goto_44
    return-void

    :cond_45
    :try_start_45
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setShootMode: error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v7

    const-string/jumbo v8, "still-size"

    iget-object v9, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$oldPostViewSize:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_45 .. :try_end_68} :catchall_cd
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_68} :catch_69
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_68} :catch_a3

    goto :goto_33

    :catch_69
    move-exception v1

    :try_start_6a
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setShootMode: IOException: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v7

    const-string/jumbo v8, "still-size"

    iget-object v9, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$oldPostViewSize:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_6a .. :try_end_91} :catchall_cd

    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v7

    if-eqz v7, :cond_44

    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->updateSonyTopBarView()V

    goto :goto_44

    :catch_a3
    move-exception v1

    :try_start_a4
    invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "setShootMode: JSON format error."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->getInstance()Lcom/pinguo/camera360/sony/SonyCameraParameters;

    move-result-object v7

    const-string/jumbo v8, "still-size"

    iget-object v9, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->val$oldPostViewSize:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/pinguo/camera360/sony/SonyCameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_a4 .. :try_end_ba} :catchall_cd

    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v7

    if-eqz v7, :cond_44

    iget-object v7, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v7}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->updateSonyTopBarView()V

    goto/16 :goto_44

    :catchall_cd
    move-exception v7

    iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v8}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v8

    if-eqz v8, :cond_df

    iget-object v8, p0, Lcom/pinguo/camera360/sony/model/SonyCamera$9;->this$0:Lcom/pinguo/camera360/sony/model/SonyCamera;

    #getter for: Lcom/pinguo/camera360/sony/model/SonyCamera;->mListener:Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;
    invoke-static {v8}, Lcom/pinguo/camera360/sony/model/SonyCamera;->access$12(Lcom/pinguo/camera360/sony/model/SonyCamera;)Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/pinguo/camera360/sony/model/SonyCameraEventObserver$ChangeListener;->updateSonyTopBarView()V

    :cond_df
    throw v7
.end method
