.class Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;
.super Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/opengles/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeShaderParameter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadHandle(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;->handle:I

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method
