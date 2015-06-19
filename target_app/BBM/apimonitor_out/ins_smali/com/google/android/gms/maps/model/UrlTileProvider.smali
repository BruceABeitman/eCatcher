.class public abstract Lcom/google/android/gms/maps/model/UrlTileProvider;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/maps/model/TileProvider;
.field private final v:I
.field private final w:I
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->w:I
iput p2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->v:I
return-void
.end method
.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
.registers 7
const/16 v0, 0x1000
new-array v2, v0, [B
const-wide/16 v0, 0x0
:goto_6
invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_14
const/4 v4, 0x0
invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
int-to-long v3, v3
add-long/2addr v0, v3
goto :goto_6
:cond_14
return-wide v0
.end method
.method private static a(Ljava/io/InputStream;)[B
.registers 2
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {p0, v0}, Lcom/google/android/gms/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
.registers 8
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;
move-result-object v1
if-nez v1, :cond_9
sget-object v0, Lcom/google/android/gms/maps/model/UrlTileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;
:goto_8
return-object v0
:cond_9
:try_start_9
new-instance v0, Lcom/google/android/gms/maps/model/Tile;
iget v2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->w:I
iget v3, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->v:I
invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;)[B
move-result-object v1
invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V
:try_end_1a
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1b
goto :goto_8
:catch_1b
move-exception v0
const/4 v0, 0x0
goto :goto_8
.end method
.method public abstract getTileUrl(III)Ljava/net/URL;
.end method