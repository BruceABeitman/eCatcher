.class public Lcom/pinguo/album/opengles/GLES20Canvas;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcom/pinguo/album/opengles/GLESCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;,
        Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;,
        Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;
    }
.end annotation


# static fields
.field private static final ALPHA_UNIFORM:Ljava/lang/String; = "uAlpha"

.field private static final BOUNDS_COORDINATES:[F = null

.field private static final BOX_COORDINATES:[F = null

.field private static final COLOR_UNIFORM:Ljava/lang/String; = "uColor"

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final COUNT_FILL_VERTEX:I = 0x4

.field private static final COUNT_LINE_VERTEX:I = 0x2

.field private static final COUNT_RECT_VERTEX:I = 0x4

.field private static final DRAW_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

.field private static final DRAW_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

.field private static final FLOAT_SIZE:I = 0x4

.field private static final INDEX_ALPHA:I = 0x4

.field private static final INDEX_COLOR:I = 0x2

.field private static final INDEX_MATRIX:I = 0x1

.field private static final INDEX_POSITION:I = 0x0

.field private static final INDEX_TEXTURE_COORD:I = 0x2

.field private static final INDEX_TEXTURE_MATRIX:I = 0x2

.field private static final INDEX_TEXTURE_SAMPLER:I = 0x3

.field private static final INITIAL_RESTORE_STATE_SIZE:I = 0x8

.field private static final MATRIX_SIZE:I = 0x10

.field private static final MATRIX_UNIFORM:Ljava/lang/String; = "uMatrix"

.field private static final MESH_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

.field private static final OES_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final POSITION_ATTRIBUTE:Ljava/lang/String; = "aPosition"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String; = "aTextureCoordinate"

.field private static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final TEXTURE_MATRIX_UNIFORM:Ljava/lang/String; = "uTextureMatrix"

.field private static final TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String; = "uTextureSampler"

.field private static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

.field private static final VERTEX_STRIDE:I = 0x8

.field private static final mGLId:Lcom/pinguo/album/opengles/GLId;


# instance fields
.field private mAlphas:[F

.field private mBoxCoordinates:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;

.field mDrawParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

.field private mDrawProgram:I

.field private mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

.field private mMeshProgram:I

.field mOesTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

.field private mOesTextureProgram:I

.field private mProjectionMatrix:[F

.field private mSaveFlags:Lcom/pinguo/album/utils/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/opengles/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field mTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

.field private mTextureProgram:I

.field private final mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/opengles/GLES20Canvas;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/opengles/GLES20Canvas;->TAG:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_22

    sput-object v0, Lcom/pinguo/album/opengles/GLES20Canvas;->BOX_COORDINATES:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/pinguo/album/opengles/GLES20Canvas;->BOUNDS_COORDINATES:[F

    new-instance v0, Lcom/pinguo/album/opengles/GLES20IdImpl;

    invoke-direct {v0}, Lcom/pinguo/album/opengles/GLES20IdImpl;-><init>()V

    sput-object v0, Lcom/pinguo/album/opengles/GLES20Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;

    return-void

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 16

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0x80

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    const/16 v7, 0x8

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    new-instance v7, Lcom/pinguo/album/utils/IntArray;

    invoke-direct {v7}, Lcom/pinguo/album/utils/IntArray;-><init>()V

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mSaveFlags:Lcom/pinguo/album/utils/IntArray;

    iput v10, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    iput v10, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mProjectionMatrix:[F

    new-array v7, v13, [Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uColor"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureMatrix"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureMatrix"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mOesTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aTextureCoordinate"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/pinguo/album/opengles/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    new-instance v7, Lcom/pinguo/album/utils/IntArray;

    invoke-direct {v7}, Lcom/pinguo/album/utils/IntArray;-><init>()V

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    new-instance v7, Lcom/pinguo/album/utils/IntArray;

    invoke-direct {v7}, Lcom/pinguo/album/utils/IntArray;-><init>()V

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;

    iput v10, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawMesh:I

    iput v10, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountTextureRect:I

    iput v10, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountFillRect:I

    iput v10, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    new-array v7, v11, [I

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mFrameBuffer:[I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    new-array v7, v14, [F

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempColor:[F

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    new-array v7, v11, [I

    iput-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempIntArray:[I

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-static {v7, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v8, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    iget v8, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v9, 0x3f80

    aput v9, v7, v8

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/pinguo/album/opengles/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v7

    iput v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mBoxCoordinates:I

    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    invoke-static {v7, v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    invoke-static {v7, v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v6

    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    invoke-static {v7, v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    const v7, 0x8b30

    const-string/jumbo v8, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v7, v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    const v7, 0x8b30

    const-string/jumbo v8, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v5

    const v7, 0x8b30

    const-string/jumbo v8, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v1, v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->assembleProgram(II[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawProgram:I

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v5, v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->assembleProgram(II[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTextureProgram:I

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mOesTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v4, v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->assembleProgram(II[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mOesTextureProgram:I

    iget-object v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v3, v5, v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->assembleProgram(II[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshProgram:I

    const/16 v7, 0x303

    invoke-static {v11, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method private assembleProgram(II[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)I
    .registers 10

    const/4 v4, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    if-nez v2, :cond_24

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Cannot create GL program: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempIntArray:[I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v1, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_58

    sget-object v3, Lcom/pinguo/album/opengles/GLES20Canvas;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Could not link program: "

    invoke-static {v3, v4}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/album/opengles/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    :cond_58
    const/4 v0, 0x0

    :goto_59
    array-length v3, p3

    if-lt v0, v3, :cond_5d

    return v2

    :cond_5d
    aget-object v3, p3, v0

    invoke-virtual {v3, v2}, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_59
.end method

.method public static checkError()V
    .registers 5

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_20

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    sget-object v2, Lcom/pinguo/album/opengles/GLES20Canvas;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "GL error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    return-void
.end method

.method private static checkFramebufferStatus()V
    .registers 5

    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_44

    const-string/jumbo v0, ""

    packed-switch v1, :pswitch_data_46

    :goto_12
    :pswitch_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_34
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    goto :goto_12

    :pswitch_38
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_12

    :pswitch_3c
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_12

    :pswitch_40
    const-string/jumbo v0, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_12

    :cond_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x8cd6
        :pswitch_34
        :pswitch_3c
        :pswitch_12
        :pswitch_38
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_40
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/album/opengles/BasicTexture;)V
    .registers 12

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I

    move-result v1

    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_47

    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    iput v4, p0, Landroid/graphics/RectF;->right:F

    :cond_47
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_66

    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    :cond_66
    return-void
.end method

.method private static copyTextureCoordinates(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/BasicTexture;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/BasicTexture;->hasBorder()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v1, 0x1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_16
    int-to-float v4, v1

    int-to-float v5, v3

    int-to-float v6, v2

    int-to-float v7, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .registers 6

    const/4 v4, 0x0

    array-length v2, p0

    mul-int/lit8 v1, v2, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    array-length v2, p0

    invoke-virtual {v0, p0, v4, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private draw(IIIFFFFIF)V
    .registers 20

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, p2, v0, v1}, Lcom/pinguo/album/opengles/GLES20Canvas;->prepareDraw(IIF)V

    iget-object v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    move-object v2, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/pinguo/album/opengles/GLES20Canvas;->draw([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;IIFFFF)V

    return-void
.end method

.method private draw(IIIFFFFLcom/pinguo/album/opengles/GLPaint;)V
    .registers 19

    invoke-virtual/range {p8 .. p8}, Lcom/pinguo/album/opengles/GLPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/pinguo/album/opengles/GLPaint;->getLineWidth()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/pinguo/album/opengles/GLES20Canvas;->draw(IIIFFFFIF)V

    return-void
.end method

.method private draw([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;IIFFFF)V
    .registers 16

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLES20Canvas;->setMatrix([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;FFFF)V

    aget-object v0, p1, v7

    iget v6, v0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {p2, v7, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method private drawTextureRect(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/pinguo/album/opengles/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, v0, p3}, Lcom/pinguo/album/opengles/GLES20Canvas;->drawTextureRect(Lcom/pinguo/album/opengles/BasicTexture;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private drawTextureRect(Lcom/pinguo/album/opengles/BasicTexture;[FLandroid/graphics/RectF;)V
    .registers 12

    const/4 v6, 0x2

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/album/opengles/GLES20Canvas;->prepareTexture(Lcom/pinguo/album/opengles/BasicTexture;)[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/pinguo/album/opengles/GLES20Canvas;->setPosition([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;I)V

    aget-object v0, v1, v6

    iget v0, v0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, v6}, Lcom/pinguo/album/opengles/GLES20Canvas;->save(I)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->translate(FF)V

    const/high16 v0, -0x4080

    invoke-virtual {p0, v5, v0, v5}, Lcom/pinguo/album/opengles/GLES20Canvas;->scale(FFF)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->translate(FF)V

    :cond_34
    const/4 v2, 0x5

    const/4 v3, 0x4

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->draw([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;IIFFFF)V

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->restore()V

    :cond_4f
    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountTextureRect:I

    return-void
.end method

.method private enableBlending(Z)V
    .registers 3

    const/16 v0, 0xbe2

    if-eqz p1, :cond_b

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    goto :goto_a
.end method

.method private getColor(I)[F
    .registers 9

    const/high16 v6, 0x437f

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getAlpha()F

    move-result v5

    mul-float v0, v4, v5

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v3, v4, v0

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v2, v4, v0

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v1, v4, v0

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempColor:[F

    return-object v4
.end method

.method private getTargetTexture()Lcom/pinguo/album/opengles/RawTexture;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/opengles/RawTexture;

    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .registers 3

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return v0
.end method

.method private prepareDraw(IIF)V
    .registers 13

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_17

    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    :cond_17
    invoke-direct {p0, p2}, Lcom/pinguo/album/opengles/GLES20Canvas;->getColor(I)[F

    move-result-object v1

    aget v4, v1, v7

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gez v4, :cond_49

    move v0, v2

    :goto_24
    invoke-direct {p0, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->enableBlending(Z)V

    if-eqz v0, :cond_37

    aget v4, v1, v3

    aget v5, v1, v2

    aget v6, v1, v8

    aget v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    :cond_37
    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDrawParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, p1}, Lcom/pinguo/album/opengles/GLES20Canvas;->setPosition([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void

    :cond_49
    move v0, v3

    goto :goto_24
.end method

.method private prepareTexture(Lcom/pinguo/album/opengles/BasicTexture;I[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)V
    .registers 7

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getAlpha()F

    move-result v0

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_51

    move v0, v1

    :goto_19
    invoke-direct {p0, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->enableBlending(Z)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-virtual {p1, p0}, Lcom/pinguo/album/opengles/BasicTexture;->onBind(Lcom/pinguo/album/opengles/GLESCanvas;)Z

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/4 v0, 0x3

    aget-object v0, p3, v0

    iget v0, v0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/4 v0, 0x4

    aget-object v0, p3, v0

    iget v0, v0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void

    :cond_51
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private prepareTexture(Lcom/pinguo/album/opengles/BasicTexture;)[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;
    .registers 6

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I

    move-result v2

    const/16 v3, 0xde1

    if-ne v2, v3, :cond_10

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTextureProgram:I

    :goto_c
    invoke-direct {p0, p1, v1, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->prepareTexture(Lcom/pinguo/album/opengles/BasicTexture;I[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)V

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mOesTextureParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mOesTextureProgram:I

    goto :goto_c
.end method

.method private static printMatrix(Ljava/lang/String;[FI)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x10

    if-lt v1, v2, :cond_14

    sget-object v2, Lcom/pinguo/album/opengles/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/album/common/PGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_22

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    add-int v2, p2, v1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private setMatrix([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;FFFF)V
    .registers 16

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, p4, p5, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    move v3, v9

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    aget-object v0, p1, v8

    iget v0, v0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v8, v1, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setPosition([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;I)V
    .registers 10

    const v6, 0x8892

    const/4 v3, 0x0

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mBoxCoordinates:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    aget-object v0, p1, v3

    iget v0, v0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    mul-int/lit8 v5, p2, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setRenderTarget(Lcom/pinguo/album/opengles/BasicTexture;Lcom/pinguo/album/opengles/RawTexture;)V
    .registers 8

    const/4 v1, 0x1

    const v4, 0x8d40

    const/4 v3, 0x0

    if-nez p1, :cond_25

    if-eqz p2, :cond_25

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mFrameBuffer:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    :cond_1b
    :goto_1b
    if-nez p2, :cond_38

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mScreenWidth:I

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/album/opengles/GLES20Canvas;->setSize(II)V

    :goto_24
    return-void

    :cond_25
    if-eqz p1, :cond_1b

    if-nez p2, :cond_1b

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    goto :goto_1b

    :cond_38
    invoke-virtual {p2}, Lcom/pinguo/album/opengles/RawTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/RawTexture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/album/opengles/GLES20Canvas;->setSize(II)V

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/RawTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p2, p0}, Lcom/pinguo/album/opengles/RawTexture;->prepare(Lcom/pinguo/album/opengles/GLESCanvas;)V

    :cond_4c
    const v0, 0x8ce0

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/RawTexture;->getTarget()I

    move-result v1

    invoke-virtual {p2}, Lcom/pinguo/album/opengles/RawTexture;->getId()I

    move-result v2

    invoke-static {v4, v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkFramebufferStatus()V

    goto :goto_24
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xc

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xd

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .registers 9

    const v5, 0x8892

    const/4 v4, 0x0

    sget-object v1, Lcom/pinguo/album/opengles/GLES20Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempIntArray:[I

    invoke-interface {v1, v2, v3, v4}, Lcom/pinguo/album/opengles/GLId;->glGenBuffers(I[II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempIntArray:[I

    aget v0, v1, v4

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/2addr v1, p2

    const v2, 0x88e4

    invoke-static {v5, v1, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/pinguo/album/opengles/RawTexture;)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->save()V

    invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getTargetTexture()Lcom/pinguo/album/opengles/RawTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p1}, Lcom/pinguo/album/opengles/GLES20Canvas;->setRenderTarget(Lcom/pinguo/album/opengles/BasicTexture;Lcom/pinguo/album/opengles/RawTexture;)V

    return-void
.end method

.method public clearBuffer()V
    .registers 3

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method public clearBuffer([F)V
    .registers 6

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method public deleteBuffer(I)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/utils/IntArray;->add(I)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public deleteRecycledResources()V
    .registers 8

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    invoke-virtual {v1}, Lcom/pinguo/album/utils/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1f

    sget-object v1, Lcom/pinguo/album/opengles/GLES20Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/pinguo/album/opengles/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->clear()V

    :cond_1f
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mDeleteBuffers:Lcom/pinguo/album/utils/IntArray;

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_39

    sget-object v1, Lcom/pinguo/album/opengles/GLES20Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/pinguo/album/opengles/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/pinguo/album/utils/IntArray;->clear()V

    :cond_39
    monitor-exit v2

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public drawLine(FFFFLcom/pinguo/album/opengles/GLPaint;)V
    .registers 15

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->draw(IIIFFFFLcom/pinguo/album/opengles/GLPaint;)V

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/pinguo/album/opengles/BasicTexture;IIIIII)V
    .registers 16

    iget v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshProgram:I

    iget-object v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p1, v2, v3}, Lcom/pinguo/album/opengles/GLES20Canvas;->prepareTexture(Lcom/pinguo/album/opengles/BasicTexture;I[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;)V

    const v2, 0x8893

    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const v2, 0x8892

    invoke-static {v2, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v0, v2, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const v2, 0x8892

    invoke-static {v2, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v1, v2, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMeshParameters:[Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;

    int-to-float v4, p2

    int-to-float v5, p3

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->setMatrix([Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 v2, 0x5

    const/16 v3, 0x1401

    const/4 v4, 0x0

    invoke-static {v2, p7, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const v2, 0x8893

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawMesh:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawMesh:I

    return-void
.end method

.method public drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFIIII)V
    .registers 14

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->copyTextureCoordinates(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    add-int v3, p4, p6

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLES20Canvas;->drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 16

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_13

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->save(I)V

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getAlpha()F

    move-result v8

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v0, v2, v6

    mul-float v9, v0, v8

    invoke-virtual {p0, v9}, Lcom/pinguo/album/opengles/GLES20Canvas;->setAlpha(F)V

    invoke-virtual {p0, p1, p4, p5}, Lcom/pinguo/album/opengles/GLES20Canvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    mul-float v7, v6, v8

    invoke-virtual {p0, v7}, Lcom/pinguo/album/opengles/GLES20Canvas;->setAlpha(F)V

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/opengles/GLES20Canvas;->fillRect(FFFFI)V

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->restore()V

    goto :goto_13
.end method

.method public drawRect(FFFFLcom/pinguo/album/opengles/GLPaint;)V
    .registers 15

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/pinguo/album/opengles/GLES20Canvas;->draw(IIIFFFFLcom/pinguo/album/opengles/GLPaint;)V

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/pinguo/album/opengles/BasicTexture;IIII)V
    .registers 11

    if-lez p4, :cond_4

    if-gtz p5, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->copyTextureCoordinates(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int v3, p2, p4

    int-to-float v3, v3

    add-int v4, p3, p5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/pinguo/album/opengles/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/album/opengles/BasicTexture;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/opengles/GLES20Canvas;->drawTextureRect(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_4
.end method

.method public drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_11

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/pinguo/album/opengles/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pinguo/album/opengles/BasicTexture;)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/opengles/GLES20Canvas;->drawTextureRect(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_11
.end method

.method public drawTexture(Lcom/pinguo/album/opengles/BasicTexture;[FIIII)V
    .registers 12

    if-lez p5, :cond_4

    if-gtz p6, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v3, p3, p5

    int-to-float v3, v3

    add-int v4, p4, p6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->drawTextureRect(Lcom/pinguo/album/opengles/BasicTexture;[FLandroid/graphics/RectF;)V

    goto :goto_4
.end method

.method public dumpStatisticsAndClear()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v1, "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawMesh:I

    iput v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountTextureRect:I

    iput v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountFillRect:I

    iput v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountDrawLine:I

    sget-object v1, Lcom/pinguo/album/opengles/GLES20Canvas;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/pinguo/album/common/PGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endRenderTarget()V
    .registers 5

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/opengles/RawTexture;

    invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getTargetTexture()Lcom/pinguo/album/opengles/RawTexture;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/album/opengles/GLES20Canvas;->setRenderTarget(Lcom/pinguo/album/opengles/BasicTexture;Lcom/pinguo/album/opengles/RawTexture;)V

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->restore()V

    return-void
.end method

.method public fillRect(FFFFI)V
    .registers 16

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/pinguo/album/opengles/GLES20Canvas;->draw(IIIFFFFIF)V

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountFillRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAlpha()F
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .registers 16

    const/16 v9, 0x14

    const/16 v8, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    int-to-float v2, p4

    int-to-float v3, p5

    const/high16 v4, 0x3f80

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    sget-object v6, Lcom/pinguo/album/opengles/GLES20Canvas;->BOUNDS_COORDINATES:[F

    move v3, v8

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    sget-object v6, Lcom/pinguo/album/opengles/GLES20Canvas;->BOUNDS_COORDINATES:[F

    const/4 v7, 0x4

    move v3, v9

    move v5, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    aget v0, v0, v8

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    aget v0, v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    const/16 v1, 0x11

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    const/16 v1, 0x15

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->sort()V

    return-void
.end method

.method public getGLId()Lcom/pinguo/album/opengles/GLId;
    .registers 2

    sget-object v0, Lcom/pinguo/album/opengles/GLES20Canvas;->mGLId:Lcom/pinguo/album/opengles/GLId;

    return-object v0
.end method

.method public initializeTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/Bitmap;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-static {v0, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/pinguo/album/opengles/BasicTexture;II)V
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTextureHeight()I

    move-result v4

    const/4 v8, 0x0

    move v2, p2

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public multiplyAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->setAlpha(F)V

    return-void
.end method

.method public multiplyMatrix([FI)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public recoverFromLightCycle()V
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mWidth:I

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    return-void
.end method

.method public restore()V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mSaveFlags:Lcom/pinguo/album/utils/IntArray;

    invoke-virtual {v4}, Lcom/pinguo/album/utils/IntArray;->removeLast()I

    move-result v1

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_23

    move v0, v2

    :goto_d
    if-eqz v0, :cond_15

    iget v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    :cond_15
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    :goto_1a
    if-eqz v2, :cond_22

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v3, v3, -0x10

    iput v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    :cond_22
    return-void

    :cond_23
    move v0, v3

    goto :goto_d

    :cond_25
    move v2, v3

    goto :goto_1a
.end method

.method public rotate(FFFF)V
    .registers 14

    const/4 v1, 0x0

    const/16 v8, 0x10

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mTempMatrix:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    move-object v2, v0

    move v3, v8

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v0, v8, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8
.end method

.method public save()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    and-int/lit8 v5, p1, 0x1

    if-ne v5, v3, :cond_61

    move v2, v3

    :goto_7
    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getAlpha()F

    move-result v0

    iget v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    iget-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    array-length v5, v5

    iget v6, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    if-gt v5, v6, :cond_27

    iget-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    iget-object v6, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    :cond_27
    iget-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    iget v6, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v5, v6

    :cond_2d
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_63

    :goto_32
    if-eqz v3, :cond_5b

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    iget v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    array-length v4, v4

    iget v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    if-gt v4, v5, :cond_50

    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    :cond_50
    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v6, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v7, 0x10

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5b
    iget-object v4, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mSaveFlags:Lcom/pinguo/album/utils/IntArray;

    invoke-virtual {v4, p1}, Lcom/pinguo/album/utils/IntArray;->add(I)V

    return-void

    :cond_61
    move v2, v4

    goto :goto_7

    :cond_63
    move v3, v4

    goto :goto_32
.end method

.method public scale(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentAlphaIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public setSize(II)V
    .registers 11

    const/high16 v6, -0x4080

    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    const/4 v2, 0x0

    iput p1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mWidth:I

    iput p2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mHeight:I

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mWidth:I

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v3, p1

    int-to-float v5, p2

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    invoke-direct {p0}, Lcom/pinguo/album/opengles/GLES20Canvas;->getTargetTexture()Lcom/pinguo/album/opengles/RawTexture;

    move-result-object v0

    if-nez v0, :cond_3c

    iput p1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mScreenWidth:I

    iput p2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mScreenHeight:I

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, v7, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3c
    return-void
.end method

.method public setTextureParameters(Lcom/pinguo/album/opengles/BasicTexture;)V
    .registers 6

    const v3, 0x812f

    const v2, 0x46180400

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public texSubImage2D(Lcom/pinguo/album/opengles/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .registers 14

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/pinguo/album/opengles/GLES20Canvas;->checkError()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .registers 9

    iget v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    add-int/lit8 v2, v0, 0xc

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x0

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xd

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xe

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xf

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x7

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    return-void
.end method

.method public translate(FFF)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcom/pinguo/album/opengles/BasicTexture;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/pinguo/album/opengles/GLES20Canvas;->mUnboundTextures:Lcom/pinguo/album/utils/IntArray;

    invoke-virtual {p1}, Lcom/pinguo/album/opengles/BasicTexture;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/pinguo/album/utils/IntArray;->add(I)V

    monitor-exit v2

    :cond_13
    return v0

    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/pinguo/album/opengles/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method
