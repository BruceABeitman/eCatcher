.class public abstract Lcom/lifevibes/videoeditor/MediaItem;
.super Lcom/lifevibes/videoeditor/BaseMediaItem;
.source "MediaItem.java"
.field public static final END_OF_FILE:I = -0x1
.field public static final RENDERING_MODE_BLACK_BORDER:I = 0x0
.field public static final RENDERING_MODE_CROPPING:I = 0x2
.field public static final RENDERING_MODE_STRETCH:I = 0x1
.field private final mProjectPath:Ljava/lang/String;
.field private mRenderingMode:I
.method protected constructor <init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/lifevibes/videoeditor/BaseMediaItem;-><init>(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;)V
iput p4, p0, Lcom/lifevibes/videoeditor/MediaItem;->mRenderingMode:I
invoke-interface {p1}, Lcom/lifevibes/videoeditor/VideoEditor;->getPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lifevibes/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;
return-void
.end method
.method public abstract getAspectRatio()I
.end method
.method public abstract getHeight()I
.end method
.method public getRenderingMode()I
.registers 2
iget v0, p0, Lcom/lifevibes/videoeditor/MediaItem;->mRenderingMode:I
return v0
.end method
.method public abstract getWidth()I
.end method
.method public setRenderingMode(I)V
.registers 4
packed-switch p1, :pswitch_data_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid Rendering Mode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_b
iput p1, p0, Lcom/lifevibes/videoeditor/MediaItem;->mRenderingMode:I
return-void
:pswitch_data_e
.packed-switch 0x0
:pswitch_b
:pswitch_b
:pswitch_b
.end packed-switch
.end method