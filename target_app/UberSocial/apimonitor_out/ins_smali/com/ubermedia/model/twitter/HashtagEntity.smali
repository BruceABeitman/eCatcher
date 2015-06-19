.class public Lcom/ubermedia/model/twitter/HashtagEntity;
.super Lcom/ubermedia/model/twitter/TweetEntity;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/ubermedia/model/twitter/HashtagEntity$1;
invoke-direct {v0}, Lcom/ubermedia/model/twitter/HashtagEntity$1;-><init>()V
sput-object v0, Lcom/ubermedia/model/twitter/HashtagEntity;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Lcom/ubermedia/model/twitter/TweetEntity;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/ubermedia/model/twitter/HashtagEntity;->c:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p2, p3}, Lcom/ubermedia/model/twitter/TweetEntity;-><init>(II)V
iput-object p1, p0, Lcom/ubermedia/model/twitter/HashtagEntity;->c:Ljava/lang/String;
return-void
.end method
.method public static a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/HashtagEntity;
.registers 5
const-string v0, "text"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "indices"
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I
move-result v2
const/4 v3, 0x1
invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I
move-result v1
new-instance v3, Lcom/ubermedia/model/twitter/HashtagEntity;
invoke-direct {v3, v0, v2, v1}, Lcom/ubermedia/model/twitter/HashtagEntity;-><init>(Ljava/lang/String;II)V
return-object v3
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/HashtagEntity;->c:Ljava/lang/String;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/model/twitter/HashtagEntity;->c:Ljava/lang/String;
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/ubermedia/model/twitter/TweetEntity;->writeToParcel(Landroid/os/Parcel;I)V
iget-object v0, p0, Lcom/ubermedia/model/twitter/HashtagEntity;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method