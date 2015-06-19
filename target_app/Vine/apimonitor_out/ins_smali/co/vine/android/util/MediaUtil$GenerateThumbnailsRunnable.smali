.class public Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
.super Ljava/lang/Object;
.source "MediaUtil.java"
.implements Ljava/lang/Runnable;
.field private final duration:J
.field private final lastFramePath:Ljava/lang/String;
.field private final thumbnailPath:Ljava/lang/String;
.field private final videoPath:Ljava/lang/String;
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->duration:J
iput-object p5, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->lastFramePath:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->videoPath:Ljava/lang/String;
iput-object p4, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->thumbnailPath:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 7
:try_start_0
iget-wide v1, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->duration:J
iget-object v3, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->videoPath:Ljava/lang/String;
iget-object v4, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->thumbnailPath:Ljava/lang/String;
iget-object v5, p0, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->lastFramePath:Ljava/lang/String;
invoke-static {v1, v2, v3, v4, v5}, Lco/vine/android/util/MediaUtil;->generateThumbnails(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_b
.catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method