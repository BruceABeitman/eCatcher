.class public final Lcom/instagram/creation/video/g/c/c;
.super Ljava/lang/Object;
.source "SystemVideoMetadataExtractor.java"
.implements Lcom/instagram/creation/video/g/a/d;
.field private final a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/creation/video/g/c/c;->a:Landroid/content/Context;
return-void
.end method
.method private static a(Landroid/media/MediaMetadataRetriever;II)I
.registers 5
invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_b
:goto_a
return p2
:cond_b
:try_start_b
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_e
.catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10
move-result p2
goto :goto_a
:catch_10
move-exception v0
goto :goto_a
.end method
.method private static a(Landroid/media/MediaMetadataRetriever;)J
.registers 5
const-wide/16 v0, 0x0
const/16 v2, 0x9
invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_f
:goto_e
return-wide v0
:try_start_f
:cond_f
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_12
.catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14
move-result-wide v0
goto :goto_e
:catch_14
move-exception v2
goto :goto_e
.end method
.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/video/g/a/c;
.registers 9
const/4 v5, 0x0
const/4 v4, -0x1
new-instance v6, Landroid/media/MediaMetadataRetriever;
invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V
:try_start_7
iget-object v0, p0, Lcom/instagram/creation/video/g/c/c;->a:Landroid/content/Context;
invoke-virtual {v6, v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_3f
const/16 v0, 0x12
const/4 v1, -0x1
invoke-static {v6, v0, v1}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;II)I
move-result v3
const/16 v0, 0x13
const/4 v1, -0x1
invoke-static {v6, v0, v1}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;II)I
move-result v4
:goto_20
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_2d
const/16 v0, 0x18
const/4 v1, 0x0
invoke-static {v6, v0, v1}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;II)I
move-result v5
:cond_2d
invoke-static {v6}, Lcom/instagram/creation/video/g/c/c;->a(Landroid/media/MediaMetadataRetriever;)J
move-result-wide v1
new-instance v0, Lcom/instagram/creation/video/g/a/c;
invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/video/g/a/c;-><init>(JIII)V
:try_end_36
.catchall {:try_start_7 .. :try_end_36} :catchall_3a
invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
return-object v0
:catchall_3a
move-exception v0
invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
throw v0
:cond_3f
move v3, v4
goto :goto_20
.end method