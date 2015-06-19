.class  Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;
.super Lcom/android/volley/toolbox/StringRequest;
.source "GalleryActivity.java"
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/GalleryActivity$2;
.field private final synthetic val$uploadJsonContent:Lorg/json/JSONObject;
.method constructor <init>(Lcom/pinguo/camera360/gallery/GalleryActivity$2;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lorg/json/JSONObject;)V
.registers 7
iput-object p1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;->this$1:Lcom/pinguo/camera360/gallery/GalleryActivity$2;
iput-object p6, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;->val$uploadJsonContent:Lorg/json/JSONObject;
invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
return-void
.end method
.method protected getParams()Ljava/util/Map;
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;->this$1:Lcom/pinguo/camera360/gallery/GalleryActivity$2;
#getter for: Lcom/pinguo/camera360/gallery/GalleryActivity$2;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/GalleryActivity$2;->access$0(Lcom/pinguo/camera360/gallery/GalleryActivity$2;)Lcom/pinguo/camera360/gallery/GalleryActivity;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/album/utils/AlbumConstants;->buildCommonRequestParam(Landroid/content/Context;)Ljava/util/Map;
move-result-object v0
const-string/jumbo v1, "desc"
iget-object v2, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$2$1;->val$uploadJsonContent:Lorg/json/JSONObject;
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method