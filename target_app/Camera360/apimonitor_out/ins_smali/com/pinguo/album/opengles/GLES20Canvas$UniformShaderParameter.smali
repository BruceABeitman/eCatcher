.class  Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;
.super Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public loadHandle(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;->mName:Ljava/lang/String;
invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I
move-result v0
iput v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;->handle:I
invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V
return-void
.end method