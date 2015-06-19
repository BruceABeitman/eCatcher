.class public Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
.super Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;
.source "BorderFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/a;-><init>()V

    sput-object v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;-><init>()V

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/filterkit/b/b;Lcom/instagram/filterkit/e/a;Lcom/instagram/filterkit/e/c;)V
    .registers 6

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method protected final b(Lcom/instagram/filterkit/d/c;)Lcom/instagram/filterkit/b/b;
    .registers 5

    const-string v0, "Identity"

    invoke-static {v0}, Lcom/instagram/cliffjumper/bridge/ShaderBridge;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/instagram/filterkit/b/b;

    invoke-direct {v0, v1}, Lcom/instagram/filterkit/b/b;-><init>(I)V

    const-string v1, "image"

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v2}, Lcom/instagram/filterkit/d/c;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/instagram/filterkit/e/a;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/b/b;->a(Ljava/lang/String;I)V

    goto :goto_9
.end method

.method public final d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final t_()V
    .registers 2

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method protected final u_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/common/basefilter/BaseSimpleFilter;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
