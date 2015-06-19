.class public Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
.super Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;
.source "TiltShiftFogFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private c:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/j;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/j;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c(F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/c;)V
    .registers 5

    const-string v0, "dimFactor"

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .registers 4

    const-string v0, "BlurComposite"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/instagram/filterkit/b/b;

    invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    goto :goto_9
.end method

.method public final c(F)V
    .registers 4

    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a:F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->c:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->n()V

    return-void
.end method

.method public final g()F
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/BaseTiltShiftFilter;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
