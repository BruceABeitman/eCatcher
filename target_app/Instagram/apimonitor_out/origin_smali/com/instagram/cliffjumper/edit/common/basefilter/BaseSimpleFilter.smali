.class public abstract Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.super Lcom/instagram/filterkit/filter/BaseCachingFilter;
.source "BaseSimpleFilter.java"


# static fields
.field private static final a:Lcom/instagram/cliffjumper/util/a;


# instance fields
.field private c:Lcom/instagram/filterkit/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/instagram/cliffjumper/util/e;->a()Lcom/instagram/cliffjumper/util/a;

    move-result-object v0

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a(Lcom/instagram/filterkit/d/c;Lcom/instagram/filterkit/e/c;)Lcom/instagram/filterkit/e/c;

    move-result-object v2

    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a()V

    move-object v0, v1

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/instagram/filterkit/d/c;->b(Lcom/instagram/filterkit/d/e;)V

    :cond_1e
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    invoke-virtual {p0, v0, p2, v2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V

    const-string v0, "BaseSimpleFilter.render:setFilterParams"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    const-string v3, "position"

    sget-object v4, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    const-string v4, "transformedTextureCoordinate"

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->u_()Z

    move-result v0

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v0, v0, Lcom/instagram/cliffjumper/util/a;->c:Ljava/nio/FloatBuffer;

    :goto_41
    invoke-virtual {v3, v4, v0}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    const-string v3, "staticTextureCoordinate"

    sget-object v4, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v4, v4, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3, v4}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/Buffer;)Z

    const-string v0, "BaseSimpleFilter.render:setCoordinates"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-interface {v2}, Lcom/instagram/filterkit/e/c;->c()I

    move-result v0

    invoke-interface {v2}, Lcom/instagram/filterkit/e/c;->d()I

    move-result v3

    invoke-static {v5, v5, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "BaseSimpleFilter.render:glViewport"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    const v0, 0x8d40

    invoke-interface {v2}, Lcom/instagram/filterkit/e/c;->a()I

    move-result v3

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v0, "BaseSimpleFilter.render:glBindFramebuffer"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->b()V

    const-string v0, "BaseSimpleFilter.render:prepareToRender"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    const/4 v0, 0x5

    const/4 v3, 0x4

    invoke-static {v0, v5, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "BaseSimpleFilter.render:glDrawArrays"

    invoke-virtual {p1, v0}, Lcom/instagram/filterkit/d/c;->a(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->t_()V

    invoke-virtual {p1, p2, v1}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V

    move-object v0, v2

    goto :goto_1a

    :cond_8f
    sget-object v0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->a:Lcom/instagram/cliffjumper/util/a;

    iget-object v0, v0, Lcom/instagram/cliffjumper/util/a;->b:Ljava/nio/FloatBuffer;

    goto :goto_41
.end method

.method protected a()V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create program for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
.end method

.method public a(Lcom/instagram/filterkit/d/c;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->a(Lcom/instagram/filterkit/d/c;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/instagram/filterkit/d/c;->a()Lcom/instagram/filterkit/d/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    invoke-virtual {v0}, Lcom/instagram/filterkit/b/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/instagram/filterkit/d/b;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->c:Lcom/instagram/filterkit/b/b;

    :cond_16
    return-void
.end method

.method protected abstract b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
.end method

.method protected t_()V
    .registers 1

    return-void
.end method

.method protected u_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/instagram/filterkit/filter/BaseCachingFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
