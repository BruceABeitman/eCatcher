.class abstract Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/opengles/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ShaderParameter"
.end annotation


# instance fields
.field public handle:I

.field protected final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/album/opengles/GLES20Canvas$ShaderParameter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract loadHandle(I)V
.end method
