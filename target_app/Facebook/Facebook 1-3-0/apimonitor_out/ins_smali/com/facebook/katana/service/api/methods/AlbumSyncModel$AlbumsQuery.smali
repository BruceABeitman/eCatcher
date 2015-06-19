.class interface abstract Lcom/facebook/katana/service/api/methods/AlbumSyncModel$AlbumsQuery;
.super Ljava/lang/Object;
.source "AlbumSyncModel.java"
.field public static final INDEX_ALBUM_ID:I = 0x0
.field public static final INDEX_COVER_PHOTO_URL:I = 0x2
.field public static final INDEX_MODIFIED:I = 0x1
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "aid"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "modified"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "cover_url"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$AlbumsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method