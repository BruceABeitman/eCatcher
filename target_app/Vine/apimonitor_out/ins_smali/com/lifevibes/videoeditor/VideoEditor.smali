.class public interface abstract Lcom/lifevibes/videoeditor/VideoEditor;
.super Ljava/lang/Object;
.source "VideoEditor.java"
.field public static final DURATION_OF_STORYBOARD:I = -0x1
.field public static final MAX_SUPPORTED_FILE_SIZE:J = 0x80000000L
.method public abstract addMediaItem(Lcom/lifevibes/videoeditor/MediaItem;)V
.end method
.method public abstract cancelExport(Ljava/lang/String;)V
.end method
.method public abstract export(Ljava/lang/String;IIIILcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
.end method
.method public abstract getAspectRatio()I
.end method
.method public abstract getPath()Ljava/lang/String;
.end method
.method public abstract release()V
.end method
.method public abstract setAspectRatio(I)V
.end method