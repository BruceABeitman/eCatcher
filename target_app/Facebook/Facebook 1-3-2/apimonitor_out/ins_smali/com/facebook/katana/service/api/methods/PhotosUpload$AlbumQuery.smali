.class interface abstract Lcom/facebook/katana/service/api/methods/PhotosUpload$AlbumQuery;
.super Ljava/lang/Object;
.source "PhotosUpload.java"
.field public static final ALBUM_PROJECTION:[Ljava/lang/String;
.field public static final INDEX_SIZE:I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "size"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/PhotosUpload$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;
return-void
.end method